using System;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    /// <summary>
    /// Lógica de interacción para ConfirmationDW.xaml
    /// </summary>
    public partial class ConfirmationDW : Window
    {
        private Window windowOpened;
        private Window windowClosed;

        public ConfirmationDW(Window newNueva, Window oldWindow)
        {
            InitializeComponent();
            windowOpened = newNueva;
            windowClosed = oldWindow;
            
        }

        private void ClicAccept(object sender, RoutedEventArgs e)
        {            
            windowOpened.Show();
            windowClosed.Close();
            this.Close();
        }

        private void ClicCancell(object sender, RoutedEventArgs e)
        {
            this.Close();   
        }
    }
}
