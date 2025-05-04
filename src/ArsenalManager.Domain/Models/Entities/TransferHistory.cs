namespace ArsenalManager.Domain.Models.Entities;

public class TransferHistory
{
    [DisplayName("ID")]
    public int TransferId { get; set; }

    [DisplayName("Date")]
    public DateOnly TrDate { get; set; }

    [DisplayName("Resource name")]
    public string ResourceName { get; set; } = null!;

    [DisplayName("From")]
    public string FromStorage { get; set; } = null!;

    [DisplayName("To")]
    public string ToStorage { get; set; } = null!;

    [DisplayName("Responsible")]
    public string ResponsiblePerson { get; set; } = null!;
}
