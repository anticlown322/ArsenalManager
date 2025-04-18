namespace ArsenalManager.Infrastructure.Repository.Configurations;

public class WeaponAmmunitionCompatibilityConfiguration : IEntityTypeConfiguration<WeaponAmmunitionCompatibility>
{
    public void Configure(EntityTypeBuilder<WeaponAmmunitionCompatibility> builder)
    {
        builder.HasNoKey().ToView("weapon_ammunition_compatibility");
        
        builder.Property(e => e.AmmunitionType).HasMaxLength(50);
        builder.Property(e => e.WeaponName).HasMaxLength(100);
    }
}