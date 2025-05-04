namespace ArsenalManager.Domain.Models.Entities;

public class WeaponAmmunitionCompatibility
{
    [DisplayName("Weapon ID")]
    public int WeaponId { get; set; }

    [DisplayName("Weapon Model")]
    public string? WeaponName { get; set; }

    [DisplayName("Ammunition ID")]
    public int AmmunitionId { get; set; }

    [DisplayName("Ammunition type")]
    public string AmmunitionType { get; set; } = null!;
}
