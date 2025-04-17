namespace ArsenalManager.UI.Core.Repository.Implementations;

public class CommDeviceRepository(
    ApplicationDbContext context) 
    : BaseRepository<CommDevice>(context);