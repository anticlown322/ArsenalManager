namespace ArsenalManager.UI.Core.Repository.Configurations;

public class OrderHistoryConfiguration : IEntityTypeConfiguration<OrderHistory>
{
    public void Configure(EntityTypeBuilder<OrderHistory> builder)
    {
        builder.HasNoKey().ToView("order_history");
        
        builder.Property(e => e.OStatus).HasMaxLength(50);
        builder.Property(e => e.ResourceName).HasMaxLength(50);
        builder.Property(e => e.ResponsiblePerson).HasMaxLength(100);
        builder.Property(e => e.SupplierName).HasMaxLength(100);
    }
}