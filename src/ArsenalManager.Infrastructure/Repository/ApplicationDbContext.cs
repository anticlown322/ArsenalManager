using System.Reflection;

namespace ArsenalManager.Infrastructure.Repository;

public class ApplicationDbContext(
    DbContextOptions<ApplicationDbContext> options)
    : DbContext(options)
{
    public virtual DbSet<ActiveOrder> ActiveOrders { get; set; }

    public virtual DbSet<Ammunition> Ammunitions { get; set; }

    public virtual DbSet<CommDevice> CommDevices { get; set; }

    public virtual DbSet<EngEquipment> EngEquipments { get; set; }

    public virtual DbSet<Equipment> Equipment { get; set; }

    public virtual DbSet<Maintenance> Maintenances { get; set; }

    public virtual DbSet<MedSupply> MedSupplies { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrderHistory> OrderHistories { get; set; }

    public virtual DbSet<Personnel> Personnel { get; set; }

    public virtual DbSet<Resource> Resources { get; set; }

    public virtual DbSet<Storage> Storages { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<Transfer> Transfers { get; set; }

    public virtual DbSet<TransferHistory> TransferHistories { get; set; }

    public virtual DbSet<Vehicle> Vehicles { get; set; }

    public virtual DbSet<Weapon> Weapons { get; set; }

    public virtual DbSet<WeaponAmmunitionCompatibility> WeaponAmmunitionCompatibilities { get; set; }

    public virtual DbSet<WriteOff> WriteOffs { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb3_general_ci")
            .HasCharSet("utf8mb3");

        modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        
        foreach (var entity in modelBuilder.Model.GetEntityTypes())
        {
            entity.SetTableName(ToSnakeCase(entity.GetTableName()));
            
            foreach (var property in entity.GetProperties())
            {
                property.SetColumnName(ToSnakeCase(property.GetColumnName()));
            }
        }
    }
    
    private static string ToSnakeCase(string input)
    {
        if (string.IsNullOrEmpty(input)) return input;
        return string.Concat(input.Select((c, i) => 
                i > 0 && char.IsUpper(c) ? "_" + c.ToString() : c.ToString()))
            .ToLower();
    }
}