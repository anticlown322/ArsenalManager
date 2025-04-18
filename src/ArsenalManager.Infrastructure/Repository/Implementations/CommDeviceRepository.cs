namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class CommDeviceRepository(
    ApplicationDbContext context) 
    : BaseRepository<CommDevice>(context);