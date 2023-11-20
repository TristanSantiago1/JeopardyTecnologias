using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ErrorMessageDialogWindow.xaml
    /// </summary>
    public partial class ErrorMessageDialogWindow : Window
    {
        public ErrorMessageDialogWindow(String windowTitle, String message, Window currentPage)
        {
            InitializeComponent();
            txbErrorTitle.Text = windowTitle;
            txbErrorMessage.Text = message;
            ShowErrorMessage(currentPage);
        }

        private void ClickAcceptButton(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ShowErrorMessage(Window currentPage)
        {
            double left = currentPage.Left + (currentPage.Width - this.Width) / 2;
            double top = currentPage.Top + (currentPage.Height - this.Height) / 2;
            this.Left = left;
            this.Top = top;
            this.VerticalAlignment = VerticalAlignment.Center;
            this.ShowDialog();
        }
    }
}
