namespace ArsenalManager.UI.Core.Repository.Implementations;

public class ResourceRepository(
    ApplicationDbContext context) 
    : BaseRepository<Resource>(context);