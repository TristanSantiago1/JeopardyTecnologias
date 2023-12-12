using JeopardyGame.DialogWindows;
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
        private Window mainMenu; 
        public enterGameWithCode(Window mainMenu)
        {
            InitializeComponent();
            this.mainMenu = mainMenu;
            tbxCode.MaxLength = 10;
        }

        private void clickEnterLobbyWithCode(object sender, RoutedEventArgs e)
        {
            int enteredCode;
            if (int.TryParse(tbxCode.Text, out enteredCode))
            {
                Views.PrincipalWindow gameWindow = new Views.PrincipalWindow();
                gameWindow.Show();
                LobbyPage lobbyPage = new LobbyPage(enteredCode);
                gameWindow.contentFrame.NavigationService.Navigate(lobbyPage);
                mainMenu.Close();
                Window.GetWindow(this).Close();
            }
            else
            {
                new ErrorMessageDialogWindow("ERROR", "Ingresa un codigo valido", Application.Current.MainWindow);
            }
        }

        private void ClickClose(object sender, MouseButtonEventArgs e)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            if (userSingleton.proxyForAvailability == null)
            {
                PrincipalPage pagePrincipal = new PrincipalPage();
                this.NavigationService.Navigate(pagePrincipal);
                NavigationService.RemoveBackEntry();
            }
            else
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
                NavigationService.RemoveBackEntry();
            }
        }
    
    }
}
