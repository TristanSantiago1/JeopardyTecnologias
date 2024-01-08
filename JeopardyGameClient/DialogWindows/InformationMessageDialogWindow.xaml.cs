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
           // ShowInformationMessage(currentWindow);
        }

        private void ClickAcceptButton(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ShowInformationMessage(Window currentWindow)
        {
            if (currentWindow != null)
            {
                double left = currentWindow.Left + (currentWindow.Width - this.Width) / 2;
                double top = currentWindow.Top + (currentWindow.Height - this.Height) / 2;
                this.Left = left;
                this.Top = top;
                this.VerticalAlignment = VerticalAlignment.Center;
                this.ShowDialog();
            }
        }

    }
}
