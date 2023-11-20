using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ConfirmationDialogWindow.xaml
    /// </summary>
    public partial class ConfirmationDialogWindow : Window
    {
        public bool closeWindow ;
        public ConfirmationDialogWindow(String title, String message, Window currentPage)
        {
            InitializeComponent();
            txbErrorTitle.Text = title;
            txbErrorMessage.Text = message; 
            closeWindow = false;
            ShowConfirmationMessage(currentPage);           
        }

        private void ClickAccept(object sender, RoutedEventArgs e)
        {
            closeWindow = true;
            this.Close();
        }

        private void ClickCancel(object sender, RoutedEventArgs e)
        {
            this.Close();   
        }
        private void ShowConfirmationMessage(Window currentPage)
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
