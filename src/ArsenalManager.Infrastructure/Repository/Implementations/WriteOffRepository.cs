namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class WriteOffRepository(
    ApplicationDbContext context) 
    : BaseRepository<WriteOff>(context);