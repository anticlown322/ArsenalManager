using ArsenalManager.Domain.Contracts.Repositories;

namespace ArsenalManager.Infrastructure.Repository;

public class UnitOfWork(
    IRepository<ActiveOrder> activeOrders,
    IRepository<Ammunition> ammunition,
    IRepository<CommDevice> commDevices,
    IRepository<EngEquipment> engEquipment,
    IRepository<Equipment> equipment,
    IRepository<Maintenance> maintenance,
    IRepository<MedSupply> medSupplies,
    IRepository<Order> orders,
    IRepository<OrderHistory> orderHistories,
    IRepository<Personnel> personnel,
    IRepository<Resource> resources,
    IRepository<Storage> storages,
    IRepository<Supplier> suppliers,
    IRepository<Transfer> transfers,
    IRepository<TransferHistory> transferHistories,
    IRepository<WeaponAmmunitionCompatibility> weaponAmmunitionCompatibility,
    IRepository<WriteOff> writeOffs,
    ApplicationDbContext context)
    : IUnitOfWork
{
    public IRepository<ActiveOrder> ActiveOrders { get; } = activeOrders;
    public IRepository<Ammunition> Ammunition { get; } = ammunition;
    public IRepository<CommDevice> CommDevices { get; } = commDevices;
    public IRepository<EngEquipment> EngEquipment { get; } = engEquipment;
    public IRepository<Equipment> Equipment { get; } = equipment;
    public IRepository<Maintenance> Maintenance { get; } = maintenance;
    public IRepository<MedSupply> MedSupplies { get; } = medSupplies;
    public IRepository<Order> Orders { get; } = orders;
    public IRepository<OrderHistory> OrderHistories { get; } = orderHistories;
    public IRepository<Personnel> Personnel { get; } = personnel;
    public IRepository<Resource> Resources { get; } = resources;
    public IRepository<Storage> Storages { get; } = storages;
    public IRepository<Supplier> Suppliers { get; } = suppliers;
    public IRepository<Transfer> Transfers { get; } = transfers;
    public IRepository<TransferHistory> TransferHistories { get; } = transferHistories;
    public IRepository<WeaponAmmunitionCompatibility> WeaponAmmunitionCompatibility { get; } = weaponAmmunitionCompatibility;
    public IRepository<WriteOff> WriteOffs { get; } = writeOffs;
    
    public IRepository<T> GetRepository<T>() where T : class
    {
        return typeof(IUnitOfWork)
            .GetProperties()
            .FirstOrDefault(p => p.PropertyType == typeof(IRepository<T>))
            ?.GetValue(this) as IRepository<T>;
    }
    
    public async Task<int> SaveAsync()
    {
        return await context.SaveChangesAsync();
    }
}