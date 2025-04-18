namespace ArsenalManager.Domain.Models.Entities;

public class Transfer
{
    [DisplayName("ID")]
    public int TrId { get; set; }

    [DisplayName("Дата перемещения")]
    public DateOnly TrDate { get; set; }

    [DisplayName("Откуда (ID склада)")]
    public int TrStartStorageId { get; set; }

    [DisplayName("Куда (ID склада)")]
    public int TrEndStorageId { get; set; }

    [DisplayName("ID ресурса")]
    public int TrResId { get; set; }

    public virtual Storage TrEndStorage { get; set; } = null!;

    public virtual Resource TrRes { get; set; } = null!;

    public virtual Storage TrStartStorage { get; set; } = null!;

    public virtual ICollection<Personnel> PtPs { get; set; } = new List<Personnel>();
}
