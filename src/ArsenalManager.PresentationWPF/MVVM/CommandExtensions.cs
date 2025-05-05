using System.Windows.Input;

namespace ArsenalManager.PresentationWPF.MVVM;

public static class CommandExtensions
{
    public static ICommand CreateCommand(Action execute, Func<bool> canExecute = null)
    {
        return new RelayCommand(execute, canExecute);
    }

    private class RelayCommand : ICommand
    {
        private readonly Action _execute;
        private readonly Func<bool> _canExecute;

        public event EventHandler CanExecuteChanged
        {
            add => CommandManager.RequerySuggested += value;
            remove => CommandManager.RequerySuggested -= value;
        }

        public RelayCommand(Action execute, Func<bool> canExecute = null)
        {
            _execute = execute ?? throw new ArgumentNullException(nameof(execute));
            _canExecute = canExecute;
        }

        public bool CanExecute(object parameter) => _canExecute?.Invoke() ?? true;

        public void Execute(object parameter) => _execute();
    }
}