namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class OrderConfiguration : IEntityTypeConfiguration<Order>
{
    public void Configure(EntityTypeBuilder<Order> builder)
    {
        builder.HasKey(e => e.OId).HasName("PRIMARY");
        
        builder.HasIndex(e => e.OResId, "fk_orders_resources1_idx");
        builder.HasIndex(e => e.OId, "o_id_UNIQUE").IsUnique();
        
        builder.Property(e => e.OStatus).HasMaxLength(50);
        
        builder.HasOne(d => d.ORes)
            .WithMany(p => p.Orders)
            .HasForeignKey(d => d.OResId)
            .OnDelete(DeleteBehavior.ClientSetNull)
            .HasConstraintName("fk_orders_resource");
        
        builder.HasMany(d => d.OsSps)
            .WithMany(p => p.OsOs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_orders_supplier",
                r => r.HasOne<Supplier>().WithMany()
                    .HasForeignKey("os_sp_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_orders_suppliers_suppliers"),
                l => l.HasOne<Order>().WithMany()
                    .HasForeignKey("os_o_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_orders_suppliers_orders"),
                j =>
                {
                    j.HasKey("os_o_id", "os_sp_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_orders_suppliers");
                    j.HasIndex(new[] { "os_o_id" }, "fk_orders_has_suppliers_orders1_idx");
                    j.HasIndex(new[] { "os_sp_id" }, "fk_orders_has_suppliers_suppliers1_idx");
                });
    }
}