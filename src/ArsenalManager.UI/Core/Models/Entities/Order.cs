namespace ArsenalManager.UI.Core.Models.Entities;

public class Order
{
    public int OId { get; set; }

    public int? OQuantity { get; set; }

    public DateOnly? ODate { get; set; }

    public string? OStatus { get; set; }

    public int OResId { get; set; }

    public virtual Resource ORes { get; set; } = null!;

    public virtual ICollection<Supplier> OsSps { get; set; } = new List<Supplier>();

    public virtual ICollection<Personnel> PoPs { get; set; } = new List<Personnel>();
}
