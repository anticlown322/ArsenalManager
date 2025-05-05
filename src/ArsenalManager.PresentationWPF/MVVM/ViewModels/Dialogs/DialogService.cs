using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace ArsenalManager.PresentationWPF.MVVM.ViewModels.Dialogs;

public class DialogService : IDialogService
{
    public bool? ShowEditDialog(object item, Type itemType)
    {
        // Здесь можно реализовать диалог редактирования
        // Например, используя Window с динамически создаваемыми полями
        // или предопределенные формы для каждого типа
        
        // Временная реализация:
        var window = new Window
        {
            Title = $"Edit {itemType.Name}",
            Width = 400,
            Height = 600,
            WindowStartupLocation = WindowStartupLocation.CenterScreen
        };

        var stackPanel = new StackPanel();
        
        foreach (var prop in itemType.GetProperties())
        {
            var label = new Label { Content = prop.Name };
            var textBox = new TextBox();
            
            // Привязка значения
            var binding = new Binding(prop.Name)
            {
                Source = item,
                Mode = BindingMode.TwoWay,
                UpdateSourceTrigger = UpdateSourceTrigger.PropertyChanged
            };
            
            textBox.SetBinding(TextBox.TextProperty, binding);
            
            stackPanel.Children.Add(label);
            stackPanel.Children.Add(textBox);
        }

        var buttonPanel = new StackPanel { Orientation = Orientation.Horizontal };
        var okButton = new Button { Content = "OK", IsDefault = true };
        var cancelButton = new Button { Content = "Cancel", IsCancel = true };
        
        okButton.Click += (s, e) => { window.DialogResult = true; window.Close(); };
        cancelButton.Click += (s, e) => { window.DialogResult = false; window.Close(); };
        
        buttonPanel.Children.Add(okButton);
        buttonPanel.Children.Add(cancelButton);
        stackPanel.Children.Add(buttonPanel);
        
        window.Content = stackPanel;
        return window.ShowDialog();
    }

    public bool ShowConfirmationDialog(string title, string message)
    {
        return MessageBox.Show(message, title, MessageBoxButton.YesNo) == MessageBoxResult.Yes;
    }
}