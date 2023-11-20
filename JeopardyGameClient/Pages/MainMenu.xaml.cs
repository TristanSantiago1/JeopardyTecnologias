using JeopardyGame.DialogWindows;
using Microsoft.Win32;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using JeopardyGame.Views;
using System;
using System.Runtime.Remoting.Contexts;
using System.ServiceModel;
using JeopardyGame.ServidorServiciosJeopardy;
using JeopardyGame.Helpers;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para MainMenu.xaml
    /// </summary>
    public partial class MainMenu : Page
    { 
        public MainMenu()
        {            
            InitializeComponent();
            PrepareMainMenuWindow();
        }

        private void PrepareMainMenuWindow()
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
       
        private void ClickSingOut(object sender, MouseButtonEventArgs e)
        {
            if(new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.tbxSignOut, Application.Current.MainWindow).closeWindow)
            {
                CleanGlobalParameters();
                LogInUser logInPage = new LogInUser();
                this.NavigationService.Navigate(logInPage);
                NavigationService.RemoveBackEntry();
            }
        }

        private void CleanGlobalParameters()
        {
            FriendList.CleanDictionary();
            UserSingleton currentUserSingleton = UserSingleton.GetMainUser();
            currentUserSingleton.proxyForAvailability.PlayerIsNotAvailable(currentUserSingleton.IdUser, currentUserSingleton.IdPlayer);
            currentUserSingleton.proxyForAvailability.Close();
            currentUserSingleton.proxyForAvailability = null;
            UserSingleton.CleanSingleton();
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
                    bttEnterGame.Content = Properties.Resources.bttEnterGame;
                    bttFriends.Content = Properties.Resources.bttFriends;
                    bttNewGame.Content = Properties.Resources.bttNewGame;
                    lblProfileInformation.Content = Properties.Resources.lblProfileInformation;
                }else if(selectedLanguage == "en")
                {
                    bttEnterGame.Content = Properties.Resources.bttEnterGame;
                    bttFriends.Content = Properties.Resources.bttFriends;
                    bttNewGame.Content = Properties.Resources.bttNewGame;
                    lblProfileInformation.Content = Properties.Resources.lblProfileInformation;
                }
            }
        }       

        private void ClickUserProfile(object sender, MouseButtonEventArgs e)
        {
            ProfileDataConsult profileInformation = new ProfileDataConsult();
            this.NavigationService.Navigate(profileInformation);
            NavigationService.RemoveBackEntry();
        }

        private void lstWinners_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            ///Que hace esto???

        }

        private void CLickButtonNewGame(object sender, RoutedEventArgs e)
        {
            LobbyPage lobbyGamePage = new LobbyPage();
            this.NavigationService.Navigate(lobbyGamePage);
            NavigationService.RemoveBackEntry();

        }
        private void CLickButtonEnterGame(object sender, RoutedEventArgs e)
        {
            enterGameWithCode enterGameWithCode = new enterGameWithCode();
            this.NavigationService.Navigate(enterGameWithCode);
            NavigationService.RemoveBackEntry();
        }
        private void CLickButtonFriendsList(object sender, RoutedEventArgs e)
        {
            FriendManager friendManager = new FriendManager();
            this.NavigationService.Navigate(friendManager);
            NavigationService.RemoveBackEntry();
        }


    }
}
