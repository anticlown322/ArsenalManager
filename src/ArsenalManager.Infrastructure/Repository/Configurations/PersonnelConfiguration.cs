namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class PersonnelConfiguration : IEntityTypeConfiguration<Personnel>
{
    public void Configure(EntityTypeBuilder<Personnel> builder)
    {
        builder.HasKey(e => e.PId).HasName("PRIMARY");
        builder.HasIndex(e => e.PId, "p_id_UNIQUE").IsUnique();

        builder.Property(e => e.PAccLevel).HasMaxLength(20);
        builder.Property(e => e.PContacts).HasMaxLength(255);
        builder.Property(e => e.PFullname).HasMaxLength(100);
        builder.Property(e => e.PRank).HasMaxLength(50);
        builder.Property(e => e.PUnit).HasMaxLength(100);

        // Конфигурация связи many-to-many с Maintenance
        builder.HasMany(d => d.pmMns)
            .WithMany(p => p.PmPs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_personnel_maintenance",
                r => r.HasOne<Maintenance>().WithMany()
                    .HasForeignKey("pm_mn_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_maintenance_maintenance"),
                l => l.HasOne<Personnel>().WithMany()
                    .HasForeignKey("pm_p_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_maintenance_personnel"),
                j =>
                {
                    j.HasKey("pm_p_id", "pm_mn_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_personnel_maintenance");
                    j.HasIndex(new[] { "pm_mn_id" }, "fk_personnel_has_maintenance_maintenance1_idx");
                    j.HasIndex(new[] { "pm_p_id" }, "fk_personnel_has_maintenance_personnel1_idx");
                });

        // Конфигурация связи many-to-many с Order
        builder.HasMany(d => d.poOs)
            .WithMany(p => p.PoPs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_personnel_order",
                r => r.HasOne<Order>().WithMany()
                    .HasForeignKey("po_o_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_order_order"),
                l => l.HasOne<Personnel>().WithMany()
                    .HasForeignKey("po_p_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_order_personnel"),
                j =>
                {
                    j.HasKey("po_p_id", "po_o_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_personnel_orders");
                    j.HasIndex(new[] { "po_o_id" }, "fk_m2m_personnel_order_order_idx");
                });

        // Конфигурация связи many-to-many с Storage
        builder.HasMany(d => d.psSts)
            .WithMany(p => p.PsPs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_personnel_storage",
                r => r.HasOne<Storage>().WithMany()
                    .HasForeignKey("ps_st_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_storages_storages"),
                l => l.HasOne<Personnel>().WithMany()
                    .HasForeignKey("ps_p_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_storages_personnel"),
                j =>
                {
                    j.HasKey("ps_p_id", "ps_st_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_personnel_storages");
                    j.HasIndex(new[] { "ps_p_id" }, "fk_personnel_has_storages_personnel1_idx");
                    j.HasIndex(new[] { "ps_st_id" }, "fk_personnel_has_storages_storages1_idx");
                });

        // Конфигурация связи many-to-many с Transfer
        builder.HasMany(d => d.ptTrs)
            .WithMany(p => p.PtPs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_personnel_transfer",
                r => r.HasOne<Transfer>().WithMany()
                    .HasForeignKey("pt_tr_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_transfers_transfers"),
                l => l.HasOne<Personnel>().WithMany()
                    .HasForeignKey("pt_p_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_transfers_personnel"),
                j =>
                {
                    j.HasKey("pt_p_id", "pt_tr_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_personnel_transfers");
                    j.HasIndex(new[] { "pt_p_id" }, "fk_personnel_has_transfers_personnel1_idx");
                    j.HasIndex(new[] { "pt_tr_id" }, "fk_personnel_has_transfers_transfers1_idx");
                });

        // Конфигурация связи many-to-many с WriteOff
        builder.HasMany(d => d.pwoWos)
            .WithMany(p => p.PwoPs)
            .UsingEntity<Dictionary<string, object>>(
                "m2m_personnel_write_off",
                r => r.HasOne<WriteOff>().WithMany()
                    .HasForeignKey("pwo_wo_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_write_offs_write_offs"),
                l => l.HasOne<Personnel>().WithMany()
                    .HasForeignKey("pwo_p_id")
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("fk_m2m_personnel_write_offs_personnel"),
                j =>
                {
                    j.HasKey("pwo_p_id", "pwo_wo_id")
                        .HasName("PRIMARY")
                        .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    j.ToTable("m2m_personnel_write_offs");
                    j.HasIndex(new[] { "pwo_p_id" }, "fk_personnel_has_write_offs_personnel1_idx");
                    j.HasIndex(new[] { "pwo_wo_id" }, "fk_personnel_has_write_offs_write_offs1_idx");
                });
    }
}