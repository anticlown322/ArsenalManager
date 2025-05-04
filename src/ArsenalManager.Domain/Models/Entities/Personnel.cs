namespace ArsenalManager.Domain.Models.Entities;

public class Personnel
{
    [DisplayName("ID")]   
    public int PId { get; set; }

    [DisplayName("Full name")]
    public string PFullname { get; set; } = null!;

    [DisplayName("Rank")]
    public string? PRank { get; set; }

    [DisplayName("Unit")]
    public string? PUnit { get; set; }

    [DisplayName("Contacts")]
    public string PContacts { get; set; } = null!;

    [DisplayName("Access level")]
    public string PAccLevel { get; set; } = null!;

    public virtual ICollection<Maintenance> pmMns { get; set; } = new List<Maintenance>();

    public virtual ICollection<Order> poOs { get; set; } = new List<Order>();

    public virtual ICollection<Storage> psSts { get; set; } = new List<Storage>();

    public virtual ICollection<Transfer> ptTrs { get; set; } = new List<Transfer>();

    public virtual ICollection<WriteOff> pwoWos { get; set; } = new List<WriteOff>();
}
