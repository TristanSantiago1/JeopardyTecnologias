using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
