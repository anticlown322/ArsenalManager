namespace ArsenalManager.UI.Core.Models.Entities;

public class WriteOff
{
    public int WoId { get; set; }

    public string? WoReason { get; set; }

    public DateOnly? WoDate { get; set; }

    public int WoResId { get; set; }

    public virtual Resource WoRes { get; set; } = null!;

    public virtual ICollection<Personnel> PwoPs { get; set; } = new List<Personnel>();
}
