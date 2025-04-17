namespace ArsenalManager.UI.Core.Repository.Configurations;

public class MaintenanceConfiguration : IEntityTypeConfiguration<Maintenance>
{
    public void Configure(EntityTypeBuilder<Maintenance> builder)
    {
        builder.HasKey(e => e.MnId).HasName("PRIMARY");
        builder.ToTable("maintenance");
        
        builder.HasIndex(e => e.MnResId, "fk_maintenance_resources1_idx");
        builder.HasIndex(e => e.MnId, "mn_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.MnDesc).HasColumnType("text");
        builder.Property(e => e.MnType).HasMaxLength(50);
        
        builder.HasOne(d => d.MnRes)
            .WithMany(p => p.Maintenances)
            .HasForeignKey(d => d.MnResId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_maintenance_resource");
    }
}