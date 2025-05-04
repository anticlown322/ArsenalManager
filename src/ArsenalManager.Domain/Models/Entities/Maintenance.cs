namespace ArsenalManager.Domain.Models.Entities;

public class Maintenance
{
    [DisplayName("ID")]
    public int MnId { get; set; }

    [DisplayName("Date")]
    public DateOnly? MnDate { get; set; }

    [DisplayName("Type")]
    public string MnType { get; set; } = null!;

    [DisplayName("Description")]
    public string? MnDesc { get; set; }

    [DisplayName("Resource ID")]
    public int MnResId { get; set; }

    public virtual Resource MnRes { get; set; } = null!;

    public virtual ICollection<Personnel> PmPs { get; set; } = new List<Personnel>();
}
