namespace ArsenalManager.UI.Core.Models.Entities;

public class EngEquipment
{
    public int EeId { get; set; }

    public string EeType { get; set; } = null!;

    public string? EeModel { get; set; }

    public string? EeManufacture { get; set; }

    public short? EeManufYear { get; set; }

    public string EeStatus { get; set; } = null!;

    public int EeStId { get; set; }

    public virtual Storage EeSt { get; set; } = null!;
}
