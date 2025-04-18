namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class TransferConfiguration : IEntityTypeConfiguration<Transfer>
{
    public void Configure(EntityTypeBuilder<Transfer> builder)
    {
        builder.HasKey(e => e.TrId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.TrResId, "fk_transfers_resources1_idx");
        builder.HasIndex(e => e.TrStartStorageId, "fk_transfers_storages1_idx");
        builder.HasIndex(e => e.TrEndStorageId, "fk_transfers_storages2_idx");
        builder.HasIndex(e => e.TrId, "tr_id_UNIQUE").IsUnique();
        
        builder.HasOne(d => d.TrEndStorage)
            .WithMany(p => p.TransferTrEndStorages)
            .HasForeignKey(d => d.TrEndStorageId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_transfers_end_storages");
            
        builder.HasOne(d => d.TrRes)
            .WithMany(p => p.Transfers)
            .HasForeignKey(d => d.TrResId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_transfers_resource");
            
        builder.HasOne(d => d.TrStartStorage)
            .WithMany(p => p.TransferTrStartStorages)
            .HasForeignKey(d => d.TrStartStorageId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_transfers_start_storage");
    }
}