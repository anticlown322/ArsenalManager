namespace ArsenalManager.UI.Core.Models.Entities;

public class MedSupply
{
    public int MsId { get; set; }

    public string MsType { get; set; } = null!;

    public string MsTitle { get; set; } = null!;

    public string? MsManufacture { get; set; }

    public uint MsQuantity { get; set; }

    public DateOnly MsExprDate { get; set; }

    public int MsStId { get; set; }

    public virtual Storage MsSt { get; set; } = null!;
}
