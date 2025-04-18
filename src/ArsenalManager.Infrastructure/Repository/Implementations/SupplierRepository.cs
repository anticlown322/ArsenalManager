namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class SupplierRepository(
    ApplicationDbContext context) 
    : BaseRepository<Supplier>(context);