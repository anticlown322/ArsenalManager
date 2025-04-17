using ArsenalManager.UI.Core.Models.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ArsenalManager.UI.Core.Repository.Configurations;

public class ActiveOrderConfiguration : IEntityTypeConfiguration<ActiveOrder>
{
    public void Configure(EntityTypeBuilder<ActiveOrder> builder)
    {
        builder
            .HasNoKey()
            .ToView("active_orders");

        builder.Property(e => e.OStatus).HasMaxLength(50);
        builder.Property(e => e.SupplierName).HasMaxLength(100);
    }
}