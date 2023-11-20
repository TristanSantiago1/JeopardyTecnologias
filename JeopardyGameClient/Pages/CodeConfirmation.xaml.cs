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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para CodeConfirmation.xaml
    /// </summary>
    public partial class CodeConfirmation : Page, INotifyUserAvailabilityCallback
    {
        public static ActiveFriends ActiveFriendsInstance = new ActiveFriends();
        public const int NULL_INT_VALUE = 0;
        private DispatcherTimer timer;
        private int leftTime = 360;
        private String currentEmail;
        private String currentCode;
        private static Random randomNumber = new Random();
        UserPOJO userToSave;
        public CodeConfirmation(String emailToConfirm, UserPOJO user)
        {
            this.userToSave = user;
            this.currentEmail = emailToConfirm;
            InitializeComponent();
            GenerateCode();
            StartTimer();
            SentEmail(currentEmail);
            
        }
        private void GenerateCode()
        {
            int fourDigitsAleatoryNumber = randomNumber.Next(1000, 9999);
            char firstRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);
            char secondRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);
            currentCode = $"{firstRandomCharacter}{secondRandomCharacter}{fourDigitsAleatoryNumber:D4}";
        }

        private void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if (leftTime > NULL_INT_VALUE)
            {
                leftTime--;
                lblResentCode.Content = lblResentCode.Content + " " + leftTime;
            }
            else
            {
                timer.Stop();
            }
        }


        private void SentEmail(String email)
        {
            UserManagerClient proxyServer = new UserManagerClient();
            GenericClassOfint sentEmailSucc = proxyServer.SentEmailCodeConfirmation(email, Properties.Resources.EmailSubjectCode, currentCode + " " + Properties.Resources.EmailCodeDescrip);
            if (sentEmailSucc.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
            {
                ExceptionHandler.HandleException(sentEmailSucc.CodeEvent, "Mensaje");
                //regresara pagina anterior
            }
            if (sentEmailSucc.ObjectSaved == NULL_INT_VALUE)
            {
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow);
            }
        }  

        private void CLicButtonSaveUser(object sender, RoutedEventArgs e)
        {
            if (txbCodeCreateAcc.Text.Trim().Equals(currentCode))
            {
                PrepareUserToBeSaved();
                UserManagerClient proxyServer = new UserManagerClient();
                GenericClassOfint userSaved = proxyServer.SaveUser(userToSave);
                if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                        SetSingleton();
                        new InformationMessageDialogWindow(Properties.Resources.txbUserRegisteredSuccTittle,Properties.Resources.txbInfoMessgSuccRegUser, Application.Current.MainWindow);                        
                        MainMenu lobby = new MainMenu();
                        this.NavigationService.Navigate(lobby);
                        NavigationService.RemoveBackEntry();                   
                }
                else
                {
                    ExceptionHandler.HandleException(userSaved.CodeEvent, Properties.Resources.txbErrorMessageRegisterUser);
                    //regresar a ventana anterior
                }
            }
            else
            {
                txbWrongCode.Visibility = Visibility.Visible;
            }
        }

        private void PrepareUserToBeSaved()
        {
            String encryptedPassword = EncryptionClass.EncryptPassword(userToSave.Password.ToString().Trim());
            userToSave.Password = encryptedPassword;
            userToSave.IdUser = NULL_INT_VALUE;
        }

        private void CLickButtonCancelSaving(object sender, RoutedEventArgs e)
        {
            UserRegister userToRegister = new UserRegister();
            this.NavigationService.Navigate(userToRegister);
            userToRegister.ChargeField(userToSave);
            NavigationService.RemoveBackEntry();
        }

        private void ClickResentCode(object sender, MouseButtonEventArgs e)
        {
            if (leftTime == NULL_INT_VALUE)
            {
                currentCode = null;
                GenerateCode();
                SentEmail(currentEmail);
                StartTimer();
            }            
        }
        private void CodeEntryValidator(object sender, TextChangedEventArgs e)
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
            ConsultInformationClient consultInformationClient = new ConsultInformationClient();           
            var userSaved =  consultInformationClient.ConsultUserByUserName(userToSave.UserName);
            if(userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
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
                    userSingleton.proxyForAvailability.PlayerIsAvailable(userSingleton.IdUser, userSingleton.IdPlayer);
                }
                else
                {
                    ExceptionHandler.HandleException(playerSaved.CodeEvent, "");
                }
            }
            else
            {
                ExceptionHandler.HandleException(userSaved.CodeEvent, "");
            }
        }

        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriendsInstance).ResponseOfPlayerAvailability(status, idFriend);
        }

    }

}
