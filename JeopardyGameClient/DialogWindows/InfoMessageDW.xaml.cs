using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para InfoMessageDW.xaml
    /// </summary>
    public partial class InfoMessageDW : Window
    {
        public InfoMessageDW(String windowTitle, String message)
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
