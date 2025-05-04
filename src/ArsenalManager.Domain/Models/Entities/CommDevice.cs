namespace ArsenalManager.Domain.Models.Entities;

public class CommDevice
{
    [DisplayName("ID")]
    public int CdId { get; set; }

    [DisplayName("Type")]
    public string CdType { get; set; } = null!;

    [DisplayName("Model")]
    public string? CdModel { get; set; }

    [DisplayName("Manufacture")]
    public string? CdManufacture { get; set; }

    [DisplayName("Min Frequency (MGhz)")]
    public float? CdFreqMin { get; set; }

    [DisplayName("Max Frequency (MGhz)")]
    public float? CdFreqMax { get; set; }

    [DisplayName("Status")]
    public string CdStatus { get; set; } = null!;

    [DisplayName("Storage ID")]
    public int CdStId { get; set; }

    public virtual Storage CdSt { get; set; } = null!;
}