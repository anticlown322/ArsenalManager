using ArsenalManager.Domain.Models.Entities;

namespace ArsenalManager.Infrastructure.Repository.Implementations;

public class ResourceRepository(
    ApplicationDbContext context) 
    : BaseRepository<Resource>(context);