namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class OrderRepository(
    ApplicationDbContext context) 
    : BaseRepository<Order>(context);