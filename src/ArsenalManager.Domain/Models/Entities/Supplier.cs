namespace ArsenalManager.Domain.Models.Entities;

public class Supplier
{
    [DisplayName("ID")]
    public int SpId { get; set; }

    [DisplayName("Name")]
    public string SpName { get; set; } = null!;

    [DisplayName("Contacts")]
    public string? SpContacts { get; set; }

    [DisplayName("Rating")]
    public decimal? SpRating { get; set; }

    public virtual ICollection<Order> OsOs { get; set; } = new List<Order>();

    public virtual ICollection<Resource> RsRes { get; set; } = new List<Resource>();
}
