using System.Windows;

namespace ArsenalManager.PresentationWPF.MVVM.ViewModels;

public class MainViewModel : ObservableObject
{
    private readonly AboutViewModel _aboutVm;
    private readonly HelpViewModel _helpVm;
    private readonly ArsenalManagerViewModel _arsenalManagerVm;

    private object _currentView;
    public object CurrentView
    {
        get => _currentView;
        set => SetField(ref _currentView, value);
    }
    
    public RelayCommand<Window> MinimizeWindowCommand { get; }
    public RelayCommand<Window> CloseWindowCommand { get; }
    public RelayCommand<object> AboutViewCommand { get; }
    public RelayCommand<object> HelpViewCommand { get; }
    public RelayCommand<object> ArsenalManagerViewCommand { get; }

    public MainViewModel(
        AboutViewModel aboutVm,
        HelpViewModel helpVm,
        ArsenalManagerViewModel arsenalManagerVm)
    {
        _aboutVm = aboutVm;
        _helpVm = helpVm;
        _arsenalManagerVm = arsenalManagerVm;

        CurrentView = _arsenalManagerVm;
        
        MinimizeWindowCommand = new RelayCommand<Window>(MinimizeWindow);
        CloseWindowCommand = new RelayCommand<Window>(CloseWindow);
        AboutViewCommand = new RelayCommand<object>(_ => CurrentView = _aboutVm);
        HelpViewCommand = new RelayCommand<object>(_ => CurrentView = _helpVm);
        ArsenalManagerViewCommand = new RelayCommand<object>(_ => CurrentView = _arsenalManagerVm);
    }

    private void MinimizeWindow(Window window)
    {
        window.WindowState = WindowState.Minimized;
    }

    private void CloseWindow(Window window)
    {
        window.Close();
    }
}