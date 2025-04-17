namespace ArsenalManager.UI.Core.Repository.Implementations;

public class ActiveOrderRepository(
    ApplicationDbContext context) 
    : BaseRepository<ActiveOrder>(context);