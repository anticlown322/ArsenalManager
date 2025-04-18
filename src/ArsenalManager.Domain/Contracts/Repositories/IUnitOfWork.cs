using ArsenalManager.Domain.Models.Entities;
using ArsenalManager.PresentationWPF.Core.Contracts.Repositories;

namespace ArsenalManager.Domain.Contracts.Repositories;

public interface IUnitOfWork
{
    IRepository<ActiveOrder> ActiveOrders { get; }
    IRepository<Ammunition> Ammunition { get; }
    IRepository<CommDevice> CommDevices { get; }
    IRepository<EngEquipment> EngEquipment { get; }
    IRepository<Equipment> Equipment { get; }
    IRepository<Maintenance> Maintenance { get; }
    IRepository<MedSupply> MedSupplies { get; }
    IRepository<Order> Orders { get; }
    IRepository<OrderHistory> OrderHistories { get; }
    IRepository<Personnel> Personnel { get; }
    IRepository<Resource> Resources { get; }
    IRepository<Storage> Storages { get; }
    IRepository<Supplier> Suppliers { get; }
    IRepository<Transfer> Transfers { get; }
    IRepository<TransferHistory> TransferHistories { get; }
    IRepository<WeaponAmmunitionCompatibility> WeaponAmmunitionCompatibility { get; }
    IRepository<WriteOff> WriteOffs { get; }

    public IRepository<T> GetRepository<T>() where T : class;
}