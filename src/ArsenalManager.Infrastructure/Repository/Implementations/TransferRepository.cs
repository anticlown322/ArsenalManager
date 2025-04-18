namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class TransferRepository(
    ApplicationDbContext context) 
    : BaseRepository<Transfer>(context);