﻿namespace ArsenalManager.PresentationWPF.MVVM.ViewModels.Dialogs;

public interface IDialogService
{
    bool? ShowEditDialog(object item, Type itemType);
    bool ShowConfirmationDialog(string title, string message);
    int? ShowInputDialog(string title, string prompt);
    OrderParameters ShowOrderParametersDialog();
}