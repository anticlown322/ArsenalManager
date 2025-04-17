namespace ArsenalManager.UI.Core.Models.Entities;

public class OrderHistory
{
    public int OrderId { get; set; }

    public DateOnly? ODate { get; set; }

    public string ResourceName { get; set; } = null!;

    public string SupplierName { get; set; } = null!;

    public string ResponsiblePerson { get; set; } = null!;

    public string? OStatus { get; set; }
}
