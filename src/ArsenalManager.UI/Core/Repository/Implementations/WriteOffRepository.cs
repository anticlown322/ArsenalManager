namespace ArsenalManager.UI.Core.Repository.Implementations;

public class WriteOffRepository(
    ApplicationDbContext context) 
    : BaseRepository<WriteOff>(context);