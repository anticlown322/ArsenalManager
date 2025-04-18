namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class WriteOffConfiguration : IEntityTypeConfiguration<WriteOff>
{
    public void Configure(EntityTypeBuilder<WriteOff> builder)
    {
        builder.HasKey(e => e.WoId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.WoResId, "fk_write_offs_resources1_idx");
        
        builder.Property(e => e.WoReason).HasMaxLength(50);
        
        builder.HasOne(d => d.WoRes)
            .WithMany(p => p.WriteOffs)
            .HasForeignKey(d => d.WoResId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_write_offs_resource");
    }
}