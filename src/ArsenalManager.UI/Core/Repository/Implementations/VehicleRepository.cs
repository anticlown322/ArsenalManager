namespace ArsenalManager.UI.Core.Repository.Implementations;

public class VehicleRepository(
    ApplicationDbContext context) 
    : BaseRepository<Vehicle>(context);