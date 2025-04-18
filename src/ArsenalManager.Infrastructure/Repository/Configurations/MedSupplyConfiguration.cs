namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class MedSupplyConfiguration : IEntityTypeConfiguration<MedSupply>
{
    public void Configure(EntityTypeBuilder<MedSupply> builder)
    {
        builder.HasKey(e => e.MsId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.MsStId, "fk_med_supplies_storages1_idx");
        builder.HasIndex(e => e.MsId, "ms_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.MsManufacture).HasMaxLength(100);
        builder.Property(e => e.MsTitle).HasMaxLength(100);
        builder.Property(e => e.MsType).HasMaxLength(50);
        
        builder.HasOne(d => d.MsSt)
            .WithMany(p => p.MedSupplies)
            .HasForeignKey(d => d.MsStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_med_supplies_storage");
    }
}