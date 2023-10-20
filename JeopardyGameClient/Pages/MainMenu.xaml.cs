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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para MainMenu.xaml
    /// </summary>
    public partial class MainMenu : Page, ServidorServiciosJeopardy.INotifyUserAvailabilityCallback
    {
        public MainMenu()
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

            UserSingleton user = UserSingleton.GetMainUser();
            string userName = user.UserName;


        }
        private void CLicButtonNewGame(object sender, RoutedEventArgs e)
        {
            LobbyPage lobbyGamePage = new LobbyPage();  
            this.NavigationService.Navigate(lobbyGamePage);
            NavigationService.RemoveBackEntry();

        }
        private void CLicButtonEnterGame(object sender, RoutedEventArgs e)
        {

        }
        private void CLicButtonFriendsList(object sender, RoutedEventArgs e)
        {

        }
        private void ClicSingOut(object sender, MouseButtonEventArgs e)
        {
            ShowWarningMessage(JeopardyGame.Properties.Resources.txbWarningTitle, JeopardyGame.Properties.Resources.txbWarningMessCloseWin);
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
                    bttEnterGame.Content = JeopardyGame.Properties.Resources.bttEnterGame;
                    bttFriends.Content = JeopardyGame.Properties.Resources.bttFriends;
                    bttNewGame.Content = JeopardyGame.Properties.Resources.bttNewGame;
                }



            }

        }

        private void ShowWarningMessage(String title, String message)
        {
            Window currentPage = App.Current.MainWindow;
            DialogWindows.ConfirmationDW confirmationWindow = new DialogWindows.ConfirmationDW(title, message);
            double left = currentPage.Left + (currentPage.Width - confirmationWindow.Width) / 2;
            double top = currentPage.Top + (currentPage.Height - confirmationWindow.Height) / 2;
            confirmationWindow.Left = left;
            confirmationWindow.Top = top;
            confirmationWindow.ShowDialog();
            if (confirmationWindow.closeWindow)
            {
                FriendList.CleanDictionary();
                UserSingleton us = UserSingleton.GetMainUser();
                us.proxyForAvailability.PlayerIsNotAvailable(us.IdUser, us.IdPlayer);
                us.proxyForAvailability.Close();
                us.proxyForAvailability = null;
                UserSingleton.CleanSingleton();
                LogInUser logInPage = new LogInUser();
                this.NavigationService.Navigate(logInPage);
                NavigationService.RemoveBackEntry();
            }
        }

        ActiveFriends ActiveFriends = new ActiveFriends();

        public void Response(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)ActiveFriends).Response(status, idFriend);
        }

    }
}
