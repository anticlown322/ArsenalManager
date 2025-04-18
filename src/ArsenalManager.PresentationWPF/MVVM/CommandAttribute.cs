namespace ArsenalManager.PresentationWPF.MVVM;

[AttributeUsage(AttributeTargets.Method)]
public class CommandAttribute : Attribute
{
    public string CommandName { get; }

    public CommandAttribute(string commandName = null)
    {
        CommandName = commandName;
    }
}