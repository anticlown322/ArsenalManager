namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class ResourceConfiguration : IEntityTypeConfiguration<Resource>
{
    public void Configure(EntityTypeBuilder<Resource> builder)
    {
        builder.HasKey(e => e.ResId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.ResId, "res_id_UNIQUE").IsUnique();
        builder.HasIndex(e => e.ResName, "res_name_UNIQUE").IsUnique();
        
        builder.Property(e => e.ResName).HasMaxLength(50);
        
        builder.HasMany(d => d.RsSps)
            .WithMany(p => p.RsRes)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_resources_supplier",
                r => r.HasOne<Supplier>().WithMany()
                    .HasForeignKey("rs_sp_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_resources_suppliers_suppliers"),
                l => l.HasOne<Resource>().WithMany()
                    .HasForeignKey("rs_res_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_resources_suppliers_resources"),
                j =>
                {
                    j.HasKey("rs_res_id", "rs_sp_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_resources_suppliers");
                    j.HasIndex(new[] { "rs_res_id" }, "fk_resources_has_suppliers_resources1_idx");
                    j.HasIndex(new[] { "rs_sp_id" }, "fk_resources_has_suppliers_suppliers1_idx");
                });
    }
}