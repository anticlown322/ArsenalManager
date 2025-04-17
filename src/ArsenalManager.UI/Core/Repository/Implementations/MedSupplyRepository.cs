namespace ArsenalManager.UI.Core.Repository.Implementations;

public class MedSupplyRepository(
    ApplicationDbContext context) 
    : BaseRepository<MedSupply>(context);