namespace ArsenalManager.UI.Core.Repository.Implementations;

public class StorageRepository(
    ApplicationDbContext context) 
    : BaseRepository<Storage>(context);