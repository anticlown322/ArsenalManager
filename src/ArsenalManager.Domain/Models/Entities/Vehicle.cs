namespace ArsenalManager.Domain.Models.Entities;

public class Vehicle
{
    [DisplayName("ID")]
    public int VId { get; set; }

    [DisplayName("Type")]
    public string VType { get; set; } = null!;

    [DisplayName("Model")]
    public string? VModel { get; set; }

    [DisplayName("Manufacture")]
    public string? VManufacture { get; set; }

    [DisplayName("Year")]
    public short? VManufYear { get; set; }

    [DisplayName("Status")]
    public string VStatus { get; set; } = null!;

    [DisplayName("Storage ID")]
    public int VStId { get; set; }

    public virtual Storage VSt { get; set; } = null!;
}
