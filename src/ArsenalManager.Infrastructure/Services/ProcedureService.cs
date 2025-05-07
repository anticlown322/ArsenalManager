using ArsenalManager.Application.Contracts.Services;
using ArsenalManager.Infrastructure.Repository;

namespace ArsenalManager.Infrastructure.Services;

public class ProcedureService(
    ApplicationDbContext context) 
    : IProcedureService
{
    public async Task AutoReplenishResourcesAsync(int threshold)
        => await context.AutoReplenishResourcesAsync(threshold);

    public async Task CreateOrderAsync(int resourceId, int quantity, int supplierId, int personnelId)
        => await context.CreateOrderAsync(resourceId, quantity, supplierId, personnelId);
}