namespace ArsenalManager.UI.Core.Models.Entities;

public class CommDevice
{
    public int CdId { get; set; }

    public string CdType { get; set; } = null!;

    public string? CdModel { get; set; }

    public string? CdManufacture { get; set; }

    public float? CdFreqMin { get; set; }

    public float? CdFreqMax { get; set; }

    public string CdStatus { get; set; } = null!;

    public int CdStId { get; set; }

    public virtual Storage CdSt { get; set; } = null!;
}
