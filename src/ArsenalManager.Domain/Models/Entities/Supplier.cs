namespace ArsenalManager.Domain.Models.Entities;

public class Supplier
{
    [DisplayName("ID")]
    public int SpId { get; set; }

    [DisplayName("Название/Имя")]
    public string SpName { get; set; } = null!;

    [DisplayName("Контактные данные")]
    public string? SpContacts { get; set; }

    [DisplayName("Рейтинг")]
    public decimal? SpRating { get; set; }

    public virtual ICollection<Order> OsOs { get; set; } = new List<Order>();

    public virtual ICollection<Resource> RsRes { get; set; } = new List<Resource>();
}
