namespace ArsenalManager.Domain.Models.Entities;

public class Equipment
{
    [DisplayName("ID")]
    public int EqId { get; set; }

    [DisplayName("Type")]
    public string EqType { get; set; } = null!;

    [DisplayName("Model")]
    public string? EqModel { get; set; }

    [DisplayName("Manufacture")]
    public string? EqManufacture { get; set; }

    [DisplayName("Size")]
    public string? EqSize { get; set; }

    [DisplayName("Status")]
    public string EqStatus { get; set; } = null!;

    [DisplayName("Storage ID")]
    public int EqStId { get; set; }

    public virtual Storage EqSt { get; set; } = null!;
}
