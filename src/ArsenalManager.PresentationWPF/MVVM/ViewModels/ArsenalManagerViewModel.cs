using System.Collections.ObjectModel;
using System.Data;
using System.Diagnostics;
using System.Reflection;
using System.Windows.Input;
using ArsenalManager.Domain.Contracts.Repositories;
using ArsenalManager.Domain.Utility;
using ArsenalManager.Infrastructure.Repository;
using ArsenalManager.PresentationWPF.MVVM.ViewModels.Dialogs;
using Microsoft.EntityFrameworkCore;

namespace ArsenalManager.PresentationWPF.MVVM.ViewModels;

public class ArsenalManagerViewModel : ObservableObject
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly ApplicationDbContext _dbContext;
    private readonly IDialogService _dialogService;
    private ObservableCollection<object> _items = new();
    private Type _selectedEntityType;
    private DataView _dataView;
    private DataRowView _selectedItem;
    private string _statusMessage;

    public ObservableCollection<object> Items
    {
        get => _items;
        private set => SetField(ref _items, value);
    }

    public Type SelectedEntityType
    {
        get => _selectedEntityType;
        set
        {
            if (SetField(ref _selectedEntityType, value))
            {
                OnEntityTypeChanged();
            }
        }
    }

    public DataView DataView
    {
        get => _dataView;
        private set => SetField(ref _dataView, value);
    }

    public DataRowView SelectedItem
    {
        get => _selectedItem;
        set
        {
            if (SetField(ref _selectedItem, value))
            {
                CommandManager.InvalidateRequerySuggested();
            }
        }
    }

    public string StatusMessage
    {
        get => _statusMessage;
        set => SetField(ref _statusMessage, value);
    }

    public List<Type> AvailableEntities { get; } = GetEntityTypesFromUnitOfWork();

    public ICommand AddNewCommand { get; }
    public ICommand EditCommand { get; }
    public ICommand DeleteCommand { get; }
    public ICommand ExecuteCustomProcedureCommand { get; }
    public ICommand RefreshCommand { get; }

    public ArsenalManagerViewModel(
        IUnitOfWork unitOfWork,
        ApplicationDbContext dbContext,
        IDialogService dialogService)
    {
        _unitOfWork = unitOfWork;
        _dbContext = dbContext;
        _dialogService = dialogService;

        RefreshCommand = CommandExtensions.CreateCommand(async () => await LoadDataAsync());
        AddNewCommand = CommandExtensions.CreateCommand(AddNewItem);
        EditCommand = CommandExtensions.CreateCommand(EditItem, () => SelectedItem != null);
        DeleteCommand = CommandExtensions.CreateCommand(DeleteItem, () => SelectedItem != null);
        ExecuteCustomProcedureCommand = CommandExtensions.CreateCommand(ExecuteCustomProcedure);

        if (AvailableEntities.Count > 0)
        {
            SelectedEntityType = AvailableEntities[0];
        }
    }

    private static List<Type> GetEntityTypesFromUnitOfWork()
    {
        return typeof(IUnitOfWork)
            .GetProperties()
            .Where(p => p.PropertyType.IsGenericType &&
                        p.PropertyType.GetGenericTypeDefinition() == typeof(IRepository<>))
            .Select(p => p.PropertyType.GetGenericArguments()[0])
            .ToList();
    }

    private async void OnEntityTypeChanged()
    {
        if (_selectedEntityType != null)
        {
            await LoadDataAsync();
        }
    }

    [Command]
    private async Task LoadDataAsync()
    {
        if (_selectedEntityType == null) return;

        var method = typeof(ArsenalManagerViewModel)
            .GetMethod(nameof(LoadDataGenericAsync), BindingFlags.NonPublic | BindingFlags.Instance)
            ?.MakeGenericMethod(_selectedEntityType);

        if (method != null)
        {
            await (Task)method.Invoke(this, null);
            UpdateDataView();
        }
    }

    private async Task LoadDataGenericAsync<T>() where T : class
    {
        var repo = _unitOfWork.GetRepository<T>();
        var data = await repo.GetAllAsync();
        Items = new ObservableCollection<object>(data);
    }

    private void UpdateDataView()
    {
        DataView = GetDataTable()?.DefaultView;
    }

    private DataTable GetDataTable()
    {
        if (_selectedEntityType == null || Items.Count == 0)
            return null;

        var table = new DataTable();
        var entityType = _dbContext.Model.FindEntityType(_selectedEntityType);

        var properties = entityType.GetProperties()
            .Where(p => !p.IsShadowProperty())
            .Select(p => new
            {
                Property = _selectedEntityType.GetProperty(p.Name),
                ColumnName = p.GetColumnName(),
                PropertyName = p.Name,
                DisplayName = GetDisplayName(_selectedEntityType.GetProperty(p.Name))
            })
            .Where(x => x.Property != null)
            .ToList();

        foreach (var prop in properties)
        {
            var propType = Nullable.GetUnderlyingType(prop.Property.PropertyType) ?? prop.Property.PropertyType;
            table.Columns.Add(prop.DisplayName, propType);
        }

        foreach (var item in Items)
        {
            var row = table.NewRow();
            foreach (var prop in properties)
            {
                var value = prop.Property.GetValue(item);
                row[prop.DisplayName] = value ?? DBNull.Value;
            }

            table.Rows.Add(row);
        }

        return table;
    }

    private string GetDisplayName(PropertyInfo property)
    {
        return property.GetCustomAttribute<DisplayNameAttribute>()?.Name ?? property.Name;
    }

    private async Task PerformRepositoryActionAsync<T>(Func<IRepository<T>, Task> action) where T : class
    {
        var repository = _unitOfWork.GetRepository<T>();
        await action(repository);
    }

    private async void AddNewItem()
    {
        if (_selectedEntityType == null || IsView(_selectedEntityType))
        {
            StatusMessage = "Adding is not supported for this type";
            return;
        }

        try
        {
            var newItem = Activator.CreateInstance(_selectedEntityType);
            bool? result = _dialogService.ShowEditDialog(newItem, _selectedEntityType);

            if (result == true)
            {
                var method = typeof(ArsenalManagerViewModel)
                    .GetMethod(nameof(PerformAddAsync), BindingFlags.NonPublic | BindingFlags.Instance)
                    .MakeGenericMethod(_selectedEntityType);

                await (Task)method.Invoke(this, new[] { newItem });
                await LoadDataAsync();
                StatusMessage = "Item added successfully";
            }
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error adding item: {ex.Message}";
            Debug.WriteLine(ex);
        }
    }

    private async Task PerformAddAsync<T>(T item) where T : class
    {
        await PerformRepositoryActionAsync<T>(async repo =>
        {
            await repo.AddAsync(item);
            await _unitOfWork.SaveAsync();
        });
    }

    private async void EditItem()
    {
        if (_selectedEntityType == null || SelectedItem == null || IsView(_selectedEntityType))
        {
            StatusMessage = "Editing is not supported";
            return;
        }

        try
        {
            var itemId = SelectedItem.Row[0]; // Предполагаем, что ID в первом столбце
            var method = typeof(ArsenalManagerViewModel)
                .GetMethod(nameof(PerformEditAsync), BindingFlags.NonPublic | BindingFlags.Instance)
                .MakeGenericMethod(_selectedEntityType);

            await (Task)method.Invoke(this, new[] { itemId });
            await LoadDataAsync();
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error editing item: {ex.Message}";
            Debug.WriteLine(ex);
        }
    }

    private async Task PerformEditAsync<T>(object itemId) where T : class
    {
        await PerformRepositoryActionAsync<T>(async repo =>
        {
            var item = await repo.GetByIdAsync(Convert.ToInt32(itemId));
            if (item == null) return;

            bool? result = _dialogService.ShowEditDialog(item, typeof(T));
            if (result == true)
            {
                await repo.UpdateAsync(item);
                await _unitOfWork.SaveAsync();
                StatusMessage = "Item updated successfully";
            }
        });
    }

    private async void DeleteItem()
    {
        if (_selectedEntityType == null || SelectedItem == null || IsView(_selectedEntityType))
        {
            StatusMessage = "Deletion is not supported";
            return;
        }

        try
        {
            bool confirm = _dialogService.ShowConfirmationDialog(
                "Confirm Delete",
                "Are you sure you want to delete this item?"
            );

            if (!confirm) return;

            var itemId = SelectedItem.Row[0];
            var method = typeof(ArsenalManagerViewModel)
                .GetMethod(nameof(PerformDeleteAsync), BindingFlags.NonPublic | BindingFlags.Instance)
                .MakeGenericMethod(_selectedEntityType);

            await (Task)method.Invoke(this, new[] { itemId });
            await LoadDataAsync();
        }
        catch (Exception ex)
        {
            StatusMessage = $"Error deleting item: {ex.Message}";
            Debug.WriteLine(ex);
        }
    }

    private async Task PerformDeleteAsync<T>(object itemId) where T : class
    {
        await PerformRepositoryActionAsync<T>(async repo =>
        {
            var item = await repo.GetByIdAsync(Convert.ToInt32(itemId));
            if (item == null) return;

            await repo.DeleteAsync(item);
            await _unitOfWork.SaveAsync();
            StatusMessage = "Item deleted successfully";
        });
    }

    private void ExecuteCustomProcedure()
    {
        StatusMessage = "Custom procedure executed";
    }

    private bool IsView(Type entityType)
    {
        var entity = _dbContext.Model.FindEntityType(entityType);
        return entity?.GetViewName() != null;
    }
}