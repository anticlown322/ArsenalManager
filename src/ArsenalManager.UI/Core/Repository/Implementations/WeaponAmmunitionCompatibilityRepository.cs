namespace ArsenalManager.UI.Core.Repository.Implementations;

public class WeaponAmmunitionCompatibilityRepository(
    ApplicationDbContext context) 
    : BaseRepository<WeaponAmmunitionCompatibility>(context);