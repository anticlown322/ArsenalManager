namespace ArsenalManager.Domain.Models.Entities;

public class Order
{
    [DisplayName("ID")]
    public int OId { get; set; }

    [DisplayName("Quantity")]
    public int? OQuantity { get; set; }

    [DisplayName("Order date")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Status")]
    public string? OStatus { get; set; }

    [DisplayName("Resource ID")]
    public int OResId { get; set; }

    public virtual Resource ORes { get; set; } = null!;

    public virtual ICollection<Supplier> OsSps { get; set; } = new List<Supplier>();

    public virtual ICollection<Personnel> PoPs { get; set; } = new List<Personnel>();
}
