namespace ArsenalManager.Domain.Models.Entities;

public class CommDevice
{
    [DisplayName("ID")]
    public int CdId { get; set; }

    [DisplayName("Тип устройства")]
    public string CdType { get; set; } = null!;

    [DisplayName("Модель")]
    public string? CdModel { get; set; }

    [DisplayName("Производитель")]
    public string? CdManufacture { get; set; }

    [DisplayName("Мин. частота (МГц)")]
    public float? CdFreqMin { get; set; }

    [DisplayName("Макс. частота (МГц)")]
    public float? CdFreqMax { get; set; }

    [DisplayName("Статус")]
    public string CdStatus { get; set; } = null!;

    [DisplayName("ID склада")]
    public int CdStId { get; set; }

    public virtual Storage CdSt { get; set; } = null!;
}