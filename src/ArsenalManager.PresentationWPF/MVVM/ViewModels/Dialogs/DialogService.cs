using System.ComponentModel;
using System.Globalization;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using DisplayNameAttribute = ArsenalManager.Domain.Utility.DisplayNameAttribute;

namespace ArsenalManager.PresentationWPF.MVVM.ViewModels.Dialogs;

public class DialogService : IDialogService
{
    public bool? ShowEditDialog(object item, Type itemType)
    {
        var window = new Window
        {
            Title = $"Edit {itemType.Name}",
            Width = 400,
            MinHeight = 200,
            MaxHeight = 600,
            SizeToContent = SizeToContent.Height,
            WindowStartupLocation = WindowStartupLocation.CenterScreen
        };

        var grid = new Grid { Margin = new Thickness(10) };
        grid.ColumnDefinitions.Add(new ColumnDefinition { Width = GridLength.Auto });
        grid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

        int rowIndex = 0;

        foreach (var prop in itemType.GetProperties())
        {
            if (ShouldSkipProperty(prop))
                continue;

            grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });

            var displayName = GetDisplayName(prop);
            var label = new Label
            {
                Content = displayName,
                Margin = new Thickness(0, 5, 5, 5),
                VerticalAlignment = VerticalAlignment.Center
            };
            Grid.SetRow(label, rowIndex);
            Grid.SetColumn(label, 0);

            var control = CreateControlForProperty(prop, item);
            Grid.SetRow(control, rowIndex);
            Grid.SetColumn(control, 1);

            grid.Children.Add(label);
            grid.Children.Add(control);

