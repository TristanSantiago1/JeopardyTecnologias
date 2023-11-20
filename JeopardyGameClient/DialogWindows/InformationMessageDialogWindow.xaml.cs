using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para InformationMessageDialogWindow.xaml
    /// </summary>
    public  partial class InformationMessageDialogWindow : Window
    {
        public  InformationMessageDialogWindow(String windowTitle, String message, Window currentPage)
        {
            InitializeComponent();
            txbErrorTitle.Text = windowTitle;
            txbErrorMessage.Text = message;
            ShowInformationMessage(currentPage);
        }

        private void ClickAcceptButton(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ShowInformationMessage(Window currentPage)
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
