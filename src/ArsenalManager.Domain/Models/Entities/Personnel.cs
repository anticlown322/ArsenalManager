namespace ArsenalManager.Domain.Models.Entities;

public class Personnel
{
    [DisplayName("ID")]   
    public int PId { get; set; }

    [DisplayName("Ф.И.О.")]
    public string PFullname { get; set; } = null!;

    [DisplayName("Должность")]
    public string? PRank { get; set; }

    [DisplayName("Принадлежность")]
    public string? PUnit { get; set; }

    [DisplayName("Контактные данные")]
    public string PContacts { get; set; } = null!;

    [DisplayName("Уровень доступа")]
    public string PAccLevel { get; set; } = null!;

    public virtual ICollection<Maintenance> pmMns { get; set; } = new List<Maintenance>();

    public virtual ICollection<Order> poOs { get; set; } = new List<Order>();

    public virtual ICollection<Storage> psSts { get; set; } = new List<Storage>();

    public virtual ICollection<Transfer> ptTrs { get; set; } = new List<Transfer>();

    public virtual ICollection<WriteOff> pwoWos { get; set; } = new List<WriteOff>();
}
