namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class StorageRepository(
    ApplicationDbContext context) 
    : BaseRepository<Storage>(context);