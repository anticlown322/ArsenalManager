namespace ArsenalManager.Domain.Models.Entities;

public class MedSupply
{
    [DisplayName("ID")]
    public int MsId { get; set; }

    [DisplayName("Type")]
    public string MsType { get; set; } = null!;

    [DisplayName("Title")]
    public string MsTitle { get; set; } = null!;

    [DisplayName("Manufacture")]
    public string? MsManufacture { get; set; }
    
    [DisplayName("Quantity")]
    public uint MsQuantity { get; set; }

    [DisplayName("Expire date")]
    public DateOnly MsExprDate { get; set; }

    [DisplayName("Storage ID")]
    public int MsStId { get; set; }

    public virtual Storage MsSt { get; set; } = null!;
}
