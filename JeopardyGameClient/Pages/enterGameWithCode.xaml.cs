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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para enterGameWithCode.xaml
    /// </summary>
    public partial class enterGameWithCode : Page
    {
        public enterGameWithCode()
        {
            InitializeComponent();
        }

        private void clicEnterCode(object sender, RoutedEventArgs e)
        {
            int codigoIngresado;

            if (int.TryParse(tbxCode.Text, out codigoIngresado))
            {
                LobbyPage lobbyPage = new LobbyPage(codigoIngresado);
                this.NavigationService.Navigate(lobbyPage);
            }
            else
            {
                MessageBox.Show("Ingresa un código de partida válido.");
            }
        }

        private void ClicClose(object sender, MouseButtonEventArgs e)
        {
            PrincipalPage pagePrincipal = new PrincipalPage();
            this.NavigationService.Navigate(pagePrincipal);
            NavigationService.RemoveBackEntry();
        }
    }
}
