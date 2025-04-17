namespace ArsenalManager.UI.Core.Repository.Implementations;

public class SupplierRepository(
    ApplicationDbContext context) 
    : BaseRepository<Supplier>(context);