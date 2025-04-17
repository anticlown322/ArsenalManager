namespace ArsenalManager.UI.Core.Models.Entities;

public class Storage
{
    public int StId { get; set; }

    public string StName { get; set; } = null!;

    public string StLocation { get; set; } = null!;

    public int StCapacity { get; set; }

    public virtual ICollection<Ammunition> Ammunitions { get; set; } = new List<Ammunition>();

    public virtual ICollection<CommDevice> CommDevices { get; set; } = new List<CommDevice>();

    public virtual ICollection<EngEquipment> EngEquipments { get; set; } = new List<EngEquipment>();

    public virtual ICollection<Equipment> Equipment { get; set; } = new List<Equipment>();

    public virtual ICollection<MedSupply> MedSupplies { get; set; } = new List<MedSupply>();

    public virtual ICollection<Transfer> TransferTrEndStorages { get; set; } = new List<Transfer>();

    public virtual ICollection<Transfer> TransferTrStartStorages { get; set; } = new List<Transfer>();

    public virtual ICollection<Vehicle> Vehicles { get; set; } = new List<Vehicle>();

    public virtual ICollection<Weapon> Weapons { get; set; } = new List<Weapon>();

    public virtual ICollection<Personnel> PsPs { get; set; } = new List<Personnel>();
}
