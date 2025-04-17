namespace ArsenalManager.UI.Core.Repository.Implementations;

public class TransferRepository(
    ApplicationDbContext context) 
    : BaseRepository<Transfer>(context);