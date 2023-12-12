using JeopardyGame.Views;
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
    /// Lógica de interacción para PrincipalPage.xaml
    /// </summary>
    public partial class PrincipalPage : Page
    {
        public PrincipalPage()
        {
            InitializeComponent();
        }

        private void CLickButtonLogin(object sender, RoutedEventArgs e)
        {
            LogInUser logInPage = new LogInUser();
            this.NavigationService.Navigate(logInPage);
            NavigationService.RemoveBackEntry();
        }

        private void CLickButtonInvite(object sender, RoutedEventArgs e)
        {

            Views.EnterWithGameCode codeWindow = new Views.EnterWithGameCode();
            codeWindow.WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            codeWindow.Show();
            enterGameWithCode codePage = new enterGameWithCode(Window.GetWindow(this));
            codeWindow.contentFrame.NavigationService.Navigate(codePage);
        }
    }
}
