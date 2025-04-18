using System.Windows.Input;

namespace ArsenalManager.PresentationWPF.MVVM;

public static class CommandExtensions
{
    public static ICommand CreateCommand(Action execute, Func<bool> canExecute = null)
        => new RelayCommand(execute, canExecute);
    
    public static ICommand CreateCommand<T>(Action<T> execute, Func<T, bool> canExecute = null)
        => new RelayCommand<T>(execute, canExecute);
}