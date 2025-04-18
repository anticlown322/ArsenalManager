namespace ArsenalManager.Domain.Models.Entities;

public class Ammunition
{
    [DisplayName("ID")]
    public int AmId { get; set; }

    [DisplayName("Тип боеприпаса")]
    public string AmType { get; set; } = null!;

    [DisplayName("Калибр")]
    public string? AmCaliber { get; set; }

    [DisplayName("Количество")]
    public uint AmQuantity { get; set; }

    [DisplayName("Год производства")]
    public short AmManufDate { get; set; }

    [DisplayName("Срок годности")]
    public DateOnly AmExprDate { get; set; }

    [DisplayName("ID склада")]
    public int AmStId { get; set; }

    public virtual Storage AmSt { get; set; } = null!;

    public virtual ICollection<Weapon> WaWs { get; set; } = new List<Weapon>();
}
