namespace ArsenalManager.UI.Core.Models.Entities;

public class Ammunition
{
    public int AmId { get; set; }

    public string AmType { get; set; } = null!;

    public string? AmCaliber { get; set; }

    public uint AmQuantity { get; set; }

    public short AmManufDate { get; set; }

    public DateOnly AmExprDate { get; set; }

    public int AmStId { get; set; }

    public virtual Storage AmSt { get; set; } = null!;

    public virtual ICollection<Weapon> WaWs { get; set; } = new List<Weapon>();
}
