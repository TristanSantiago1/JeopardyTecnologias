using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ErrorMessageDW.xaml
    /// </summary>
    public partial class ErrorMessageDW : Window
    {
        public ErrorMessageDW(String windowTitle, String message)
        {
            InitializeComponent();
            txbErrorTitle.Text = windowTitle;
            txbErrorMessage.Text = message;
        }

        private void AcceptButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
