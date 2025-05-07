namespace ArsenalManager.Application.Contracts.Services;

public interface IProcedureService
{
    Task AutoReplenishResourcesAsync(int threshold);
    Task CreateOrderAsync(int resourceId, int quantity, int supplierId, int personnelId);
}