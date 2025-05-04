namespace ArsenalManager.Domain.Models.Entities;

public class ActiveOrder
{
    [DisplayName("ID")]
    public int OrderId { get; set; }

    [DisplayName("Date")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Supplier")]
    public string SupplierName { get; set; } = null!;

    [DisplayName("Status")]
    public string? OStatus { get; set; }
}
