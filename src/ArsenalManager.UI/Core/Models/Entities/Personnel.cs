namespace ArsenalManager.UI.Core.Models.Entities;

public class Personnel
{
    public int PId { get; set; }

    public string PFullname { get; set; } = null!;

    public string? PRank { get; set; }

    public string? PUnit { get; set; }

    public string PContacts { get; set; } = null!;

    public string PAccLevel { get; set; } = null!;

    public virtual ICollection<Maintenance> pmMns { get; set; } = new List<Maintenance>();

    public virtual ICollection<Order> poOs { get; set; } = new List<Order>();

    public virtual ICollection<Storage> psSts { get; set; } = new List<Storage>();

    public virtual ICollection<Transfer> ptTrs { get; set; } = new List<Transfer>();

    public virtual ICollection<WriteOff> pwoWos { get; set; } = new List<WriteOff>();
}
