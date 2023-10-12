using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ConfirmationDW.xaml
    /// </summary>
    public partial class ConfirmationDW : Window
    {
        public bool closeWindow ;
        public ConfirmationDW(String title, String message)
        {
            InitializeComponent();
            txbErrorTitle.Text = title;
            txbErrorMessage.Text = message; 
            closeWindow = false;

            
        }

        private void ClicAccept(object sender, RoutedEventArgs e)
        {
            closeWindow = true;
            this.Close();
        }

        private void ClicCancell(object sender, RoutedEventArgs e)
        {
            this.Close();   
        }
    }
}
