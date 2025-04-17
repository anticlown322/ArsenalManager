namespace ArsenalManager.UI.Core.Models.Entities;

public class Weapon
{
    public int WId { get; set; }

    public string WType { get; set; } = null!;

    public string? WModel { get; set; }

    public string? WManufacture { get; set; }

    public string? WCaliber { get; set; }

    public string WStatus { get; set; } = null!;

    public int WStId { get; set; }

    public virtual Storage WSt { get; set; } = null!;

    public virtual ICollection<Ammunition> WaAms { get; set; } = new List<Ammunition>();
}
