namespace ArsenalManager.Domain.Models.Entities;

public class OrderHistory
{
    [DisplayName("ID")]
    public int OrderId { get; set; }

    [DisplayName("Дата заказа")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Ресурс")]
    public string ResourceName { get; set; } = null!;

    [DisplayName("Поставщик")]
    public string SupplierName { get; set; } = null!;

    [DisplayName("Ответственный")]
    public string ResponsiblePerson { get; set; } = null!;

    [DisplayName("Статус")]
    public string? OStatus { get; set; }
}
