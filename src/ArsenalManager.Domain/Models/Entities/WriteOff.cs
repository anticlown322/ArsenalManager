namespace ArsenalManager.Domain.Models.Entities;

public class WriteOff
{
    [DisplayName("ID")]
    public int WoId { get; set; }

    [DisplayName("Причина списания")]
    public string? WoReason { get; set; }

    [DisplayName("Дата списания")]
    public DateOnly? WoDate { get; set; }

    [DisplayName("ID ресурса")]
    public int WoResId { get; set; }

    public virtual Resource WoRes { get; set; } = null!;

    public virtual ICollection<Personnel> PwoPs { get; set; } = new List<Personnel>();
}
