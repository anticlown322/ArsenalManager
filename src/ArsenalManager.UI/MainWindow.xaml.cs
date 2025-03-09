using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace ArsenalManager.UI;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
    }
    
    private void DragWindow(object sender, MouseButtonEventArgs e)
    {
        if (e is { Source: Border, ChangedButton: MouseButton.Left })
        {
            DragMove();
        }
    }
}