            rowIndex++;
        }

        if (rowIndex == 0)
        {
            window.Content = new TextBlock { Text = "No editable properties found", Margin = new Thickness(10) };
        }
        else
        {
            grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
            var buttonPanel = CreateDialogButtons(window);
            Grid.SetRow(buttonPanel, rowIndex);
            Grid.SetColumnSpan(buttonPanel, 2);
            grid.Children.Add(buttonPanel);

            window.Content = grid;
        }

        return window.ShowDialog();
    }

    private bool ShouldSkipProperty(PropertyInfo prop)
    {
        return prop.GetGetMethod()?.IsVirtual == true ||
               prop.GetCustomAttribute<BrowsableAttribute>()?.Browsable == false ||
               typeof(System.Collections.IEnumerable).IsAssignableFrom(prop.PropertyType) &&
               prop.PropertyType != typeof(string);
    }

    private UIElement CreateControlForProperty(PropertyInfo prop, object item)
    {
        var control = new TextBox
        {
            Margin = new Thickness(0, 5, 0, 5)
        };

        var binding = new Binding(prop.Name)
        {
            Source = item,
            Mode = BindingMode.TwoWay,
            UpdateSourceTrigger = UpdateSourceTrigger.PropertyChanged
        };

        if (prop.PropertyType == typeof(int) || prop.PropertyType == typeof(int?))
        {
            binding.ValidationRules.Add(new NumericValidationRule());
        }
        else if (prop.PropertyType == typeof(float) || prop.PropertyType == typeof(float?))
        {
            binding.ValidationRules.Add(new FloatValidationRule());
            binding.StringFormat = "F2";
        }

        control.SetBinding(TextBox.TextProperty, binding);
        return control;
    }

    private StackPanel CreateDialogButtons(Window window)
    {
        var buttonPanel = new StackPanel
        {
            Orientation = Orientation.Horizontal,
            HorizontalAlignment = HorizontalAlignment.Right,
            Margin = new Thickness(0, 10, 0, 0)
        };

        var okButton = new Button { Content = "OK", IsDefault = true, Width = 80, Margin = new Thickness(5) };
        var cancelButton = new Button { Content = "Cancel", IsCancel = true, Width = 80, Margin = new Thickness(5) };

        okButton.Click += (s, e) =>
        {
            window.DialogResult = true;
            window.Close();
        };
        cancelButton.Click += (s, e) =>
        {
            window.DialogResult = false;
            window.Close();
        };

        buttonPanel.Children.Add(okButton);
        buttonPanel.Children.Add(cancelButton);
        return buttonPanel;
    }

    public int? ShowInputDialog(string title, string prompt)
    {
        var window = new Window
        {
            Title = title,
            Width = 300,
            Height = 150,
            WindowStartupLocation = WindowStartupLocation.CenterScreen,
            SizeToContent = SizeToContent.Height
        };

        var grid = new Grid { Margin = new Thickness(10) };
        grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
        grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
        grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });

        var label = new Label
        {
            Content = prompt,
            Margin = new Thickness(0, 0, 0, 5)
        };
        Grid.SetRow(label, 0);
        Grid.SetColumnSpan(label, 2);

        var textBox = new TextBox
        {
            Margin = new Thickness(0, 0, 0, 10)
        };
        Grid.SetRow(textBox, 1);
        Grid.SetColumnSpan(textBox, 2);

        var buttonPanel = new StackPanel
        {
            Orientation = Orientation.Horizontal,
            HorizontalAlignment = HorizontalAlignment.Right,
        };

        var okButton = new Button { Content = "OK", IsDefault = true, Width = 80, Margin = new Thickness(5) };
        var cancelButton = new Button { Content = "Cancel", IsCancel = true, Width = 80, Margin = new Thickness(5) };

        int? result = null;

        okButton.Click += (s, e) =>
        {
            if (int.TryParse(textBox.Text, out int value))
                result = value;
            window.DialogResult = result != null;
        };

        buttonPanel.Children.Add(okButton);
        buttonPanel.Children.Add(cancelButton);

        grid.Children.Add(label);
        grid.Children.Add(textBox);
        grid.Children.Add(buttonPanel);

        window.Content = grid;
        return window.ShowDialog() == true ? result : null;
    }

    private string GetDisplayName(PropertyInfo property)
    {
        return property.GetCustomAttribute<DisplayNameAttribute>()?.Name ?? property.Name;
    }

    public bool ShowConfirmationDialog(string title, string message)
    {
        return MessageBox.Show(message, title, MessageBoxButton.YesNo) == MessageBoxResult.Yes;
    }

    public OrderParameters ShowOrderParametersDialog()
    {
        var window = new Window
        {
            Title = "Order Parameters",
            Width = 350,
            Height = 250,
            WindowStartupLocation = WindowStartupLocation.CenterScreen
        };

        var grid = new Grid { Margin = new Thickness(10) };
        grid.ColumnDefinitions.Add(new ColumnDefinition { Width = GridLength.Auto });
        grid.ColumnDefinitions.Add(new ColumnDefinition());
        grid.RowDefinitions.Add(new RowDefinition());
        grid.RowDefinitions.Add(new RowDefinition());
        grid.RowDefinitions.Add(new RowDefinition());
        grid.RowDefinitions.Add(new RowDefinition());
        grid.RowDefinitions.Add(new RowDefinition());

        var parameters = new OrderParameters();
        var resourceIdBox = new TextBox();
        var quantityBox = new TextBox();
        var supplierIdBox = new TextBox();
        var personnelIdBox = new TextBox();

        AddLabelAndTextBox(grid, "Resource ID:", resourceIdBox, 0);
        AddLabelAndTextBox(grid, "Quantity:", quantityBox, 1);
        AddLabelAndTextBox(grid, "Supplier ID:", supplierIdBox, 2);
        AddLabelAndTextBox(grid, "Personnel ID:", personnelIdBox, 3);

        var buttonPanel = new StackPanel
        {
            Orientation = Orientation.Horizontal,
            HorizontalAlignment = HorizontalAlignment.Right,
            Margin = new Thickness(0, 10, 0, 0)
        };
        Grid.SetRow(buttonPanel, 4);
        Grid.SetColumnSpan(buttonPanel, 2);

        var okButton = new Button { Content = "OK", IsDefault = true, Width = 80, Margin = new Thickness(5) };
        var cancelButton = new Button { Content = "Cancel", IsCancel = true, Width = 80, Margin = new Thickness(5) };

        okButton.Click += (s, e) =>
        {
            if (int.TryParse(resourceIdBox.Text, out int resourceId) &&
                int.TryParse(quantityBox.Text, out int quantity) &&
                int.TryParse(supplierIdBox.Text, out int supplierId) &&
                int.TryParse(personnelIdBox.Text, out int personnelId))
            {
                parameters.ResourceId = resourceId;
                parameters.Quantity = quantity;
                parameters.SupplierId = supplierId;
                parameters.PersonnelId = personnelId;
                window.DialogResult = true;
            }
            else
            {
                MessageBox.Show("Please enter valid numbers");
            }
        };

        buttonPanel.Children.Add(okButton);
        buttonPanel.Children.Add(cancelButton);
        grid.Children.Add(buttonPanel);

        window.Content = grid;
        return window.ShowDialog() == true ? parameters : null;
    }

    private void AddLabelAndTextBox(Grid grid, string labelText, TextBox textBox, int row)
    {
        var label = new Label { Content = labelText, VerticalAlignment = VerticalAlignment.Center };
        Grid.SetColumn(label, 0);
        Grid.SetRow(label, row);

        textBox.VerticalAlignment = VerticalAlignment.Center;
        textBox.Margin = new Thickness(5, 0, 0, 0);
        Grid.SetColumn(textBox, 1);
        Grid.SetRow(textBox, row);

        grid.Children.Add(label);
        grid.Children.Add(textBox);
    }
    
    public class NumericValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if (value == null || string.IsNullOrWhiteSpace(value.ToString()))
                return new ValidationResult(true, null);

            return int.TryParse(value.ToString(), out _) 
                ? new ValidationResult(true, null) 
                : new ValidationResult(false, "Please enter a valid integer");
        }
    }

    public class FloatValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if (value == null || string.IsNullOrWhiteSpace(value.ToString()))
                return new ValidationResult(true, null);

            return float.TryParse(value.ToString(), out _) 
                ? new ValidationResult(true, null) 
                : new ValidationResult(false, "Please enter a valid number");
        }
    }
}