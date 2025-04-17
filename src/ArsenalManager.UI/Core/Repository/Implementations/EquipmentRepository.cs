namespace ArsenalManager.UI.Core.Repository.Implementations;

public class EquipmentRepository(
    ApplicationDbContext context) 
    : BaseRepository<Equipment>(context);