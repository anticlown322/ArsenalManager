namespace ArsenalManager.Domain.Models.Entities;

public class Maintenance
{
    [DisplayName("ID")]
    public int MnId { get; set; }

    [DisplayName("Дата")]
    public DateOnly? MnDate { get; set; }

    [DisplayName("Тип")]
    public string MnType { get; set; } = null!;

    [DisplayName("Описание")]
    public string? MnDesc { get; set; }

    [DisplayName("ID ресурса")]
    public int MnResId { get; set; }

    public virtual Resource MnRes { get; set; } = null!;

    public virtual ICollection<Personnel> PmPs { get; set; } = new List<Personnel>();
}
