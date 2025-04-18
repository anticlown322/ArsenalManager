namespace ArsenalManager.Domain.Models.Entities;

public class ActiveOrder
{
    [DisplayName("ID")]
    public int OrderId { get; set; }

    [DisplayName("Дата заказа")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Поставщик")]
    public string SupplierName { get; set; } = null!;

    [DisplayName("Статус")]
    public string? OStatus { get; set; }
}
