namespace ArsenalManager.UI.Core.Repository.Implementations;

public class PersonnelRepository(
    ApplicationDbContext context) 
    : BaseRepository<Personnel>(context);