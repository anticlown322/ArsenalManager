namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class OrderHistoryRepository(
    ApplicationDbContext context) 
    : BaseRepository<OrderHistory>(context);