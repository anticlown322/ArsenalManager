namespace ArsenalManager.UI.Core.Models.Entities;

public class TransferHistory
{
    public int TransferId { get; set; }

    public DateOnly TrDate { get; set; }

    public string ResourceName { get; set; } = null!;

    public string FromStorage { get; set; } = null!;

    public string ToStorage { get; set; } = null!;

    public string ResponsiblePerson { get; set; } = null!;
}
