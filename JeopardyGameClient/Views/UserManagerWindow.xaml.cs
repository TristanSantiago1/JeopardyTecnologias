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

namespace JeopardyGame.Views
{
    /// <summary>
    /// Lógica de interacción para UserManagerWindow.xaml
    /// </summary>
    public partial class UserManagerWindow : Window
    {
        public UserManagerWindow()
        {
            InitializeComponent();
            CurrentPage.Navigate(new JeopardyGame.Pages.UserRegister());
           

            // Establecer las coordenadas para la posición de la ventana en el primer monitor
            this.HorizontalAlignment = HorizontalAlignment.Center;  // Posición horizontal en píxeles
            this.VerticalAlignment = VerticalAlignment.Top;
        }

        private void ClicExitWindow(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
