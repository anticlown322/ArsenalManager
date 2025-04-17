namespace ArsenalManager.UI.Core.Repository.Implementations;

public class MaintenanceRepository(
    ApplicationDbContext context) 
    : BaseRepository<Maintenance>(context);