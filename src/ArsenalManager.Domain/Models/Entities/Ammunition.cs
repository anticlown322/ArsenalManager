namespace ArsenalManager.Domain.Models.Entities;

public class Ammunition
{
    [DisplayName("ID")]
    public int AmId { get; set; }

    [DisplayName("Type")]
    public string AmType { get; set; } = null!;

    [DisplayName("Caliber")]
    public string? AmCaliber { get; set; }

    [DisplayName("Quantity")]
    public uint AmQuantity { get; set; }

    [DisplayName("Year")]
    public short AmManufDate { get; set; }

    [DisplayName("Expire Date")]
    public DateOnly AmExprDate { get; set; }

    [DisplayName("Storage ID")]
    public int AmStId { get; set; }

    public virtual Storage AmSt { get; set; } = null!;

    public virtual ICollection<Weapon> WaWs { get; set; } = new List<Weapon>();
}
