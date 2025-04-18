namespace ArsenalManager.Domain.Models.Entities;

public class Vehicle
{
    [DisplayName("ID")]
    public int VId { get; set; }

    [DisplayName("Тип")]
    public string VType { get; set; } = null!;

    [DisplayName("Модель")]
    public string? VModel { get; set; }

    [DisplayName("Производитель")]
    public string? VManufacture { get; set; }

    [DisplayName("Год производства")]
    public short? VManufYear { get; set; }

    [DisplayName("Статус")]
    public string VStatus { get; set; } = null!;

    [DisplayName("ID склада")]
    public int VStId { get; set; }

    public virtual Storage VSt { get; set; } = null!;
}
