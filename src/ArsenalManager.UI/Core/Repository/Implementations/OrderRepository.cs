namespace ArsenalManager.UI.Core.Repository.Implementations;

public class OrderRepository(
    ApplicationDbContext context) 
    : BaseRepository<Order>(context);