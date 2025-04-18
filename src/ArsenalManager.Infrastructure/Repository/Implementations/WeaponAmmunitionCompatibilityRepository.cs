namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class WeaponAmmunitionCompatibilityRepository(
    ApplicationDbContext context) 
    : BaseRepository<WeaponAmmunitionCompatibility>(context);