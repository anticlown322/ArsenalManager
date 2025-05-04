namespace ArsenalManager.Domain.Models.Entities;

public class EngEquipment
{
    [DisplayName("ID")]
    public int EeId { get; set; }

    [DisplayName("Type")]
    public string EeType { get; set; } = null!;

    [DisplayName("Model")]
    public string? EeModel { get; set; }

    [DisplayName("Manufacture")]
    public string? EeManufacture { get; set; }

    [DisplayName("Year")]
    public short? EeManufYear { get; set; }

    [DisplayName("Status")]
    public string EeStatus { get; set; } = null!;

    [DisplayName("Storage ID")]
    public int EeStId { get; set; }

    public virtual Storage EeSt { get; set; } = null!;
}