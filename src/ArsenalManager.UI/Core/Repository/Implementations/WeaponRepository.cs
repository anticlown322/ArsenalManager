namespace ArsenalManager.UI.Core.Repository.Implementations;

public class WeaponRepository(
    ApplicationDbContext context) 
    : BaseRepository<Weapon>(context);