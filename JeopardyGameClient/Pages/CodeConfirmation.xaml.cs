using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.Remoting.Contexts;
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
using System.Windows.Threading;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;

namespace JeopardyGame.Pages
{
    public partial class CodeConfirmation : Page, ICheckUserLivingServiceCallback
    {
        private UserSingleton userSingleton = UserSingleton.GetMainUser();
        public const int NULL_INT_VALUE = 0;
        private DispatcherTimer timer;
        private int leftTime;
        private String password;
        private UserPojo userToSave;
        private bool isTimerExpired = false;

        public CodeConfirmation(UserPojo user)
        {

            InitializeComponent();
            this.userToSave = user;
            password = user.Password;
            txbCodeCreateAcc.MaxLength = 6;
            Loaded += LoadedPrepareWindow;
        }    

        private void LoadedPrepareWindow(object sender, RoutedEventArgs e)
        {
            RegistryWithTheDictionary();
            SentEmail();
            StartTimer();
        }

        private void RegistryWithTheDictionary()
        {
            try
            {
                UserCreateAccountCodeClient userCreateAccount = new();
                userCreateAccount.AddUserToConfirmationDictionary(userToSave);
                InstanceContext instanceContext = new InstanceContext(this);
                CheckUserLivingServiceClient checkUserLivingClient = new(instanceContext);
                var success = checkUserLivingClient.SubscribeToICheckUserLiving(userToSave);
                if (success != ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailRegistryToCallBack, Application.Current.MainWindow, DialogWindowManager.ERROR);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
        }

        private void StartTimer()
        {
            leftTime = 30;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += TickTimerResendCode;
            bttResendCode.IsEnabled = false;
            timer.Start();
        }

        private void TickTimerResendCode(object sender, EventArgs e)
        {
            if (leftTime > NULL_INT_VALUE)
            {
                leftTime--;
                lblResentCode.Content = Properties.Resources.lblResentCode + " " + leftTime;
                lblResentCode.Foreground = new SolidColorBrush(Colors.IndianRed);                
            }
            else
            {
                lblResentCode.Content = Properties.Resources.lblResentCode + " " + leftTime;
                lblResentCode.Foreground = new SolidColorBrush(Colors.ForestGreen);
                bttResendCode.IsEnabled = true;
                timer.Stop();
                isTimerExpired = true;
                UpdateLabelStyle();
            }
        }

        private void SentEmail()
        {
            try
            {
                EmailSenderManagerClient emailSender = new EmailSenderManagerClient();
                GenericClassOfint sentEmailSucc = emailSender.SentEmailConfirmationToCreateAccount(
                                  userToSave, Properties.Resources.EmailSubjectCode, Properties.Resources.EmailCodeDescrip);
                if (sentEmailSucc.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow, DialogWindowManager.ERROR);
                }
                if (sentEmailSucc.ObjectSaved == NULL_INT_VALUE)
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow, DialogWindowManager.ERROR);
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
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby);
            }
        }  

        private void ClickButtonSaveUser(object sender, RoutedEventArgs e)
        {
            try
            {
                UserCreateAccountCodeClient userCreateAccount = new();
                if (userCreateAccount.CheckCodeEntered(userToSave, txbCodeCreateAcc.Text.ToString().Trim()) == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    PrepareUserToBeSaved();
                    UserManagerClient userManagerProxy = new UserManagerClient();
                    GenericClassOfint userSaved = userManagerProxy.SaveUser(userToSave, txbCodeCreateAcc.Text.ToString().Trim());
                    if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        SetSingleton();
                        NotifyUserABoutNewPlayer();
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.txbInfoMessgSuccRegUser, Application.Current.MainWindow, DialogWindowManager.INFORMATION);                        
                        MainMenu mainMenu = new MainMenu();
                        this.NavigationService.Navigate(mainMenu);
                        NavigationService.RemoveBackEntry();
                    }
                    else
                    {
                        userToSave.Password = this.password;
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.txbErrorMessageRegisterUser, Application.Current.MainWindow, DialogWindowManager.ERROR);                        
                    }
                }
                else
                {
                    txbWrongCode.Visibility = Visibility.Visible;
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
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby);
            }
        }

        private void ClickResendCode(object sender, RoutedEventArgs e)
        {
            if (leftTime == NULL_INT_VALUE)
            {
                try
                {
                    UserCreateAccountCodeClient userCreateAccount = new();
                    if (userCreateAccount.ResendCode(userToSave) == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        SentEmail();
                        StartTimer();
                    }
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailRegistryToCallBack, Application.Current.MainWindow, DialogWindowManager.ERROR);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblEndPointNotFound);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblComunicationException);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblTimeException);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblWithoutConection);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby);
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
            }
        }

        private void PrepareUserToBeSaved()
        {
            String encryptedPassword = EncryptionClass.EncryptPassword(userToSave.Password.ToString().Trim());
            userToSave.Password = encryptedPassword;
            userToSave.IdUser = NULL_INT_VALUE;
        }

        private void NotifyUserABoutNewPlayer()
        {
            try
            {
                NotifyAvailabilityOperationsClient managerActionOperationsProxy = new();
                managerActionOperationsProxy.NotifyUserAboutNewPlayer(userSingleton.IdUser, userSingleton.UserName);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }



        private void ClickButtonCancelSaving(object sender, RoutedEventArgs e)
        {
            try
            {
                if (timer != null)
                {
                    timer.Stop();
                }
                UserCreateAccountCodeClient userCreateAccount = new();
                userCreateAccount.TakeUserOutOfDictionary(userToSave);
                CheckUserLivingUnsubscribeClient checkUserLivingClient = new();
                checkUserLivingClient.UnsubscribeFromICheckUserLiving(userToSave);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            UserSingleton.CleanSingleton();
            UserRegister userToRegister = new UserRegister();
            this.NavigationService.Navigate(userToRegister);
            userToRegister.LoadFields(userToSave);
            NavigationService.RemoveBackEntry();
        }

 
        private void EntryCodeCharValidator(object sender, TextChangedEventArgs e)
        {
            if (txbCodeCreateAcc.Text.Trim().Length == 6)
            {
                bttSaveUser.IsEnabled = true;
            }
            else
            {
                bttSaveUser.IsEnabled=false;
            }
        }
        
        private void SetSingleton()
        {
            try
            {                
                ConsultUserInformationClient consultInformationClient = new ConsultUserInformationClient();
                var userSaved = consultInformationClient.ConsultUserByUserName(userToSave.UserName);
                if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var playerSaved = consultInformationClient.ConsultPlayerByIdUser(userSaved.ObjectSaved.IdUser);
                    if (playerSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        UserSingleton.CleanSingleton();
                        userSingleton = UserSingleton.GetMainUser(userSaved.ObjectSaved, playerSaved.ObjectSaved);
                        NotifyAvailabilityOperationsClient availabilityUserManagment = new();
                        availabilityUserManagment.UserIsPlaying(userSingleton.IdUser);
                    }
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailConsultingTheBD, Application.Current.MainWindow, DialogWindowManager.ERROR);
                    }
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailConsultingTheBD, Application.Current.MainWindow, DialogWindowManager.ERROR);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblUserRegisteredButFailToconnect);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblUserRegisteredButFailToconnect);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblUserRegisteredButFailToconnect);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblUserRegisteredButFailToconnect);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblUserRegisteredButFailToconnect);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
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
        private void UpdateLabelStyle()
        {
            if (isTimerExpired)
            {
                lblResentCode.FontWeight = FontWeights.Bold;
                lblResentCode.Foreground = Brushes.Red;
            }
            else
            {
                lblResentCode.FontWeight = FontWeights.Normal; 
                lblResentCode.Foreground = Brushes.DeepSkyBlue;
            }
        }

    }
}
