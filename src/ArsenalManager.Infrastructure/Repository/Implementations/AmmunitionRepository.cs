namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class AmmunitionRepository(
    ApplicationDbContext context) 
    : BaseRepository<Ammunition>(context);