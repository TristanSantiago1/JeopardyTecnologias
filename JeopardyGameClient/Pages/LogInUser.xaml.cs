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
using Button = System.Windows.Controls.Button;
using System.Net.Sockets;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : System.Windows.Controls.Page, ICheckUserLivingServiceCallback
    {
        private const int RIGTH_CREDENTIALS = 1;
        private const int WRONG_CREDENTIALS = 0;
        private UserSingleton userSingleton;

        public LogInUser()
        {
            InitializeComponent();
            txbUserNameLogIn.MaxLength = 15;
            pssPasswordLogIn.MaxLength = 30;
        }

        private void ClickDoLogIn(object sender, RoutedEventArgs e)
        {
            if (CheckEmptyFields())
            {
                UserValidate userValidate = new UserValidate();
                userValidate.UserName = txbUserNameLogIn.Text.Trim();
                userValidate.Password = EncryptionClass.EncryptPassword(pssPasswordLogIn.Password.Trim());
                try
                {
                    LogInVerificationClient logInVerificationProxy = new LogInVerificationClient();
                    var result = logInVerificationProxy.ValidateCredentials(userValidate);
                    if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || result.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                    {

                        if (result.ObjectSaved == RIGTH_CREDENTIALS)
                        {
                            ValidateOnlyOneUser(userValidate);
                        }
                        else if (result.ObjectSaved == WRONG_CREDENTIALS)
                        {
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblinvalidCredentials, Application.Current.MainWindow, DialogWindowManager.ERROR);
                        }
                        else
                        {
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblComunicationException, Application.Current.MainWindow, DialogWindowManager.ERROR);
                        }
                    }
                    else 
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.MessageSQLException, Application.Current.MainWindow, DialogWindowManager.ERROR);                        
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
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblWithoutConection);
                }
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblEndPointNotFound);
                }
            }
        }

        private void ValidateOnlyOneUser(UserValidate userValidate)
        {
            try
            {
                LogInVerificationClient logInVerificationProxy = new LogInVerificationClient();
                ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                var userConsulted = consultInformationProxy.ConsultUserByUserName(userValidate.UserName);
                var isAlreadyConnected = logInVerificationProxy.ValidateThereIsOnlyOneAActiveAccount(userConsulted.ObjectSaved.UserName);
                logInVerificationProxy.Close();
                if (isAlreadyConnected == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    DoLogin(userValidate.UserName);
                }
                else if (isAlreadyConnected != ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblLogInExist, Application.Current.MainWindow, DialogWindowManager.ERROR);
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
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
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
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblUserBanner, Application.Current.MainWindow, DialogWindowManager.ERROR);
                            UserSingleton.CleanSingleton();
                        }
                        else if (SubscribeToLivingChannel(currentUser.ObjectSaved) == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            InstanceSingleton(currentUser.ObjectSaved, currentPlayer.ObjectSaved);
                            GoToMainMenu();
                        }
                        else
                        {
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailRegistryToCallBack, Application.Current.MainWindow, DialogWindowManager.ERROR);
                            UserSingleton.CleanSingleton();
                        }
                    }
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.MessageSQLException, Application.Current.MainWindow, DialogWindowManager.ERROR);
                    }
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.MessageSQLException, Application.Current.MainWindow, DialogWindowManager.ERROR);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex,ExceptionDictionary.ERROR); 
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new CommunicationObjectFaultedException();
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new TimeoutException();
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new CommunicationException();
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new SocketException();
            }
        }

        private int SubscribeToLivingChannel(UserPojo user)
        {
            try
            {
                InstanceContext context = new(this);
                CheckUserLivingServiceClient checkUserLivingClient = new(context);
                return checkUserLivingClient.SubscribeToICheckUserLiving(user);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new CommunicationObjectFaultedException();
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new TimeoutException();
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new CommunicationException();
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                throw new SocketException();
            }
        }  

        private void InstanceSingleton(UserPojo currentUser, PlayerPojo currenPlayer)
        {
            userSingleton = UserSingleton.GetMainUser(currentUser, currenPlayer);
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

       

        public bool IsClientActive()
        {
            return ((ICheckUserLivingServiceCallback)userSingleton).IsClientActive();
        }
     
        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow, DialogWindowManager.ERROR);
        }

        private void LanguageButtonClick(object sender, RoutedEventArgs e)
        {
            LanguageOptions.Visibility = Visibility.Visible;
        }

        private void SelectLanguage(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.Button selectedButton = sender as Button;
            string selectedLanguage = selectedButton.Tag.ToString();

            App.ChangeLanguage(selectedLanguage);
            RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
            key.SetValue("SelectedLanguage", selectedLanguage);
            key.Close();
            UpdateInterfaceResources();
            LanguageButton.Content = selectedButton.Content;
            LanguageOptions.Visibility = Visibility.Collapsed;
        }

        private void UpdateInterfaceResources()
        {
            if (lblUserNameLogIn != null)
                lblUserNameLogIn.Content = Properties.Resources.lblUserNameLogIn;

            if (lblPasswordLogIn != null)
                lblPasswordLogIn.Content = Properties.Resources.lblPasswordLogIn;

            if (btnEnter != null)
                btnEnter.Content = Properties.Resources.btnEnter;

            if (btnRegistrer != null)
                btnRegistrer.Content = Properties.Resources.btnRegistrer;
        }

    }
}




