namespace ArsenalManager.Domain.Models.Entities;

public class Resource
{
    [DisplayName("ID")]
    public int ResId { get; set; }

    [DisplayName("Название")]
    public string ResName { get; set; } = null!;

    [DisplayName("Количество")]
    public long? ResQuantity { get; set; }

    public virtual ICollection<Maintenance> Maintenances { get; set; } = new List<Maintenance>();

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<Transfer> Transfers { get; set; } = new List<Transfer>();

    public virtual ICollection<WriteOff> WriteOffs { get; set; } = new List<WriteOff>();

    public virtual ICollection<Supplier> RsSps { get; set; } = new List<Supplier>();
}
