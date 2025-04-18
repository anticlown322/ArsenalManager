namespace ArsenalManager.Domain.Models.Entities;

public class Order
{
    [DisplayName("ID")]
    public int OId { get; set; }

    [DisplayName("Количество ресурса")]
    public int? OQuantity { get; set; }

    [DisplayName("Дата заказа")]
    public DateOnly? ODate { get; set; }

    [DisplayName("Статус")]
    public string? OStatus { get; set; }

    [DisplayName("ID ресурса")]
    public int OResId { get; set; }

    public virtual Resource ORes { get; set; } = null!;

    public virtual ICollection<Supplier> OsSps { get; set; } = new List<Supplier>();

    public virtual ICollection<Personnel> PoPs { get; set; } = new List<Personnel>();
}
