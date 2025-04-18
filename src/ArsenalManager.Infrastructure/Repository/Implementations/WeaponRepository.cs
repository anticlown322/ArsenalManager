namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class WeaponRepository(
    ApplicationDbContext context) 
    : BaseRepository<Weapon>(context);