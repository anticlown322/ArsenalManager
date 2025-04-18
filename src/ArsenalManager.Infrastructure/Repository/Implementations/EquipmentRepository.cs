namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class EquipmentRepository(
    ApplicationDbContext context) 
    : BaseRepository<Equipment>(context);