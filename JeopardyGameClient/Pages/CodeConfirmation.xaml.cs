using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
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
    /// <summary>
    /// Lógica de interacción para CodeConfirmation.xaml
    /// </summary>
    public partial class CodeConfirmation : Page, ICheckUserLivingCallback
    {
        private UserSingleton userSingleton = UserSingleton.GetMainUser();
        public const int NULL_INT_VALUE = 0;
        private DispatcherTimer timer;
        private int leftTime;
        private String currentEmail;
        private UserPOJO userToSave;
        private Window dialogMessage;


        public CodeConfirmation(String emailToConfirm, UserPOJO user)
        {
            this.userToSave = user;
            this.currentEmail = emailToConfirm;
            InitializeComponent();
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
                CheckUserLivingClient checkUserLivingClient = new(instanceContext);
                var success = checkUserLivingClient.SubscribeToICheckUserLiving(userToSave);
                if (success != ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
                ClickButtonCancelSaving(bttCancellAction, new RoutedEventArgs());
            }
        }

        private void StartTimer()
        {
            leftTime = 30;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += TickTimerResendCode;
            timer.Start();
        }

        private void TickTimerResendCode(object sender, EventArgs e)
        {
            if (leftTime > NULL_INT_VALUE)
            {
                leftTime--;
                lblResentCode.Content = Properties.Resources.lblResentCode + " " + leftTime;
            }
            else
            {
                timer.Stop();
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
                    ReturnPage();
                }
                if (sentEmailSucc.ObjectSaved == NULL_INT_VALUE)
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow);
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

        private void ClickButtonSaveUser(object sender, RoutedEventArgs e)
        {
            try
            {                
                UserCreateAccountCodeClient userCreateAccount = new();
                if (userCreateAccount.CheckCodeEntered(userToSave, txbCodeCreateAcc.Text.ToString().Trim()) == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    PrepareUserToBeSaved();
                    UserManagerClient userManagerProxy = new UserManagerClient();
                    GenericClassOfint userSaved = userManagerProxy.SaveUser(userToSave);
                    if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        SetSingleton();
                        dialogMessage = new InformationMessageDialogWindow(
                            Properties.Resources.txbInformationTitle,Properties.Resources.txbInfoMessgSuccRegUser, Application.Current.MainWindow);                        
                        MainMenu mainMenu = new MainMenu();
                        this.NavigationService.Navigate(mainMenu);
                        NavigationService.RemoveBackEntry();
                    }
                    else
                    {
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.txbErrorMessageRegisterUser, Application.Current.MainWindow);
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
        }

        private void PrepareUserToBeSaved()
        {
            String encryptedPassword = EncryptionClass.EncryptPassword(userToSave.Password.ToString().Trim());
            userToSave.Password = encryptedPassword;
            userToSave.IdUser = NULL_INT_VALUE;
        }

        private void ClickButtonCancelSaving(object sender, RoutedEventArgs e)
        {
            try
            {
                UserCreateAccountCodeClient userCreateAccount = new();
                userCreateAccount.TakeUserOutOfDictionary(userToSave);
                CheckUserLivingUnsubscribeClient checkUserLivingClient = new();
                checkUserLivingClient.UnsubscribeFromICheckUserLiving(userToSave);
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
            UserSingleton.CleanSingleton();
            UserRegister userToRegister = new UserRegister();
            this.NavigationService.Navigate(userToRegister);
            userToRegister.LoadFields(userToSave);
            NavigationService.RemoveBackEntry();
        }

        private void ClickResentCode(object sender, MouseButtonEventArgs e)
        {
            if (leftTime == NULL_INT_VALUE)
            {
                try
                {
                    UserCreateAccountCodeClient userCreateAccount = new();
                    userCreateAccount.ResendCode(userToSave);
                    SentEmail();
                    StartTimer();
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
                        userSingleton = UserSingleton.GetMainUser(userSaved.ObjectSaved, playerSaved.ObjectSaved);
                        AvailabilityUserManagmentClient availabilityUserManagment = new AvailabilityUserManagmentClient();
                        availabilityUserManagment.PlayerIsAvailable(userSingleton.IdUser);
                    }
                    else
                    {
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                    }
                }
                else
                {
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

        public bool IsClientActive()
        {
            return ((ICheckUserLivingCallback)userSingleton).IsClientActive();
        }

        private void CleanFields()
        {
            txbCodeCreateAcc.Text = string.Empty;
        }
        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            CleanFields();
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
        }

        private void ReturnPage()
        {
            UserRegister userRegistrerPage = new UserRegister();
            this.NavigationService.Navigate(userRegistrerPage);
            NavigationService.RemoveBackEntry();
        }
    }
}
