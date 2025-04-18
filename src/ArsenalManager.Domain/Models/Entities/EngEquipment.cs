namespace ArsenalManager.Domain.Models.Entities;

public class EngEquipment
{
    [DisplayName("ID")]
    public int EeId { get; set; }

    [DisplayName("Тип оборудования")]
    public string EeType { get; set; } = null!;

    [DisplayName("Модель")]
    public string? EeModel { get; set; }

    [DisplayName("Производитель")]
    public string? EeManufacture { get; set; }

    [DisplayName("Год производства")]
    public short? EeManufYear { get; set; }

    [DisplayName("Статус")]
    public string EeStatus { get; set; } = null!;

    [DisplayName("ID склада")]
    public int EeStId { get; set; }

    public virtual Storage EeSt { get; set; } = null!;
}