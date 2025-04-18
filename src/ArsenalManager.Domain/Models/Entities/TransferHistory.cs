namespace ArsenalManager.Domain.Models.Entities;

public class TransferHistory
{
    [DisplayName("ID")]
    public int TransferId { get; set; }

    [DisplayName("Дата перемещения")]
    public DateOnly TrDate { get; set; }

    [DisplayName("Имя ресурса")]
    public string ResourceName { get; set; } = null!;

    [DisplayName("Откуда")]
    public string FromStorage { get; set; } = null!;

    [DisplayName("Куда")]
    public string ToStorage { get; set; } = null!;

    [DisplayName("Ответственный")]
    public string ResponsiblePerson { get; set; } = null!;
}
