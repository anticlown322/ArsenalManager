using ArsenalManager.UI.Core.Contracts.Repositories;
using Microsoft.EntityFrameworkCore;

namespace ArsenalManager.UI.Core.Repository;

public class BaseRepository<T>(
    ApplicationDbContext context) 
    : IRepository<T>
    where T : class
{
    protected readonly ApplicationDbContext _context = context;
    protected readonly DbSet<T> _dbSet = context.Set<T>();

    public async Task<T> GetByIdAsync(int id) => await _dbSet.FindAsync(id);
    public async Task<IEnumerable<T>> GetAllAsync() => await _dbSet.ToListAsync();
    public async Task AddAsync(T entity) => await _dbSet.AddAsync(entity);
    public async Task UpdateAsync(T entity) => _dbSet.Update(entity);
    public async Task DeleteAsync(T entity) => _dbSet.Remove(entity);
    
    public async Task SaveAsync() => await _context.SaveChangesAsync();
}