namespace ArsenalManager.UI.Core.Models.Entities;

public class ActiveOrder
{
    public int OrderId { get; set; }

    public DateOnly? ODate { get; set; }

    public string SupplierName { get; set; } = null!;

    public string? OStatus { get; set; }
}
