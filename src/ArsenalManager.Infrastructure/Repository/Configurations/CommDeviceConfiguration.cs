namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class CommDeviceConfiguration : IEntityTypeConfiguration<CommDevice>
{
    public void Configure(EntityTypeBuilder<CommDevice> builder)
    {
        builder.HasKey(e => e.CdId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.CdId, "cd_id_UNIQUE").IsUnique();
        builder.HasIndex(e => e.CdStId, "fk_comm_devices_storages1_idx");
        
        builder.Property(e => e.CdFreqMax).HasColumnType("float unsigned");
        builder.Property(e => e.CdFreqMin).HasColumnType("float unsigned");
        builder.Property(e => e.CdManufacture).HasMaxLength(100);
        builder.Property(e => e.CdModel).HasMaxLength(100);
        builder.Property(e => e.CdStatus).HasMaxLength(20);
        builder.Property(e => e.CdType).HasMaxLength(50);
        
        builder.HasOne(d => d.CdSt)
            .WithMany(p => p.CommDevices)
            .HasForeignKey(d => d.CdStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_comm_devices_storage");
    }
}