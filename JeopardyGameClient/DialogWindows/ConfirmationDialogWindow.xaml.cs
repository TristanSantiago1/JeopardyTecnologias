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
        public bool CloseWindow { get; private set; }


        public ConfirmationDialogWindow(String title, String message, Window currentWindow)
        {
            InitializeComponent();
            txbErrorTitle.Text = title;
            txbErrorMessage.Text = message; 
            CloseWindow = false; 
        }


        private void ClickAccept(object sender, RoutedEventArgs e)
        {
            CloseWindow = true;
            this.Close();
        }

        private void ClickCancel(object sender, RoutedEventArgs e)
        {
            CloseWindow = false;
            this.Close();   
        }
    }
}
