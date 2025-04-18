namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class EquipmentConfiguration : IEntityTypeConfiguration<Equipment>
{
    public void Configure(EntityTypeBuilder<Equipment> builder)
    {
        builder.HasKey(e => e.EqId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.EqId, "eq_id_UNIQUE").IsUnique();
        builder.HasIndex(e => e.EqStId, "fk_equipment_storages1_idx");
        
        builder.Property(e => e.EqManufacture).HasMaxLength(100);
        builder.Property(e => e.EqModel).HasMaxLength(100);
        builder.Property(e => e.EqSize).HasMaxLength(10);
        builder.Property(e => e.EqStatus).HasMaxLength(20);
        builder.Property(e => e.EqType).HasMaxLength(50);
        
        builder.HasOne(d => d.EqSt)
            .WithMany(p => p.Equipment)
            .HasForeignKey(d => d.EqStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_equipment_storage");
    }
}