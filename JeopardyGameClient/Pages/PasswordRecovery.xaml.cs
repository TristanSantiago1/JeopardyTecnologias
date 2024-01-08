using JeopardyGame.DialogWindows;
using JeopardyGame.Exceptions;
using JeopardyGame.Helpers;
using JeopardyGame.ReGexs;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for PasswordRecovery.xaml
    /// </summary>
    public partial class PasswordRecovery : Page
    {

        private List<Label> ListBoxRules = new List<Label>();
        private const int DISALLOWED_VALUES = 0;
        private const int ALLOWED_VALUES = 1;
        private const int MINIMUN_PASSWORD_LENGTH = 10;
        private const int MAXIMUM_PASSWORD_LENGTH = 30;
        private DispatcherTimer timer;
        private int leftTime;
        private string currentUserName;


        public PasswordRecovery()
        {
            InitializeComponent();
            PrepareWindow();
            txbUserNameCreateAccount.MaxLength = 15;
            txbCode.MaxLength = 6;
            psbPassword.MaxLength = 30;
        }

        private void PrepareWindow()
        {
            InitializeListeners();
            CreateRuleLabels();
            foreach (var rule in ListBoxRules)
            {
                lsbPasswordRules.Items.Add(rule);
            }
        }

        private void InitializeListeners()
        {
            psbPassword.PreviewKeyDown += EntryTextBoxPaste;
            txbUserNameCreateAccount.PreviewTextInput += EntryTextBoxCharValidation;
            txbUserNameCreateAccount.PreviewKeyDown += EntryTextBoxPaste;
        }        

        private void EntryTextBoxCharValidation(object sender, TextCompositionEventArgs e)
        {
            TextBox currentTextBox = sender as TextBox;
            RegularExpressionsLibrary regularExpressionsLibrary = new RegularExpressionsLibrary();
            try
            {
                if ((regularExpressionsLibrary.ValidationTextBoxRegexes.TryGetValue(currentTextBox.Name, out string regex))
               && !Regex.IsMatch((currentTextBox.Text + e.Text), regex, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))
                {
                    e.Handled = true;
                }
            }
            catch (RegexMatchTimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                e.Handled = true;
            }
            catch (ArgumentNullException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                e.Handled = true;
            }
        }

        private void EntryTextBoxPaste(object sender, KeyEventArgs e)
        {
            if ((Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control && (e.Key == Key.V))
            {
                e.Handled = true;
            }
        }

        private void CreateRuleLabels()
        {
            Label lblPasswordLengthRule = new Label();
            lblPasswordLengthRule.Content = Properties.Resources.lblPassLengthRuleDesc;
            lblPasswordLengthRule.Foreground = Brushes.White;
            lblPasswordLengthRule.FontSize = 10;
            Label lblPasswordNumbersRule = new Label();
            lblPasswordNumbersRule.Content = Properties.Resources.lblPassNumberRuleDesc;
            lblPasswordNumbersRule.Foreground = Brushes.White;
            lblPasswordNumbersRule.FontSize = 10;
            Label lblPasswordCapitalsRule = new Label();
            lblPasswordCapitalsRule.Content = Properties.Resources.lblPassCapitalRuleDesc;
            lblPasswordCapitalsRule.Foreground = Brushes.White;
            lblPasswordCapitalsRule.FontSize = 10;
            Label lblPasswordSpeCharRule = new Label();
            lblPasswordSpeCharRule.Content = Properties.Resources.lblPassSpeCharRuleDesc;
            lblPasswordSpeCharRule.Foreground = Brushes.White;
            lblPasswordSpeCharRule.FontSize = 10;
            Label lblPasswordPunctuationRule = new Label();
            lblPasswordPunctuationRule.Content = Properties.Resources.lblPassPuntSigRuleDesc;
            lblPasswordPunctuationRule.Foreground = Brushes.White;
            lblPasswordPunctuationRule.FontSize = 10;
            Label lblPasswordSameEmailRule = new Label();
            lblPasswordSameEmailRule.Content = Properties.Resources.lblPassEqualsEmailRuleDesc;
            lblPasswordSameEmailRule.Foreground = Brushes.White;
            lblPasswordSameEmailRule.FontSize = 10;
            ListBoxRules.Add(lblPasswordLengthRule);
            ListBoxRules.Add(lblPasswordNumbersRule);
            ListBoxRules.Add(lblPasswordCapitalsRule);
            ListBoxRules.Add(lblPasswordSpeCharRule);
            ListBoxRules.Add(lblPasswordPunctuationRule);
            ListBoxRules.Add(lblPasswordSameEmailRule);
        }


        private int CheckEmptyFields(Label warningLabel, TextBox txbToCheck)
        {
            int answer = ALLOWED_VALUES;
            if (string.IsNullOrEmpty(txbToCheck.Text.Trim()))
            {
                warningLabel.Visibility = Visibility.Visible;
                answer = DISALLOWED_VALUES;
            }
            else
            {
                warningLabel.Visibility = Visibility.Collapsed;
            }            
            return answer;
        }

        private void ClickConfirmUserName(object sender, RoutedEventArgs e)
        {
            if(CheckEmptyFields(lblUserNamWarning, txbUserNameCreateAccount) == ALLOWED_VALUES)
            {
                try
                {
                    RecoverPasswordClient recoverPasswordProxy = new RecoverPasswordClient();
                    int succes = recoverPasswordProxy.CreateCodeToRecoverPassWord(txbUserNameCreateAccount.Text, Properties.Resources.EmailSubjectCode, Properties.Resources.RecoverPasswordMessage);
                    if(succes == ExceptionDictionary.SUCCESFULL_EVENT || ExceptionDictionary.USERNAME_ALREADY_EXIST == succes)
                    {
                        ConfirmCodeAlreadyExist(succes);
                    }
                    else if(succes == ExceptionDictionary.NULL_PARAEMETER)
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblUserNameDoesNotExist, Window.GetWindow(this), DialogWindowManager.ERROR);
                    }                    
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.GenericEmailIssue, Window.GetWindow(this), DialogWindowManager.ERROR);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);

                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblTimeException);
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblWithoutConection);
                }
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);
                }
            }
        }

        private void ConfirmCodeAlreadyExist(int succes)
        {
            currentUserName = txbUserNameCreateAccount.Text.Trim();
            bttConfirmCode.IsEnabled = true;
            bttConfirmUserName.IsEnabled = false;
            txbUserNameCreateAccount.IsEnabled = false;
            bttSaveUser.IsEnabled = false;
            StartTimer();
            if (succes == ExceptionDictionary.USERNAME_ALREADY_EXIST)
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblAlreadyExistACodeToChangePassword, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            else
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblEmailCodePassWordSendSuccesfully, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
        }

        private void CLickConfirmCode(object sender, RoutedEventArgs e)
        {
            if (CheckEmptyFields(lblCodeNamWarning, txbCode) == ALLOWED_VALUES)
            {
                try
                {
                    RecoverPasswordClient recoverPasswordProxy = new RecoverPasswordClient();
                    int succes = recoverPasswordProxy.VerifyCodeToRecoverPassword(currentUserName, txbCode.Text.Trim());
                    if (succes == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        bttConfirmCode.IsEnabled = false;
                        bttConfirmUserName.IsEnabled = false;
                        txbUserNameCreateAccount.IsEnabled = false;
                        txbCode.IsEnabled = false;
                        bttSaveUser.IsEnabled = true;
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblRigthCodePassword, Window.GetWindow(this), DialogWindowManager.ERROR);

                    }
                    else
                    {
                        ShowSpecificCodeMessage(succes);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToVerifyTheCode + " " + Properties.Resources.lblEndPointNotFound);

                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToVerifyTheCode + " " + Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToVerifyTheCode + " " + Properties.Resources.lblTimeException);
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToVerifyTheCode + " " + Properties.Resources.lblWithoutConection);
                }
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);
                }
            }
        }

        private void ShowSpecificCodeMessage(int succes)
        {
            if (succes == ExceptionDictionary.NULL_PARAEMETER)
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblUserNameDoesNotExist, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            else if (succes == ExceptionDictionary.ARGUMENT_NULL)
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblThereIsnoCodeFoThisUser, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            else if (succes == ExceptionDictionary.INVALID_OPERATION)
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongCodeEntered, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            else
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToVerifyTheCode, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
        }

        private void ClickButtonConfirmNewPassword(object sender, RoutedEventArgs e)
        {
            try { 
                ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                var userCosulted = consultInformationProxy.ConsultUserByUserName(currentUserName);
                if (userCosulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    if (ALLOWED_VALUES == CheckPassword(userCosulted.ObjectSaved.EmailAddress))
                    {
                        UserManagerClient userManagerClient = new UserManagerClient();
                        var succes = userManagerClient.UpdatePasswordUser(currentUserName,EncryptionClass.EncryptPassword(psbPassword.Password.ToString().Trim()));
                        if (succes.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblPassWordUpdatedCorrectly, Window.GetWindow(this), DialogWindowManager.INFORMATION);
                            GoToPrincipalWindow();
                        }                        
                        else
                        {
                            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToUpdatePassword + " " + Properties.Resources.lblFailToConenctBD, Window.GetWindow(this), DialogWindowManager.ERROR);
                        }
                    }
                    else
                    {
                        ShowPasswordRules();
                    }
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToUpdatePassword + " " + Properties.Resources.lblFailToConenctBD, Window.GetWindow(this), DialogWindowManager.ERROR);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToUpdatePassword + " "  + Properties.Resources.lblEndPointNotFound);

            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToUpdatePassword + " "+ Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToUpdatePassword + " " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToUpdatePassword + " " + Properties.Resources.lblWithoutConection);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);
            }
        }

        private int CheckPassword(string email)
        {
            int answer = ALLOWED_VALUES;
            try
            {
                RegularExpressionsLibrary regexInstance = new RegularExpressionsLibrary();
                string regexExpression;
                String passwordChecked = psbPassword.Password.ToString().Trim();
                if (passwordChecked.Length < MINIMUN_PASSWORD_LENGTH || passwordChecked.Length > MAXIMUM_PASSWORD_LENGTH)
                {
                    HighLightBrokenRule(ListBoxRules[0]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[0]);
                }
                regexExpression = regexInstance.GetAt_LEAST_TWO_NUMBER();
                if (!Regex.IsMatch(passwordChecked, regexExpression, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))
                {
                    HighLightBrokenRule(ListBoxRules[1]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[1]);
                }
                if (!GetSpecificResource.HasAtLeastTwoSeparateUppercaseLetters(passwordChecked))
                {
                    HighLightBrokenRule(ListBoxRules[2]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[2]);
                }
                regexExpression = regexInstance.GetAt_LEAST_ONE_SPECIAL_CHARACTER();
                if (!Regex.IsMatch(passwordChecked, regexExpression, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))
                {
                    HighLightBrokenRule(ListBoxRules[3]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[3]);
                }
                regexExpression = regexInstance.GetAt_LEAST_ONE_PUTUATION_MARK();
                if (!Regex.IsMatch(passwordChecked, regexExpression, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))
                {
                    HighLightBrokenRule(ListBoxRules[4]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[4]);
                }
                int arrobaIndex = (email.IndexOf('@') != -1) ? email.IndexOf('@') : 0;
                if (email.Trim().Substring(0, arrobaIndex).Equals(passwordChecked))
                {
                    HighLightBrokenRule(ListBoxRules[5]);
                    answer = DISALLOWED_VALUES;
                }
                else
                {
                    ClearBrokenRule(ListBoxRules[5]);
                }
               
            }
            catch (RegexMatchTimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.ERROR);
                answer = DISALLOWED_VALUES;
            }
            
            return answer;
        }

        private void HighLightBrokenRule(Label missingRule)
        {
            missingRule.Foreground = Brushes.Red;
        }
        private void ClearBrokenRule(Label missingRule)
        {
            missingRule.Foreground = Brushes.White;
        }

        private void ClickViewPasswordRules(object sender, MouseButtonEventArgs e)
        {
            ShowPasswordRules();
        }

        private void ShowPasswordRules()
        {
            if (imgViewPasswordRules.Visibility == Visibility.Visible)
            {
                brdPasswordRules.Visibility = Visibility.Visible;
                imgViewPasswordRules.Visibility = Visibility.Hidden;
            }
        }
        private void ClickClosePasswordRules(object sender, MouseButtonEventArgs e)
        {
            brdPasswordRules.Visibility = Visibility.Hidden;
            imgViewPasswordRules.Visibility = Visibility.Visible;
        }

        private void ClickSeePassword(object sender, MouseButtonEventArgs e)
        {
            lblViewPassword.Content = psbPassword.Password.ToString();
            psbPassword.Visibility = Visibility.Collapsed;
            lblViewPassword.Visibility = Visibility.Visible;
        }

        private void OverLeaveHidePassword(object sender, MouseEventArgs e)
        {
            if (lblViewPassword.IsVisible)
            {
                psbPassword.Visibility = Visibility.Visible;
                psbPassword.PasswordChar = '*';
                psbPassword.Password = (string)lblViewPassword.Content;
                lblViewPassword.Visibility = Visibility.Collapsed;
            }
        }


        private void StartTimer()
        {
            leftTime = 320;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += TickTimerResendCode;
            timer.Start();
        }

        private void TickTimerResendCode(object sender, EventArgs e)
        {
            if (leftTime > 0)
            {
                leftTime--;
                lblResendCode.Foreground = new SolidColorBrush(Colors.IndianRed);
                lblResendCode.Content = Properties.Resources.lblResentCode + " " + leftTime;
            }
            else
            {
                lblResendCode.Foreground = new SolidColorBrush(Colors.ForestGreen);
                lblResendCode.Content = Properties.Resources.lblResentCode + " " + leftTime;    
                SetDefaultBotons();
                timer.Stop();
            }
        }

        private void SetDefaultBotons()
        {
            bttConfirmUserName.IsEnabled = true;
            txbUserNameCreateAccount.IsEnabled = true;
        }


        private void ClickButtonCancelSaving(object sender, RoutedEventArgs e)
        {
            if (DialogWindowManager.ShowWindowConfirmation(Properties.Resources.txbWarningTitle, Properties.Resources.lblConfirmLeaveRecoveryPassword, Application.Current.MainWindow))
            {
                GoToPrincipalWindow();
            }
        }

        private void GoToPrincipalWindow()
        {
            if(timer != null)
            {

                timer.Stop();
            }
            PrincipalPage principalPage = new();
            this.NavigationService.Navigate(principalPage);
            NavigationService.RemoveBackEntry();
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow, DialogWindowManager.ERROR);
        }

       
    }
}
