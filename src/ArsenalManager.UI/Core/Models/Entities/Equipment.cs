namespace ArsenalManager.UI.Core.Models.Entities;

public class Equipment
{
    public int EqId { get; set; }

    public string EqType { get; set; } = null!;

    public string? EqModel { get; set; }

    public string? EqManufacture { get; set; }

    public string? EqSize { get; set; }

    public string EqStatus { get; set; } = null!;

    public int EqStId { get; set; }

    public virtual Storage EqSt { get; set; } = null!;
}
