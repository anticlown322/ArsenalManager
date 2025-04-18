namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class PersonnelRepository(
    ApplicationDbContext context) 
    : BaseRepository<Personnel>(context);