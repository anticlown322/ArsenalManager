namespace ArsenalManager.Domain.Utility;

[AttributeUsage(AttributeTargets.Property)]
public class DisplayNameAttribute : Attribute
{
    public string Name { get; }
    public DisplayNameAttribute(string name) => Name = name;
}