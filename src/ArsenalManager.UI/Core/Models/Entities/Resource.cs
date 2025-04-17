namespace ArsenalManager.UI.Core.Models.Entities;

public class Resource
{
    public int ResId { get; set; }

    public string ResName { get; set; } = null!;

    public long? ResQuantity { get; set; }

    public virtual ICollection<Maintenance> Maintenances { get; set; } = new List<Maintenance>();

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<Transfer> Transfers { get; set; } = new List<Transfer>();

    public virtual ICollection<WriteOff> WriteOffs { get; set; } = new List<WriteOff>();

    public virtual ICollection<Supplier> RsSps { get; set; } = new List<Supplier>();
}
