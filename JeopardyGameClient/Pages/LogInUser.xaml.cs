using JeopardyGame.Views;
using Microsoft.Win32;
using System;
using System.Windows;
using System.Windows.Controls;
using static System.Windows.Forms.AxHost;
using System.Xml.Linq;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.ServiceModel;
using JeopardyGame.ServidorServiciosJeopardy;
using System.Collections.Generic;
using JeopardyGame.Helpers;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Windows.Input;
using System.Windows.Forms;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;
using JeopardyGame.DialogWindows;
using Application = System.Windows.Application;
using JeopardyGame.Exceptions;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;
using Window = System.Windows.Window;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : System.Windows.Controls.Page, INotifyUserAvailabilityCallback
    {
        private static ActiveFriends activeFriendsInstance = new ActiveFriends();
        private const int RIGTH_CREDENTIALS = 1;
        private const int WRONG_CREDENTIALS = 0;
        private Window dialogMessage;
        public static ActiveFriends ActiveFriendsInstance { get => activeFriendsInstance; set => activeFriendsInstance = value; }

        public LogInUser()
        {

            InitializeComponent();
            PrepareLogInWindow();
            txbUserNameLogIn.MaxLength = 15;
            pssPasswordLogIn.MaxLength = 30;
        }

        private void PrepareLogInWindow()
        {
            RegistryKey key = Registry.CurrentUser.OpenSubKey("Software\\JeopardyGame");
            if (key != null)
            {
                string selectedLanguage = key.GetValue("SelectedLanguage") as string;
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(selectedLanguage);
                foreach (ComboBoxItem item in LanguajeComboBox.Items)
                {
                    if (item.Tag.ToString() == selectedLanguage)
                    {
                        LanguajeComboBox.SelectedItem = item;
                        break;
                    }
                }
            }
        }

        private void ClickDoLogIn(object sender, RoutedEventArgs e)
        {
            if (CheckEmptyFields())
            {
                UserValidate userValidate = new UserValidate();
                userValidate.UserName = txbUserNameLogIn.Text;
                userValidate.Password = pssPasswordLogIn.Password;
                UserSingleton mainUser = UserSingleton.GetMainUser();
                try
                {
                    LogInVerificationClient logInVerificationProxy = new LogInVerificationClient();
                    var result = logInVerificationProxy.ValidateCredentials(userValidate);                    
                    if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || result.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                    {
                        
                        if (result.ObjectSaved == RIGTH_CREDENTIALS)
                        {
                            ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                            var userConsulted = consultInformationProxy.ConsultUserByUserName(userValidate.UserName);
                            var isAlreadyConnected = logInVerificationProxy.ValidateThereIsOnlyOneAActiveAccount(userConsulted.ObjectSaved.IdUser);
                            logInVerificationProxy.Close();
                            if(isAlreadyConnected == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                DoLogin(userValidate.UserName);
                            }
                            else if (isAlreadyConnected != ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                CleanFields();
                                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblLogInExist, Application.Current.MainWindow);
                            }
                        }
                        else if (result.ObjectSaved == WRONG_CREDENTIALS)
                        {
                            CleanFields();
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblinvalidCredentials, Application.Current.MainWindow);
                        }
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblEndPointNotFound);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblTimeException);
                }
            }
        }

        private bool CheckEmptyFields()
        {
            bool answer = true;
            if (string.IsNullOrEmpty(txbUserNameLogIn.Text))
            {
                LblWrongUserName.Content = Properties.Resources.LblWrongUserName;
                LblWrongUserName.Visibility = Visibility.Visible;
                answer = false;
            }
            else
            {                
                LblWrongUserName.Visibility = Visibility.Collapsed;
            }

            if (string.IsNullOrEmpty(pssPasswordLogIn.Password))
            {
                lblPasswordWrong.Content = Properties.Resources.lblPasswordWrong;
                lblPasswordWrong.Visibility = Visibility.Visible;
                answer = false;
            }
            else
            {                
                lblPasswordWrong.Visibility = Visibility.Collapsed;
            }
            return answer;
        }

        private void DoLogin(String userName)
        {
            try
            {
                ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                var currentUser = consultInformationProxy.ConsultUserByUserName(userName);
                if (currentUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var currentPlayer = consultInformationProxy.ConsultPlayerByIdUser(currentUser.ObjectSaved.IdUser);
                    if (currentPlayer.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {

                        if (currentPlayer.ObjectSaved.NoReports >= 3)
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblUserBanner, Application.Current.MainWindow);
                            return;
                        }
                        InstanceSingleton(currentUser.ObjectSaved, currentPlayer.ObjectSaved, ObtainCallBackChannel());
                        NotifyAvailability();
                        GoToMainMenu();
                    }
                    else
                    {
                        CleanFields();
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                    }
                }
                else
                {
                    CleanFields();
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
            }
        }


        private NotifyUserAvailabilityClient ObtainCallBackChannel()
        {
            InstanceContext context = new InstanceContext(this);
            NotifyUserAvailabilityClient proxyChannelCallback = new NotifyUserAvailabilityClient(context);
            return proxyChannelCallback;
        }

        private void NotifyAvailability()
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            userSingleton.proxyForAvailability.PlayerIsAvailable(userSingleton.IdUser);
        }

        private void ClickSelectLanguage(object sender, SelectionChangedEventArgs e)
        {
            if (LanguajeComboBox.SelectedItem != null)
            {
                ComboBoxItem selectedItem = (ComboBoxItem)LanguajeComboBox.SelectedItem;
                string selectedLanguage = selectedItem.Tag.ToString();
                App.ChangeLanguage(selectedLanguage);
                RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
                key.SetValue("SelectedLanguage", selectedLanguage);
                key.Close();
                UpdateInterfaceResources(selectedLanguage);
            }
        }
        private void UpdateInterfaceResources(string selectedLanguage)
        {
            switch (selectedLanguage)
            {
                case "es-MX":
                    if (lblUserNameLogIn != null)
                        lblUserNameLogIn.Content = Properties.Resources.lblUserNameLogIn;

                    if (lblPasswordLogIn != null)
                        lblPasswordLogIn.Content = Properties.Resources.lblPasswordLogIn;

                    if (btnEnter != null)
                        btnEnter.Content = Properties.Resources.btnEnter;

                    if (btnRegistrer != null)
                        btnRegistrer.Content = Properties.Resources.btnRegistrer;
                    break;

                case "en-EU":
                default:
                    if (lblUserNameLogIn != null)
                        lblUserNameLogIn.Content = Properties.Resources.lblUserNameLogIn;

                    if (lblPasswordLogIn != null)
                        lblPasswordLogIn.Content = Properties.Resources.lblPasswordLogIn;

                    if (btnEnter != null)
                        btnEnter.Content = Properties.Resources.btnEnter;

                    if (btnRegistrer != null)
                        btnRegistrer.Content = Properties.Resources.btnRegistrer;
                    break;
            }
        }
        private void InstanceSingleton(UserPOJO currentUser, PlayerPOJO currenPlayer, NotifyUserAvailabilityClient connectionAvailabilityProxy)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            userSingleton.IdUser = currentUser.IdUser;
            userSingleton.Name = currentUser.Name;
            userSingleton.UserName = currentUser.UserName;
            userSingleton.Email = currentUser.EmailAddress;
            userSingleton.Password = currentUser.Password;
            userSingleton.IdPlayer = currenPlayer.IdPlayer;
            userSingleton.GeneralPoints = currenPlayer.GeneralPoints;
            userSingleton.NoReports = currenPlayer.NoReports;
            userSingleton.IdState = currenPlayer.IdState;
            userSingleton.IdCurrentAvatar = currenPlayer.IdActualAvatar;
            userSingleton.proxyForAvailability = connectionAvailabilityProxy;
        }

        private void GoToMainMenu()
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
        }

        private void CLickButtonRegister(object sender, RoutedEventArgs e)
        {
            UserRegister userRegistryPage = new UserRegister();
            this.NavigationService.Navigate(userRegistryPage);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSingOut(object sender, MouseButtonEventArgs e)
        {
            PrincipalPage principalPage = new PrincipalPage();
            this.NavigationService.Navigate(principalPage);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSeePassword(object sender, MouseButtonEventArgs e)
        {
            lblViewPassword.Content = pssPasswordLogIn.Password.ToString();
            pssPasswordLogIn.Visibility = Visibility.Collapsed;         
            lblViewPassword.Visibility = Visibility.Visible;
        }

        private void OverLeaveHidePassword(object sender, MouseEventArgs e)
        {
            if (lblViewPassword.IsVisible)
            {
                pssPasswordLogIn.Visibility = Visibility.Visible;
                pssPasswordLogIn.PasswordChar = '*';
                pssPasswordLogIn.Password = (string)lblViewPassword.Content;
                lblViewPassword.Visibility = Visibility.Collapsed;
            }            
        }

        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriendsInstance).ResponseOfPlayerAvailability(status, idFriend);         
        }

        private void BeginHeartBeat()
        {
            var heartbeatClient = new HeartBeatClient();
            try
            {
                var heartbeatTimer = new System.Threading.Timer(state => { heartbeatClient.Heartbeat(); }, null, TimeSpan.Zero, TimeSpan.FromSeconds(50));
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
            }
        }
        public void VerifyPlayerAvailability()
        {
            ((INotifyUserAvailabilityCallback)activeFriendsInstance).VerifyPlayerAvailability();
        }
        private void CleanFields()
        {
            txbUserNameLogIn.Text = string.Empty;
            pssPasswordLogIn.Password = string.Empty;
        }
        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            CleanFields();
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
        }
    }
}
    


