namespace ArsenalManager.UI.Core.Models.Entities;

public class Supplier
{
    public int SpId { get; set; }

    public string SpName { get; set; } = null!;

    public string? SpContacts { get; set; }

    public decimal? SpRating { get; set; }

    public virtual ICollection<Order> OsOs { get; set; } = new List<Order>();

    public virtual ICollection<Resource> RsRes { get; set; } = new List<Resource>();
}
