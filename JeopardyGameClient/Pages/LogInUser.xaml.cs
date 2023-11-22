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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : System.Windows.Controls.Page, INotifyUserAvailabilityCallback
    {
        public static LobbyPage ActiveFriendsInstance = new LobbyPage();
        private const int RIGTH_CREDENTIALS = 1;
        private const int WRONG_CREDENTIALS = 0;

        public LogInUser()
        {
            InitializeComponent();
            PrepareLogInWindow();
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

        private void CLickLogIn(object sender, RoutedEventArgs e)
        {
            if (CheckEmptyFields())
            {
                UserValidate userValidate = new UserValidate();
                userValidate.UserName = txbUserNameLogIn.Text;
                userValidate.Password = PssPasswordLogIn.Password;
                try
                {
                    UserManagerClient proxyServer = new UserManagerClient();
                    var result = proxyServer.ValidateCredentials(userValidate);
                    proxyServer.Close();
                    if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || result.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                    {
                        if (result.ObjectSaved == RIGTH_CREDENTIALS)
                        {
                            DoLogin(userValidate.UserName);
                        }
                        else if (result.ObjectSaved == WRONG_CREDENTIALS)
                        {
                            new ErrorMessageDialogWindow("ERROR", "Invalid credentials, please try again", Application.Current.MainWindow);
                        }
                        else
                        {
                            ExceptionHandler.HandleException(result.CodeEvent, "Mensaje");
                            //LOGICA DE SI OCURRE LA EXPTION   
                        }
                    }
                    else
                    {
                        ExceptionHandler.HandleException(result.CodeEvent, "Mensaje");
                        //LOGICA DE SI OCURRE LA EXPTION                

                    }
                }
                catch (Exception )
                {
                    //LOGICA DE SI OCURRE LA EXPTION
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

            if (string.IsNullOrEmpty(PssPasswordLogIn.Password))
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
            ConsultInformationClient proxyConsult = new ConsultInformationClient();
            var currentUser = proxyConsult.ConsultUserByUserName(userName);
            if (currentUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                var currentPlayer = proxyConsult.ConsultPlayerByIdUser(currentUser.ObjectSaved.IdUser);
                if (currentPlayer.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    InstanceSingleton(currentUser.ObjectSaved, currentPlayer.ObjectSaved, ObtainCallBackChannel());
                    NotifyAvailability();
                    GoToMainMenu();
                }
                else
                {
                    ExceptionHandler.HandleException(currentPlayer.CodeEvent, "Mensaje");
                    //LOGICA DE SI OCURRE LA EXPTION, QUE SE HACE LIMPIA CAMPOS, REINICIA LA APP ETC.
                }
            }
            else
            {
                ExceptionHandler.HandleException(currentUser.CodeEvent, "Mensaje");
                //LOGICA DE SI OCURRE LA EXPTION
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
            UserSingleton us = UserSingleton.GetMainUser();
            us.proxyForAvailability.PlayerIsAvailable(us.IdUser, us.IdPlayer);
        }

        private void ClickSelectLanguage(object sender, SelectionChangedEventArgs e)
        {
            if (LanguajeComboBox.SelectedItem != null)
            {
                ComboBoxItem selectedItem = (ComboBoxItem)LanguajeComboBox.SelectedItem;
                string selectedLanguage = selectedItem.Tag.ToString();
                App.ChangeLanguaje(selectedLanguage);
                RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
                key.SetValue("SelectedLanguage", selectedLanguage);
                key.Close();
                if (selectedLanguage == "es-MX")
                {
                    lblUserNameLogIn.Content = Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = Properties.Resources.btnEnter;
                    btnRegistrer.Content = Properties.Resources.btnRegistrer;
                }
                if (selectedLanguage == "en")
                {
                    lblUserNameLogIn.Content = Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = Properties.Resources.btnEnter;
                    btnRegistrer.Content = Properties.Resources.btnRegistrer;
                }
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

        private void CLicButtonRegister(object sender, RoutedEventArgs e)
        {
            UserRegister userRegistryPage = new UserRegister();
            this.NavigationService.Navigate(userRegistryPage);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSingOut(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            PrincipalPage principalPage = new PrincipalPage();
            this.NavigationService.Navigate(principalPage);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSeePassword(object sender, MouseButtonEventArgs e)
        {
            lblViewPassword.Content = PssPasswordLogIn.Password.ToString();
            PssPasswordLogIn.Visibility = Visibility.Collapsed;         
            lblViewPassword.Visibility = Visibility.Visible;
        }

        private void HidePassword(object sender, MouseEventArgs e)
        {
            if (lblViewPassword.IsVisible)
            {
                PssPasswordLogIn.Visibility = Visibility.Visible;
                PssPasswordLogIn.PasswordChar = '*';
                PssPasswordLogIn.Password = (string)lblViewPassword.Content;
                lblViewPassword.Visibility = Visibility.Collapsed;
            }            
        }

        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriendsInstance).ResponseOfPlayerAvailability(status, idFriend);         
        }

    }
}
    


