namespace ArsenalManager.UI.Core.Repository.Implementations;

public class TransferHistoryRepository(
    ApplicationDbContext context) 
    : BaseRepository<TransferHistory>(context);