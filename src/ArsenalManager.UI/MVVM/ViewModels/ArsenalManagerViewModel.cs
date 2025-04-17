using System.Collections.ObjectModel;
using System.Data;
using System.Reflection;
using System.Windows.Input;
using ArsenalManager.UI.Core.Contracts.Repositories;

namespace ArsenalManager.UI.MVVM.ViewModels;

public class ArsenalManagerViewModel : ObservableObject
{
    private readonly IUnitOfWork _unitOfWork;
    private ObservableCollection<object> _items = new();
    private Type _selectedEntityType;
    private DataView _dataView;

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

    public List<Type> AvailableEntities { get; } = GetEntityTypesFromUnitOfWork();

    public ICommand RefreshCommand { get; }

    public ArsenalManagerViewModel(IUnitOfWork unitOfWork)
    {
        _unitOfWork = unitOfWork;

        RefreshCommand = CommandExtensions.CreateCommand(async () => await LoadDataAsync());

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
        
        foreach (var prop in _selectedEntityType.GetProperties())
        {
            var propType = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
            table.Columns.Add(prop.Name, propType);
        }
        
        foreach (var item in Items)
        {
            var row = table.NewRow();
            foreach (var prop in _selectedEntityType.GetProperties())
            {
                var value = prop.GetValue(item);
                row[prop.Name] = value ?? DBNull.Value;
            }
            table.Rows.Add(row);
        }

        return table;
    }
}