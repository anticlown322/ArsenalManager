namespace ArsenalManager.UI.Core.Models.Entities;

public class Transfer
{
    public int TrId { get; set; }

    public DateOnly TrDate { get; set; }

    public int TrStartStorageId { get; set; }

    public int TrEndStorageId { get; set; }

    public int TrResId { get; set; }

    public virtual Storage TrEndStorage { get; set; } = null!;

    public virtual Resource TrRes { get; set; } = null!;

    public virtual Storage TrStartStorage { get; set; } = null!;

    public virtual ICollection<Personnel> PtPs { get; set; } = new List<Personnel>();
}
