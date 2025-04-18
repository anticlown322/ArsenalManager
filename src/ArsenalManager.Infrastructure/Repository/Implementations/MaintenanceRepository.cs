namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class MaintenanceRepository(
    ApplicationDbContext context) 
    : BaseRepository<Maintenance>(context);