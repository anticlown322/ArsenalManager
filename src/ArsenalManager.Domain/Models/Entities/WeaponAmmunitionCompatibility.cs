namespace ArsenalManager.Domain.Models.Entities;

public class WeaponAmmunitionCompatibility
{
    [DisplayName("ID модели оружия")]
    public int WeaponId { get; set; }

    [DisplayName("Модель оружия")]
    public string? WeaponName { get; set; }

    [DisplayName("ID типа боеприпаса")]
    public int AmmunitionId { get; set; }

    [DisplayName("Тип боеприпаса")]
    public string AmmunitionType { get; set; } = null!;
}
