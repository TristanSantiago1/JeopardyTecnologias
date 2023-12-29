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
    public partial class CodeConfirmation : Page, INotifyUserAvailabilityCallback, IUserCreateAccountCodeCallback
    {
        private static ActiveFriends activeFriendsInstance = new ActiveFriends();
        public const int NULL_INT_VALUE = 0;
        private DispatcherTimer timer;
        private int leftTime;
        private String currentEmail;
        private UserPOJO userToSave;
        private Window dialogMessage;
        InstanceContext context;
        public static ActiveFriends ActiveFriendsInstance { get => activeFriendsInstance; set => activeFriendsInstance = value; }


        public CodeConfirmation(String emailToConfirm, UserPOJO user)
        {
            this.userToSave = user;
            this.currentEmail = emailToConfirm;
            InitializeComponent();
            SubscribeToCallBack();
            SentEmail();
            StartTimer();
        }    

        private void SubscribeToCallBack()
        {
            context = new InstanceContext(this);
            UserCreateAccountCodeClient userCreateAccount = new(context);
            userCreateAccount.AddUserToConfirmationDictionary(userToSave);            
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
                GenericClassOfint sentEmailSucc = emailSender.SentEmailConfirmationToCreateAccount(userToSave, Properties.Resources.EmailSubjectCode, Properties.Resources.EmailCodeDescrip);
                if (sentEmailSucc.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
                {

                    //regresara pagina anterior
                }
                if (sentEmailSucc.ObjectSaved == NULL_INT_VALUE)
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow);
                }
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
        }  

        private void ClickButtonSaveUser(object sender, RoutedEventArgs e)
        {
            try
            {                
                UserCreateAccountCodeClient userCreateAccount = new(context);
                if (userCreateAccount.CheckCodeEntered(userToSave, txbCodeCreateAcc.Text.ToString().Trim()) == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    PrepareUserToBeSaved();
                    UserManagerClient userManagerProxy = new UserManagerClient();
                    GenericClassOfint userSaved = userManagerProxy.SaveUser(userToSave);
                    if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        SetSingleton();
                        dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle,Properties.Resources.txbInfoMessgSuccRegUser, Application.Current.MainWindow);                        
                        MainMenu mainMenu = new MainMenu();
                        this.NavigationService.Navigate(mainMenu);
                        NavigationService.RemoveBackEntry();
                    }
                    else
                    {
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.txbErrorMessageRegisterUser, Application.Current.MainWindow);
                        ///Dependiendo la excepcion que hacer , son excepciones de Base sde datos asi que le puede decir que lo itnente mas tarde
                    }
                }
                else
                {
                    txbWrongCode.Visibility = Visibility.Visible;
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
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
                UserCreateAccountCodeClient userCreateAccount = new(context);
                userCreateAccount.TakeUserOutOfDictionary(userToSave);
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
                    UserCreateAccountCodeClient userCreateAccount = new(context);
                    userCreateAccount.ResendCode(userToSave);
                    SentEmail();
                    StartTimer();
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
                        UserSingleton userSingleton = UserSingleton.GetMainUser();
                        userSingleton.IdUser = userSaved.ObjectSaved.IdUser;
                        userSingleton.Name = userSaved.ObjectSaved.Name;
                        userSingleton.UserName = userSaved.ObjectSaved.UserName;
                        userSingleton.Email = userSaved.ObjectSaved.EmailAddress;
                        userSingleton.Password = userSaved.ObjectSaved.Password;
                        userSingleton.IdPlayer = playerSaved.ObjectSaved.IdPlayer;
                        userSingleton.GeneralPoints = playerSaved.ObjectSaved.GeneralPoints;
                        userSingleton.NoReports = playerSaved.ObjectSaved.NoReports;
                        userSingleton.IdState = playerSaved.ObjectSaved.IdState;
                        userSingleton.IdCurrentAvatar = playerSaved.ObjectSaved.IdActualAvatar;
                        InstanceContext context = new InstanceContext(this);
                        NotifyUserAvailabilityClient proxyChannelCallback = new NotifyUserAvailabilityClient(context);
                        userSingleton.proxyForAvailability = proxyChannelCallback;
                        userSingleton.proxyForAvailability.PlayerIsAvailable(userSingleton.IdUser);
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

        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriendsInstance).ResponseOfPlayerAvailability(status, idFriend);
        }

        public void VerifyPlayerAvailability()
        {
            ((INotifyUserAvailabilityCallback)activeFriendsInstance).VerifyPlayerAvailability();
        }

        public void VerifyUserDictionaryAreActive()
        {
            
        }

    }

}
