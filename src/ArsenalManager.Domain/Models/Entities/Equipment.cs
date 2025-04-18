namespace ArsenalManager.Domain.Models.Entities;

public class Equipment
{
    [DisplayName("ID")]
    public int EqId { get; set; }

    [DisplayName("Тип экипировки")]
    public string EqType { get; set; } = null!;

    [DisplayName("Модель")]
    public string? EqModel { get; set; }

    [DisplayName("Производитель")]
    public string? EqManufacture { get; set; }

    [DisplayName("Размер")]
    public string? EqSize { get; set; }

    [DisplayName("Статус")]
    public string EqStatus { get; set; } = null!;

    [DisplayName("ID склада")]
    public int EqStId { get; set; }

    public virtual Storage EqSt { get; set; } = null!;
}
