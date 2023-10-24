using JeopardyGame.ServidorServiciosJeopardy;
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
using System.Windows.Threading;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para CodeConfirmation.xaml
    /// </summary>
    public partial class CodeConfirmation : Page
    {
        private DispatcherTimer timer;
        private int leftTime = 360;
        private String currentEmail;
        private String currentCode;
        private static Random random = new Random();
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

        private void SentEmail(String email)
        {
            ServidorServiciosJeopardy.UserManagerClient proxyServer = new ServidorServiciosJeopardy.UserManagerClient();
            int sentEmailSucc = proxyServer.SentEmailCodeConfirmation
                (email, JeopardyGame.Properties.Resources.EmailSubjectCode, currentCode + " " + 
                JeopardyGame.Properties.Resources.EmailCodeDescrip);
            if (sentEmailSucc == 0 )
            {
                ShowErrorMessage(JeopardyGame.Properties.Resources.txbErrorTitle, JeopardyGame.Properties.Resources.SentEmailIssue);
            }
        }

        private void GenerateCode()
        {           
            int altNumber = random.Next(1000, 9999);          
            char altChar1 = (char)random.Next('A', 'Z' + 1);
            char altChar2 = (char)random.Next('A', 'Z' + 1);
            string codeGenerated = $"{altChar1}{altChar2}{altNumber:D4}";
            currentCode = codeGenerated;
        }

        private void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if (leftTime > 0)
            {
                leftTime--;
                lblResentCode.Content = lblResentCode.Content + " " + leftTime;
            }
            else
            {               
                timer.Stop();
            }
        }
           

        private void CLicButtonSaveUser(object sender, RoutedEventArgs e)
        {
            if (txbCodeCreateAcc.Text.Trim().Equals(currentCode))
            {
                Helpers.EncryptationClass encryptation = new Helpers.EncryptationClass();
                String encryptedPassword = encryptation.EncryptPassword(userToSave.Password.ToString().Trim());
                userToSave.Password = encryptedPassword;
                userToSave.IdUser = 0;
                UserManagerClient proxyServer = new UserManagerClient();
                int idUsuario = proxyServer.SaveUser(userToSave);
                if (idUsuario != 0)
                {                    
                    ShowInfoMessage(JeopardyGame.Properties.Resources.txbUserRegisteredSuccTittle, 
                        JeopardyGame.Properties.Resources.txbInfoMessgSuccRegUser);
                    MainMenu lobby = new MainMenu();
                    this.NavigationService.Navigate(lobby);
                    NavigationService.RemoveBackEntry();
                    
                }
                else
                {
                    ShowErrorMessage(JeopardyGame.Properties.Resources.txbErrorTitle, 
                        JeopardyGame.Properties.Resources.txbErrorMessageRegisterUser);
                }
            }
            else
            {
                txbWrongCode.Visibility = Visibility.Visible;
            }
        }

        private void CLicButtonCancelSaving(object sender, RoutedEventArgs e)
        {
            UserRegister userRegister = new UserRegister();
            this.NavigationService.Navigate(userRegister);
            userRegister.ChargeField(userToSave);
            NavigationService.RemoveBackEntry();
        }

        private void ResentCode(object sender, MouseButtonEventArgs e)
        {
            if (leftTime == 0)
            {
                currentCode = null;
                GenerateCode();
                SentEmail(currentEmail);
                StartTimer();
            }
            
        }

        private void ShowErrorMessage(String title, String message)
        {
            DialogWindows.ErrorMessageDW ErrorWindow = new DialogWindows.ErrorMessageDW(title, message);
            Window currentPage = Application.Current.MainWindow;
            double left = currentPage.Left + (currentPage.Width - ErrorWindow.Width) / 2;
            double top = currentPage.Top + (currentPage.Height - ErrorWindow.Height) / 2;
            ErrorWindow.Left = left;
            ErrorWindow.Top = top;
            ErrorWindow.HorizontalAlignment = HorizontalAlignment.Center;
            ErrorWindow.VerticalAlignment = VerticalAlignment.Center;
            ErrorWindow.ShowDialog();
        }

        private void ShowInfoMessage(String title, String message)
        {
            DialogWindows.InfoMessageDW ConfirmationWindow = new DialogWindows.InfoMessageDW(title, message);
            Window currentPage = Application.Current.MainWindow;
            double left = currentPage.Left + (currentPage.Width - ConfirmationWindow.Width) / 2;
            double top = currentPage.Top + (currentPage.Height - ConfirmationWindow.Height) / 2;
            ConfirmationWindow.Left = left;
            ConfirmationWindow.Top = top;
            ConfirmationWindow.VerticalAlignment = VerticalAlignment.Center;
            ConfirmationWindow.ShowDialog();
        }

        private void CodeEntry(object sender, TextChangedEventArgs e)
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
    }

}
