using System.Diagnostics;

namespace ArsenalManager.UI.MVVM.ViewModels;

public class AboutViewModel : ObservableObject
{
    public RelayCommand<object> GithubPageCommand { get; }
    public RelayCommand<object> GithubProfileCommand { get; }
    public RelayCommand<object> LinkedinCommand { get; }

    public AboutViewModel()
    {
        GithubPageCommand = new RelayCommand<object>(_ => FollowGithubPageLink());
        GithubProfileCommand = new RelayCommand<object>(_ => FollowGithubProfileLink());
        LinkedinCommand = new RelayCommand<object>(_ => FollowLinkedinLink());
    }
    
    private void FollowGithubPageLink()
    {
        Process.Start(new ProcessStartInfo("https://github.com/anticlown322/ArsenalManager") 
            { UseShellExecute = true });
    }

    private void FollowGithubProfileLink()
    {
        Process.Start(new ProcessStartInfo("https://github.com/anticlown322") 
            { UseShellExecute = true });
    }

    private void FollowLinkedinLink()
    {
        Process.Start(new ProcessStartInfo("https://www.linkedin.com/in/andreykaras/") 
            { UseShellExecute = true });
    }
}