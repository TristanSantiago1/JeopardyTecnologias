using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
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
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para enterGameWithCode.xaml
    /// </summary>
    public partial class enterGameWithCode : Page, ICheckUserLivingCallback
    {
        private Window mainMenu;
        private Window dialogMessage;
        UserSingleton userSingleton = UserSingleton.GetMainUser();
        private UserPOJO userForGuest;
        int idUser = -1;
        private readonly int ROOMCODE_IS_FULL = -1;
        private readonly int ROOMCODE_DOES_NOT_EXIST = 0;
        private readonly int SUCCESFUL = 1;

        public enterGameWithCode(Window mainMenu, bool isGuest)
        {
            InitializeComponent();
            this.mainMenu = mainMenu;
            tbxCode.MaxLength = 10;
            if (!isGuest)
            {                
                idUser = userSingleton.IdUser;
            }
        }

        private void ClickEnterLobbyWithCode(object sender, RoutedEventArgs e)
        {
            int enteredCode;
            if (int.TryParse(tbxCode.Text, out enteredCode))
            {
                try
                {
                    LobbyCodeAuthenticationClient codeAuthenticationProxy = new LobbyCodeAuthenticationClient();
                    GenericClassOfint isRoomActive = codeAuthenticationProxy.VerifyRoomCodeExist(enteredCode, idUser);
                    if (isRoomActive.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || isRoomActive.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                    {
                        if(isRoomActive.ObjectSaved == SUCCESFUL)
                        {
                            bool success = true;
                            if (idUser == -1)
                            {
                                success = GetPlayerAndUserInformation();
                                success = SubscribeToLivingChannel();
                            }
                            if (success)
                            {
                                GotoLobbyPage(enteredCode);
                            }
                        }
                        else if(isRoomActive.ObjectSaved == ROOMCODE_IS_FULL)
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.LobbyIsFull, Application.Current.MainWindow);
                        }
                        else if((isRoomActive.ObjectSaved == ROOMCODE_DOES_NOT_EXIST))
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.LobbyNotExist, Application.Current.MainWindow);
                        }
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                }
                catch (TimeoutException ex)
                {
                    ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
                }
                   
            }
            else
            {
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblnvalidCode, Application.Current.MainWindow);
            }         
        }

        private bool GetPlayerAndUserInformation()
        {
            bool isPlayerGuestActive = false;
            try
            {
                GuestPlayerManagerClient guestPlayerManagerProxy = new GuestPlayerManagerClient();
                var userGuest = guestPlayerManagerProxy.CreateUserForGuest();
                if (userGuest.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    userForGuest = userGuest.ObjectSaved;
                    ConsultUserInformationClient consultUserInformationProxy = new();                    
                    var playerGuest = consultUserInformationProxy.ConsultPlayerByIdUser(userGuest.ObjectSaved.IdUser);
                    if (playerGuest.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        UserSingleton.CleanSingleton();
                        UserSingleton.GetMainUser(userGuest.ObjectSaved, playerGuest.ObjectSaved);
                        isPlayerGuestActive = true;
                    }
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
            return isPlayerGuestActive;
        }

        private bool SubscribeToLivingChannel()
        {
            try
            {
                InstanceContext context = new(this);
                CheckUserLivingClient checkUserLivingClient = new(context);
                int success = checkUserLivingClient.SubscribeToICheckUserLiving(userForGuest);
                if(success == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (EndpointNotFoundException ex)
            {
                throw ex;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                throw ex;
            }
            catch (TimeoutException ex)
            {
                throw ex;
            }
        }


        private void GotoLobbyPage(int enteredCode)
        {
            Views.PrincipalWindow gameWindow = new Views.PrincipalWindow();
            gameWindow.Show();
            LobbyPage lobbyPage = new LobbyPage(enteredCode);
            gameWindow.contentFrame.NavigationService.Navigate(lobbyPage);
            mainMenu.Close();
            Window.GetWindow(this).Close();
        }

        private void ClickClose(object sender, MouseButtonEventArgs e)
        {
            int GUST_STATE = 3;
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            if (userSingleton.IdState == GUST_STATE)
            {
                UserRegister userRegister = new UserRegister();
                this.NavigationService.Navigate(userRegister);
                NavigationService.RemoveBackEntry();
            }
            else
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
                NavigationService.RemoveBackEntry();
            }
        }

        public bool IsClientActive()
        {
            return ((ICheckUserLivingCallback)userSingleton).IsClientActive();
        }
    }
}
