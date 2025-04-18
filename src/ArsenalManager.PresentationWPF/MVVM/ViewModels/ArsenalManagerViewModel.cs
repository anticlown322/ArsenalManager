using System.Collections.ObjectModel;
using System.Data;
using System.Reflection;
using System.Windows.Input;
using ArsenalManager.Domain.Contracts.Repositories;
using ArsenalManager.Domain.Utility;
using ArsenalManager.Infrastructure.Repository;
using ArsenalManager.PresentationWPF.Core.Contracts.Repositories;
using Microsoft.EntityFrameworkCore;

namespace ArsenalManager.PresentationWPF.MVVM.ViewModels;

public class ArsenalManagerViewModel : ObservableObject
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly ApplicationDbContext _dbContext;
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

    public ArsenalManagerViewModel(IUnitOfWork unitOfWork, ApplicationDbContext dbContext)
    {
        _unitOfWork = unitOfWork;
        _dbContext = dbContext;

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
        var entityType = _dbContext.Model.FindEntityType(_selectedEntityType);
    
        var properties = entityType.GetProperties()
            .Where(p => !p.IsShadowProperty())
            .Select(p => new {
                Property = _selectedEntityType.GetProperty(p.Name),
                ColumnName = p.GetColumnName(),
                DisplayName = GetDisplayName(_selectedEntityType.GetProperty(p.Name))
            })
            .Where(x => x.Property != null);

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
}