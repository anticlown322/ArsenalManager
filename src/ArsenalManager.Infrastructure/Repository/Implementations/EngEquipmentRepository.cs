namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class EngEquipmentRepository(
    ApplicationDbContext context) 
    : BaseRepository<EngEquipment>(context);