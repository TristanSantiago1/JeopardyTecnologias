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
using System.Collections.Generic;

using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;

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
            LoadPlayersData();
        }

        private void PrepareMainMenuWindow()
        {
            RegistryKey keyLanguage = Registry.CurrentUser.OpenSubKey("Software\\JeopardyGame");
            if (keyLanguage != null)
            {
                string selectedLanguage = keyLanguage.GetValue("SelectedLanguage") as string;
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
            if(new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.tbxSignOut, Application.Current.MainWindow).CloseWindow)
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
            NotifyUserIsNotAvailableClient userAvailabilityProxy = new();
            userAvailabilityProxy.PlayerIsNotAvailable(currentUserSingleton.IdUser);
            currentUserSingleton.proxyForAvailability = null;
            UserSingleton.CleanSingleton();
        }
        
        private void ClickSelectLanguage(object sender, SelectionChangedEventArgs e)
        {
            if (LanguajeComboBox.SelectedItem != null)
            {
                ComboBoxItem selectedItem = (ComboBoxItem)LanguajeComboBox.SelectedItem;
                string selectedLanguage = selectedItem.Tag.ToString();
                App.ChangeLanguage(selectedLanguage);
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
            ProfileDataConsult profileConsultPage = new ProfileDataConsult();
            this.NavigationService.Navigate(profileConsultPage);
            NavigationService.RemoveBackEntry();
        }


        private void CLickButtonNewGame(object sender, RoutedEventArgs e)
        {
            LobbyPage lobbyGamePage = new LobbyPage();
            this.NavigationService.Navigate(lobbyGamePage);
            NavigationService.RemoveBackEntry();

        }

        private void CLickButtonEnterGame(object sender, RoutedEventArgs e)
        {
            Views.EnterWithGameCode codeWindow = new Views.EnterWithGameCode();
            codeWindow.WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            codeWindow.Show();
            enterGameWithCode codePage = new enterGameWithCode(Window.GetWindow(this));
            codeWindow.contentFrame.NavigationService.Navigate(codePage);
        }

        private void CLickButtonFriendsList(object sender, RoutedEventArgs e)
        {
            FriendManager friendManager = new FriendManager();
            this.NavigationService.Navigate(friendManager);
            NavigationService.RemoveBackEntry();
        }

        private void LoadPlayersData()
        {
            try
            {
                ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                UserSingleton userSingleton = UserSingleton.GetMainUser();
                var playersInfo = consultInformationProxy.GetPlayersInformation(userSingleton.IdUser);
                if (playersInfo.CodeEvent ==  ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    foreach (var playerInfo in playersInfo.ObjectSaved)
                    {
                        string playerName = playerInfo.Name;
                        long score = playerInfo.Points;

                        ListBoxItem item = new ListBoxItem();
                        item.Content = $"{playerName}: {score}";
                        lstWinners.Items.Add(item);
                    }
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

    }
}
