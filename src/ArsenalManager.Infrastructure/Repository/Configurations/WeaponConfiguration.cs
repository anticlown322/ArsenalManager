namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class WeaponConfiguration : IEntityTypeConfiguration<Weapon>
{
    public void Configure(EntityTypeBuilder<Weapon> builder)
    {
        builder.HasKey(e => e.WId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.WStId, "fk_weapons_storages_idx");
        builder.HasIndex(e => e.WId, "w_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.WCaliber).HasMaxLength(20);
        builder.Property(e => e.WManufacture).HasMaxLength(100);
        builder.Property(e => e.WModel).HasMaxLength(100);
        builder.Property(e => e.WStatus).HasMaxLength(20);
        builder.Property(e => e.WType).HasMaxLength(50);
        
        builder.HasOne(d => d.WSt)
            .WithMany(p => p.Weapons)
            .HasForeignKey(d => d.WStId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_weapons_storage");
            
        builder.HasMany(d => d.WaAms)
            .WithMany(p => p.WaWs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_weapons_ammunition",
                r => r.HasOne<Ammunition>().WithMany()
                    .HasForeignKey("wa_am_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_weapons_ammunition_ammunition"),
                l => l.HasOne<Weapon>().WithMany()
                    .HasForeignKey("wa_w_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_weapons_ammunition_weapons"),
                j =>
                {
                    j.HasKey("wa_w_id", "wa_am_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_weapons_ammunition");
                    j.HasIndex(new[] { "wa_am_id" }, "fk_weapons_has_ammunition_ammunition1_idx");
                    j.HasIndex(new[] { "wa_w_id" }, "fk_weapons_has_ammunition_weapons1_idx");
                });
    }
}