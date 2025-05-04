namespace ArsenalManager.Domain.Models.Entities;

public class OrderHistory
{
    [DisplayName("ID")]
    public int OrderId { get; set; }

    [DisplayName("Order date")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Resource")]
    public string ResourceName { get; set; } = null!;

    [DisplayName("Supplier")]
    public string SupplierName { get; set; } = null!;

    [DisplayName("Responsible")]
    public string ResponsiblePerson { get; set; } = null!;

    [DisplayName("Status")]
    public string? OStatus { get; set; }
}
