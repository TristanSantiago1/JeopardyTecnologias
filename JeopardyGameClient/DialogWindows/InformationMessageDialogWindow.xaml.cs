using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para InformationMessageDialogWindow.xaml
    /// </summary>
    public  partial class InformationMessageDialogWindow : Window
    {
        public  InformationMessageDialogWindow(String windowTitle, String message, Window currentWindow)
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
