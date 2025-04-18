namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class MedSupplyRepository(
    ApplicationDbContext context) 
    : BaseRepository<MedSupply>(context);