namespace ArsenalManager.UI.Core.Models.Entities;

public class Vehicle
{
    public int VId { get; set; }

    public string VType { get; set; } = null!;

    public string? VModel { get; set; }

    public string? VManufacture { get; set; }

    public short? VManufYear { get; set; }

    public string VStatus { get; set; } = null!;

    public int VStId { get; set; }

    public virtual Storage VSt { get; set; } = null!;
}
