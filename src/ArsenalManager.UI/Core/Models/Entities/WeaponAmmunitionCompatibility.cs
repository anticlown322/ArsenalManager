namespace ArsenalManager.UI.Core.Models.Entities;

public class WeaponAmmunitionCompatibility
{
    public int WeaponId { get; set; }

    public string? WeaponName { get; set; }

    public int AmmunitionId { get; set; }

    public string AmmunitionType { get; set; } = null!;
}
