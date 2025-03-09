using System.Windows;

namespace ArsenalManager.UI.MVVM.ViewModels;

public class MainViewModel : ObservableObject
{
    private AboutViewModel AboutVm { get; set; }
    private HelpViewModel HelpVm { get; set; }
    private ArsenalManagerViewModel ArsenalManagerVm { get; set; }

    public RelayCommand MinimizeWindowCommand { get; set; }
    public RelayCommand CloseWindowCommand { get; set; }
    
    public RelayCommand AboutViewCommand { get; set; }
    public RelayCommand HelpViewCommand { get; set; }
    public RelayCommand ArsenalManagerViewCommand { get; set; }

    private object _currentView;
    public object CurrentView
    {
        get => _currentView;
        set
        {
            _currentView = value;
            OnPropertyChanged();
        }
    }

    public MainViewModel()
    {
        AboutVm = new AboutViewModel();
        HelpVm = new HelpViewModel();
        ArsenalManagerVm = new ArsenalManagerViewModel();

        CurrentView = ArsenalManagerVm; 
        
        MinimizeWindowCommand = new RelayCommand(MinimizeWindow);
        CloseWindowCommand = new RelayCommand(CloseWindow);
        AboutViewCommand = new RelayCommand(obj => CurrentView = AboutVm );
        HelpViewCommand = new RelayCommand(obj => CurrentView = HelpVm );
        ArsenalManagerViewCommand = new RelayCommand(obj => CurrentView = ArsenalManagerVm );
    }
    
    void MinimizeWindow(object parameter)
    {
        if (parameter is Window window)
        {
            window.WindowState = WindowState.Minimized;
        }
    }

    void CloseWindow(object parameter)
    {
        if (parameter is Window window)
        {
            window.Close();
        }
    }
}