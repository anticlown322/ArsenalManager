namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class VehicleRepository(
    ApplicationDbContext context) 
    : BaseRepository<Vehicle>(context);