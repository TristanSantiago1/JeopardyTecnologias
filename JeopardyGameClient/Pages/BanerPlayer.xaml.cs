using JeopardyGame.DialogWindows;
using JeopardyGame.ServidorServiciosJeopardy;
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
    /// Lógica de interacción para BanerPlayer.xaml
    /// </summary>
    public partial class BanerPlayer : Page
    {
        private Dictionary<string, List<string>> playerBans;
        public BanerPlayer()
        {
            InitializeComponent();
        }

        private void clicConfirmBaner(object sender, RoutedEventArgs e)
        {
            
            
        }

        private void clicCancelBaner(object sender, RoutedEventArgs e)
        {
            FriendManager friendManagerPage = new FriendManager();
            this.NavigationService.Navigate(friendManagerPage);
            NavigationService.RemoveBackEntry();
        }
        
    }
}
