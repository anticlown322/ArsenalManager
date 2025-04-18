namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class ActiveOrderRepository(
    ApplicationDbContext context) 
    : BaseRepository<ActiveOrder>(context);