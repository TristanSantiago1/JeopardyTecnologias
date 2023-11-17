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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : System.Windows.Controls.Page, INotifyUserAvailabilityCallback
    {
        public static ActiveFriends ActiveFriendsInstance = new ActiveFriends();
        public LogInUser()
        {
            InitializeComponent();
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

        private void txbUserNameCreateAcc_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void CLicButtonEnterAccount(object sender, RoutedEventArgs e)
        {
            string userName = txbUserNameLogIn.Text;
            string password = PssPasswordLogIn.Password;

            if (string.IsNullOrEmpty(userName))
            {
                LblWrongUserName.Content = JeopardyGame.Properties.Resources.LblWrongUserName;
                LblWrongUserName.Visibility = Visibility.Visible;
            }
            else
            {
                LblWrongUserName.Visibility = Visibility.Collapsed;
            }

            if (string.IsNullOrEmpty(password))
            {
                lblPasswordWrong.Content = JeopardyGame.Properties.Resources.lblPasswordWrong;
                lblPasswordWrong.Visibility = Visibility.Visible;
            }
            else
            {
                lblPasswordWrong.Visibility = Visibility.Collapsed;
            }

            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(password))
            {
                return;
            }
            try
            {
                UserManagerClient proxyServer = new UserManagerClient();

                UserValidate userValidate = new UserValidate
                {
                    UserName = userName,
                    Password = password
                };

                var result = proxyServer.validateCredentials(userValidate);
                proxyServer.Close();
                if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || result.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                {
                    if (result.ObjectSaved == 1)
                    {
                        ConsultInformationClient proxyConsult = new ConsultInformationClient();
                        var currentUser = proxyConsult.ConsultUserByUserName(userName);
                        if (currentUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            var currentPlayer = proxyConsult.ConsultPlayerByIdUser(currentUser.ObjectSaved.IdUser);
                            if (currentPlayer.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                InstanceContext contexto = new InstanceContext(this);
                                NotifyUserAvailabilityClient proxyChannelCallback = new NotifyUserAvailabilityClient(contexto);

                                InstanceSingleton(currentUser.ObjectSaved, currentPlayer.ObjectSaved, proxyChannelCallback);
                                UserSingleton us = UserSingleton.GetMainUser();
                                us.proxyForAvailability.PlayerIsAvailable(us.IdUser, us.IdPlayer);

                                MainMenu mainMenuPage = new MainMenu();
                                this.NavigationService.Navigate(mainMenuPage);
                                NavigationService.RemoveBackEntry();
                            }
                            else
                            {
                                ExceptionHandler.HandleExceptionSQLorEntity(currentPlayer.CodeEvent, "Mensaje");
                                //LOGICA DE SI OCURRE LA EXPTION, QUE SE HACE LIMPIA CAMPOS, REINICIA LA APP ETC.
                            }
                        }
                        else
                        {
                            ExceptionHandler.HandleExceptionSQLorEntity(currentUser.CodeEvent, "Mensaje");
                            //LOGICA DE SI OCURRE LA EXPTION
                        }
                    }
                    else if (result.ObjectSaved == 0)
                    {
                        MessageBox.Show("Invalid credentials, please try again");
                    }
                }
                else
                {
                    ExceptionHandler.HandleExceptionSQLorEntity(result.CodeEvent, "Mensaje");
                    //LOGICA DE SI OCURRE LA EXPTION                

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show("Error connecting to the server, please try again");

            }
        }
        private void CLicButtonRegister(object sender, RoutedEventArgs e)
        {
            UserRegister userRegistrerPage = new UserRegister();
            this.NavigationService.Navigate(userRegistrerPage);
            NavigationService.RemoveBackEntry();
        }
        private void LanguageComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
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
                    lblUserNameLogIn.Content = JeopardyGame.Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = JeopardyGame.Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = JeopardyGame.Properties.Resources.btnEnter;
                    btnRegistrer.Content = JeopardyGame.Properties.Resources.btnRegistrer;
                }
                if(selectedLanguage == "en")
                {
                    lblUserNameLogIn.Content = JeopardyGame.Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = JeopardyGame.Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = JeopardyGame.Properties.Resources.btnEnter;
                    btnRegistrer.Content = JeopardyGame.Properties.Resources.btnRegistrer;
                }
            }

        }
        private void InstanceSingleton(UserPOJO currentUser, PlayerPOJO currenPlayer, NotifyUserAvailabilityClient context)
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
            userSingleton.proxyForAvailability = context;
        }


        public void Response(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriendsInstance).Response(status, idFriend);
        }

        private void ClicSingOut(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            PrincipalPage principalPage = new PrincipalPage();
            this.NavigationService.Navigate(principalPage);
            NavigationService.RemoveBackEntry();
        }
    }
    
}


