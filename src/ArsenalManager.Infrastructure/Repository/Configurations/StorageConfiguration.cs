namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class StorageConfiguration : IEntityTypeConfiguration<Storage>
{
    public void Configure(EntityTypeBuilder<Storage> builder)
    {
        builder.HasKey(e => e.StId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.StId, "st_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.StLocation).HasMaxLength(255);
        builder.Property(e => e.StName).HasMaxLength(50);
    }
}