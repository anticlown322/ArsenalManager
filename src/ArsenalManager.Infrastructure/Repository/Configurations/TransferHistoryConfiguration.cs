namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class TransferHistoryConfiguration : IEntityTypeConfiguration<TransferHistory>
{
    public void Configure(EntityTypeBuilder<TransferHistory> builder)
    {
        builder.HasNoKey().ToView("transfer_history");
        
        builder.Property(e => e.FromStorage).HasMaxLength(50);
        builder.Property(e => e.ResourceName).HasMaxLength(50);
        builder.Property(e => e.ResponsiblePerson).HasMaxLength(100);
        builder.Property(e => e.ToStorage).HasMaxLength(50);
    }
}