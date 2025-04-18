namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class SupplierConfiguration : IEntityTypeConfiguration<Supplier>
{
    public void Configure(EntityTypeBuilder<Supplier> builder)
    {
        builder.HasKey(e => e.SpId).HasName("PRIMARY");
        builder.HasIndex(e => e.SpId, "sp_id_UNIQUE").IsUnique();

        builder.Property(e => e.SpContacts).HasMaxLength(255);
        builder.Property(e => e.SpName).HasMaxLength(100);
        builder.Property(e => e.SpRating).HasPrecision(3, 2);
    }
}