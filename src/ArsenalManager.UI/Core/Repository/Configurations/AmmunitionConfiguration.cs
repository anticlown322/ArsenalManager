using ArsenalManager.UI.Core.Models.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ArsenalManager.UI.Core.Repository.Configurations;

public class AmmunitionConfiguration : IEntityTypeConfiguration<Ammunition>
{
    public void Configure(EntityTypeBuilder<Ammunition> builder)
    {
        builder.HasKey(e => e.AmId).HasName("PRIMARY");
        builder.ToTable("ammunition");
        
        builder.HasIndex(e => e.AmId, "am_id_UNIQUE").IsUnique();
        builder.HasIndex(e => e.AmStId, "fk_ammunition_storages1_idx");
        
        builder.Property(e => e.AmCaliber).HasMaxLength(20);
        builder.Property(e => e.AmExprDate).HasColumnType("date");
        builder.Property(e => e.AmType).HasMaxLength(50);
        
        builder.HasOne(d => d.AmSt)
            .WithMany(p => p.Ammunitions)
            .HasForeignKey(d => d.AmStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_ammunition_storage");
    }
}