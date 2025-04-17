namespace ArsenalManager.UI.Core.Repository.Implementations;

public class EngEquipmentRepository(
    ApplicationDbContext context) 
    : BaseRepository<EngEquipment>(context);