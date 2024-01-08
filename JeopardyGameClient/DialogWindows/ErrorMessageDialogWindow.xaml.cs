using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ErrorMessageDialogWindow.xaml
    /// </summary>
    public partial class ErrorMessageDialogWindow : Window
    {
        public ErrorMessageDialogWindow(String windowTitle, String message, Window currentWindow)
        {
            InitializeComponent();
            txbErrorTitle.Text = windowTitle;
            txbErrorMessage.Text = message;
        }

        private void ClickAcceptButton(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

    }
}
