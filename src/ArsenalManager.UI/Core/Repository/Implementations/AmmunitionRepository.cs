namespace ArsenalManager.UI.Core.Repository.Implementations;

public class AmmunitionRepository(
    ApplicationDbContext context) 
    : BaseRepository<Ammunition>(context);