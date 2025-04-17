namespace ArsenalManager.UI.Core.Models.Entities;

public class Maintenance
{
    public int MnId { get; set; }

    public DateOnly? MnDate { get; set; }

    public string MnType { get; set; } = null!;

    public string? MnDesc { get; set; }

    public int MnResId { get; set; }

    public virtual Resource MnRes { get; set; } = null!;

    public virtual ICollection<Personnel> PmPs { get; set; } = new List<Personnel>();
}
