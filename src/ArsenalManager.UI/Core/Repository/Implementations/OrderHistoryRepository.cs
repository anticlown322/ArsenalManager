namespace ArsenalManager.UI.Core.Repository.Implementations;

public class OrderHistoryRepository(
    ApplicationDbContext context) 
    : BaseRepository<OrderHistory>(context);