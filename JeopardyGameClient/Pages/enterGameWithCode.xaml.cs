using JeopardyGame.DialogWindows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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

using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandler = JeopardyGame.Exceptions.ExceptionHandler;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para enterGameWithCode.xaml
    /// </summary>
    public partial class enterGameWithCode : Page
    {
        private Window mainMenu;
        private Window dialogMessage;

        public enterGameWithCode(Window mainMenu)
        {
            InitializeComponent();
            this.mainMenu = mainMenu;
            tbxCode.MaxLength = 10;
        }

        private void clickEnterLobbyWithCode(object sender, RoutedEventArgs e)
        {
            int enteredCode;
            try
            {
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
                    new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblnvalidCode, Application.Current.MainWindow);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        private void ClickClose(object sender, MouseButtonEventArgs e)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            if (userSingleton.proxyForAvailability == null)
            {
                UserRegister userRegistrer = new UserRegister();
                this.NavigationService.Navigate(userRegistrer);
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
