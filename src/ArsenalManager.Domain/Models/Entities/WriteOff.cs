namespace ArsenalManager.Domain.Models.Entities;

public class WriteOff
{
    [DisplayName("ID")]
    public int WoId { get; set; }

    [DisplayName("Reason")]
    public string? WoReason { get; set; }

    [DisplayName("Write-off date")]
    public DateOnly? WoDate { get; set; }

    [DisplayName("Resource ID")]
    public int WoResId { get; set; }

    public virtual Resource WoRes { get; set; } = null!;

    public virtual ICollection<Personnel> PwoPs { get; set; } = new List<Personnel>();
}
