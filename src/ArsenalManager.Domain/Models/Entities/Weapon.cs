namespace ArsenalManager.Domain.Models.Entities;

public class Weapon
{
    [DisplayName("ID")]
    public int WId { get; set; }

    [DisplayName("Тип")]
    public string WType { get; set; } = null!;

    [DisplayName("Модель")]
    public string? WModel { get; set; }

    [DisplayName("Производитель")]
    public string? WManufacture { get; set; }

    [DisplayName("Калибр")]
    public string? WCaliber { get; set; }

    [DisplayName("Статус")]
    public string WStatus { get; set; } = null!;

    [DisplayName("ID склада")]
    public int WStId { get; set; }

    public virtual Storage WSt { get; set; } = null!;

    public virtual ICollection<Ammunition> WaAms { get; set; } = new List<Ammunition>();
}
