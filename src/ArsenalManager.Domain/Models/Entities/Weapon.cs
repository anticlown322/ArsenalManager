namespace ArsenalManager.Domain.Models.Entities;

public class Weapon
{
    [DisplayName("ID")]
    public int WId { get; set; }

    [DisplayName("Type")]
    public string WType { get; set; } = null!;

    [DisplayName("Model")]
    public string? WModel { get; set; }

    [DisplayName("Manufacture")]
    public string? WManufacture { get; set; }

    [DisplayName("Caliber")]
    public string? WCaliber { get; set; }

    [DisplayName("Status")]
    public string WStatus { get; set; } = null!;

    [DisplayName("Storage ID")]
    public int WStId { get; set; }

    public virtual Storage WSt { get; set; } = null!;

    public virtual ICollection<Ammunition> WaAms { get; set; } = new List<Ammunition>();
}
