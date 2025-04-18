namespace ArsenalManager.Domain.Models.Entities;

public class MedSupply
{
    [DisplayName("ID")]
    public int MsId { get; set; }

    [DisplayName("Тип медикамента")]
    public string MsType { get; set; } = null!;

    [DisplayName("Название")]
    public string MsTitle { get; set; } = null!;

    [DisplayName("Производитель")]
    public string? MsManufacture { get; set; }
    
    [DisplayName("Количество")]
    public uint MsQuantity { get; set; }

    [DisplayName("Годен до")]
    public DateOnly MsExprDate { get; set; }

    [DisplayName("ID склада")]
    public int MsStId { get; set; }

    public virtual Storage MsSt { get; set; } = null!;
}
