namespace ArsenalManager.UI.Core.Repository.Configurations;

public class EngEquipmentConfiguration : IEntityTypeConfiguration<EngEquipment>
{
    public void Configure(EntityTypeBuilder<EngEquipment> builder)
    {
        builder.HasKey(e => e.EeId).HasName("PRIMARY");
        builder.ToTable("eng_equipment");
        
        builder.HasIndex(e => e.EeId, "ee_id_UNIQUE").IsUnique();
        builder.HasIndex(e => e.EeStId, "fk_eng_equipment_storages1_idx");
        
        builder.Property(e => e.EeManufYear).HasColumnType("year");
        builder.Property(e => e.EeManufacture).HasMaxLength(100);
        builder.Property(e => e.EeModel).HasMaxLength(100);
        builder.Property(e => e.EeStatus).HasMaxLength(20);
        builder.Property(e => e.EeType).HasMaxLength(50);
        
        builder.HasOne(d => d.EeSt)
            .WithMany(p => p.EngEquipments)
            .HasForeignKey(d => d.EeStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_eng_equipment_storage");
    }
}