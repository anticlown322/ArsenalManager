namespace ArsenalManager.UI.Core.Repository.Configurations;

public class VehicleConfiguration : IEntityTypeConfiguration<Vehicle>
{
    public void Configure(EntityTypeBuilder<Vehicle> builder)
    {
        builder.HasKey(e => e.VId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.VStId, "fk_vehicles_storages1_idx");
        builder.HasIndex(e => e.VId, "v_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.VManufYear).HasColumnType("year");
        builder.Property(e => e.VManufacture).HasMaxLength(100);
        builder.Property(e => e.VModel).HasMaxLength(100);
        builder.Property(e => e.VStatus).HasMaxLength(20);
        builder.Property(e => e.VType).HasMaxLength(50);
        
        builder.HasOne(d => d.VSt)
            .WithMany(p => p.Vehicles)
            .HasForeignKey(d => d.VStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_vehicles_storage");
    }
}