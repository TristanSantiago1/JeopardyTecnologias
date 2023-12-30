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
        private Window dialogMessage;

        public MainMenu()
        {            
           
            InitializeComponent();
            LoadPlayersData();
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
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
            }
        }
        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
        }
        private void LanguageButtonClick(object sender, RoutedEventArgs e)
        {
            if (LanguageOptions.Visibility == Visibility.Visible)
            {
                LanguageOptions.Visibility = Visibility.Visible;
            }
            else
            {
                LanguageOptions.Visibility = Visibility.Visible;
            }
        }

        private void SelectLanguage(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.Button selectedButton = sender as Button;
            string selectedLanguage = selectedButton.Tag.ToString();

            App.ChangeLanguage(selectedLanguage);
            RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
            key.SetValue("SelectedLanguage", selectedLanguage);
            key.Close();
            UpdateInterfaceResources(selectedLanguage);

            LanguageButton.Content = selectedButton.Content;

            LanguageOptions.Visibility = Visibility.Collapsed;
        }
        private void UpdateInterfaceResources(string selectedLanguage)
        {
            switch (selectedLanguage)
            {
                case "es-MX":
                    if (bttEnterGame != null)
                        bttEnterGame.Content = Properties.Resources.bttEnterGame;

                    if (bttFriends != null)
                        bttFriends.Content = Properties.Resources.bttFriends;

                    if (bttNewGame != null)
                        bttNewGame.Content = Properties.Resources.bttNewGame;

                    if (lblProfileInformation != null)
                        lblProfileInformation.Content = Properties.Resources.lblProfileInformation;
                    break;

                case "en-EU":
                default:
                    if(bttEnterGame != null)
                         bttEnterGame.Content = Properties.Resources.bttEnterGame;

                    if (bttFriends != null)
                        bttFriends.Content = Properties.Resources.bttFriends;

                    if (bttNewGame != null)
                        bttNewGame.Content = Properties.Resources.bttNewGame;

                    if (lblProfileInformation != null)
                        lblProfileInformation.Content = Properties.Resources.lblProfileInformation;
                    break;
            }
        }
    }
}
