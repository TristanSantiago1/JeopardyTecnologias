using JeopardyGame.DialogWindows;
using JeopardyGame.Exceptions;
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
using System.Windows.Threading;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para CodeConfirmationEmail.xaml
    /// </summary>
    public partial class CodeConfirmationEmail : Page
    {
        public const int NULL_INT_VALUE = 0;
        private DispatcherTimer timer;
        private int leftTime;
        private String currentEmail;
        private int idUser;
        private Window dialogMessage;
        public CodeConfirmationEmail(String emailToConfirm, int IdUser)
        {
            this.currentEmail = emailToConfirm;
            this.idUser = IdUser;
            InitializeComponent();
            SentEmail();
            StartTimer();
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
                lblResentCodeEmailConfirmation.Content = Properties.Resources.lblResentCode + " " + leftTime;
            }
            else
            {
                timer.Stop();
            }
        }


        private void SentEmail()
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            UserPOJO user = new UserPOJO();
            try
            {
                EmailSenderManagerClient emailSender = new EmailSenderManagerClient();
                GenericClassOfint sentEmailSucc = emailSender.SentEmailConfirmationToCreateAccount(user, Properties.Resources.EmailSubjectCode, Properties.Resources.EmailCodeDescrip);
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

        }

        private void EntryCodeCharValidator(object sender, TextChangedEventArgs e)
        {

        }

        private void ClickButtonCancelSaving(object sender, RoutedEventArgs e)
        {

        }

        private void ClickResentCode(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
