using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.IO;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LobbyPage.xaml
    /// </summary>
    public partial class LobbyPage : Page, ILobbyActionsCallback
    {
        private Random generateAleatory;
        private int roomCode;
        private bool isAdminOfLobby;
        private InstanceContext context;      
        private List <PlayerInLobby> currentPlayerInLobby;       
        private UserSingleton userSingleton = UserSingleton.GetMainUser();

        public LobbyPage()
        {
            InitializeComponent();
            isAdminOfLobby = true;
            PrepareWindow();
           
        }
        public LobbyPage(int codigoPartida)
        {
            InitializeComponent();
            roomCode = codigoPartida;
            isAdminOfLobby = false;
            PrepareWindow() ;
        }

        private void PrepareWindow()
        {
            context = new InstanceContext(this);
            LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
            rdbIndividual.IsChecked = true;
            if (isAdminOfLobby)
            {                
                generateAleatory = new Random();
                int aleatoryNumber = generateAleatory.Next(10000, 99999);               
                roomCode = aleatoryNumber;
                lobbyActionsClient.CreateNewLobby(roomCode, userSingleton.IdUser);
                currentPlayerInLobby = lobbyActionsClient.GetAllCurrentPlayerInLobby(roomCode, userSingleton.IdUser).ObjectSaved.ToList();
            }
            else
            {
                GenericClassOfint succesful = lobbyActionsClient.joinLobby(roomCode, userSingleton.IdUser);
                if(succesful.ObjectSaved == 1)
                {
                    lobbyActionsClient.NotifyPlayerInlobby(roomCode, userSingleton.IdUser);
                    currentPlayerInLobby = lobbyActionsClient.GetAllCurrentPlayerInLobby(roomCode, userSingleton.IdUser).ObjectSaved.ToList();
                    if (currentPlayerInLobby.Count == 4)
                    {
                        rdbTeam.IsChecked = true;
                        rdbIndividual.IsChecked= false;
                    }                   
                }
                else
                {
                    ShowInfoMessage("Error", "NO se pudo unir a la partida");                   
                }
            }
            lblAleatoryCode.Content = roomCode;
            SetPlayerInLabels();
        }

        private void SetPlayerInLabels()
        {
            CleanAllLabels();
            if (currentPlayerInLobby != null)
            {
                foreach (var item in currentPlayerInLobby)
                {
                    switch (item.NumPlayers)
                    {
                        case 1:
                            ShowPlayer(lblLeaderBlue, lblLeaderRed, brdLeaderBlue, brdLeaderRed, item.UserName, item.Side);
                            break;
                        case 2:
                            ShowPlayer(lblPlayer2Blue, lblPlayer2Red, brdPlayer2Blue, brdPlayer2Red, item.UserName, item.Side);
                            break;
                        case 3:
                            ShowPlayer(lblPlayer3Blue, lblPlayer3Red, brdPlayer3Blue, brdPlayer3Red, item.UserName, item.Side);
                            break;
                        case 4:
                            ShowPlayer(lblPlayer4Blue, lblPlayer4Red, brdPlayer4Blue, brdPlayer4Red,item.UserName, item.Side);
                            break;
                    }
                }
            }          
        }

        private void CleanAllLabels()
        {
            brdLeaderBlue.Visibility = Visibility.Hidden;
            brdLeaderRed.Visibility = Visibility.Hidden;
            brdPlayer2Blue.Visibility = Visibility.Hidden;
            brdPlayer2Red.Visibility = Visibility.Hidden;
            brdPlayer3Blue.Visibility = Visibility.Hidden;
            brdPlayer3Red.Visibility = Visibility.Hidden;
            brdPlayer4Blue.Visibility = Visibility.Hidden;
            brdPlayer4Red.Visibility = Visibility.Hidden;
            lblLeaderBlue.Content = string.Empty;
            lblLeaderRed.Content = string.Empty;
            lblPlayer2Blue.Content = string.Empty;
            lblPlayer2Red.Content = string.Empty;
            lblPlayer3Blue.Content = string.Empty;
            lblPlayer3Red.Content = string.Empty;
            lblPlayer4Blue.Content = string.Empty;
            lblPlayer4Red.Content = string.Empty;   
        }

        private void ShowPlayer(Label labelBlue, Label labelRed, Border borderBlue, Border borderRed, String userName, int side)
        {
            if (side == 1)
            {
                labelBlue.Content = userName;
                borderBlue.Visibility = Visibility.Visible;
                borderRed.Visibility = Visibility.Hidden;
            }
            else
            {
                labelRed.Content = userName;
                borderBlue.Visibility= Visibility.Visible;
                borderRed.Visibility= Visibility.Hidden;
            }
        }
        void ILobbyActionsCallback.UpdateJoinedPlayerResponse(GenericClassOfArrayOfPlayerInLobbyxY0a3WX4 playersInTheLobby)
        {
            bool iAmActive = false;
            currentPlayerInLobby = playersInTheLobby.ObjectSaved.ToList();
            foreach (var item in currentPlayerInLobby)
            {
                if (item.IdPlayer == userSingleton.IdPlayer)
                {
                    iAmActive = true;
                }
            }
            if (iAmActive)
            {
                SetPlayerInLabels();
            }
            else
            {
                ShowInfoMessage("Info", "Te han eliminado de la partida");
                CloseWindow();
            }            
        }

        public void DissolvingLobby()
        {
            ShowInfoMessage("Info", "The match has been cancelelled");
            CloseWindow();
        }

        public void MakeTeamsResponse(bool teamUp)
        {
            DoOrUndoTeams(teamUp);
            SetPlayerInLabels();
        }

        private void DoOrUndoTeams(bool teamUp)
        {
            List<PlayerInLobby> auxiliarPlayerInlobby = new List<PlayerInLobby>();
            if (teamUp)
            {
                rdbIndividual.IsChecked = false;
                rdbTeam.IsChecked = true;
                foreach (var item in currentPlayerInLobby)
                {
                    var updatedPlayer = item;
                    if (item.NumPlayers <= 2)
                    {
                        updatedPlayer.Side = 1;                        
                        auxiliarPlayerInlobby.Add(updatedPlayer);
                        break;
                    }
                    else
                    {
                        updatedPlayer.Side = 2;                        
                        auxiliarPlayerInlobby.Add(updatedPlayer);
                        break;
                    }            
                }
            }
            else
            {
                rdbIndividual.IsChecked = true;
                rdbTeam.IsChecked = false;
                foreach (var item in currentPlayerInLobby)
                {                   
                    var updatedPlayer = item;
                    updatedPlayer.Side = 1;                   
                    auxiliarPlayerInlobby.Add(updatedPlayer);
                }
            }
            currentPlayerInLobby.Clear();
            currentPlayerInLobby.AddRange(auxiliarPlayerInlobby);
        }
        public void UpdateTeamSide(GenericClassOfArrayOfPlayerInLobbyxY0a3WX4 playersInTheLobby)
        {
            currentPlayerInLobby = playersInTheLobby.ObjectSaved.ToList();
            SetPlayerInLabels();
        }
        

        private void clicListFriends(object sender, MouseButtonEventArgs e)
        {
            ActiveFriends friendsListPage = LogInUser.ActiveFriendsInstance;
            this.NavigationService.Navigate(friendsListPage);
            friendsListPage.StartPage();
        }      

        private void CLicButtonCancelGame(object sender, RoutedEventArgs e)
        {
            ShowWarningMessage(JeopardyGame.Properties.Resources.txbWarningTitle, JeopardyGame.Properties.Resources.tbxSignOutGame);
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
                ClosingLobby();
            }
        }

        private void ShowInfoMessage(String title, String message)
        {
            Window currentPage = App.Current.MainWindow;
            DialogWindows.InfoMessageDW confirmationWindow = new DialogWindows.InfoMessageDW(title, message);
            double left = currentPage.Left + (currentPage.Width - confirmationWindow.Width) / 2;
            double top = currentPage.Top + (currentPage.Height - confirmationWindow.Height) / 2;
            confirmationWindow.Left = left;
            confirmationWindow.Top = top;
            confirmationWindow.ShowDialog();        
        }
        private void ClosingLobby()
        {
            LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
            if (isAdminOfLobby)
            {
                lobbyActionsClient.DissolveLobby(roomCode, userSingleton.IdUser);
            }
            else
            {
                lobbyActionsClient.leaveLobby(roomCode, userSingleton.IdUser);
            }
            CloseWindow();
        }
        private void CloseWindow()
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
        }

        private void ClicEliminatePlayerFromLobby(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby)
            {
                String userName = null;
                Image cross = (Image)sender;
                StackPanel stcChoosen = (StackPanel)cross.Parent;
                foreach (var item in stcChoosen.Children)
                {
                    if (item is Label)
                    {
                        Label label = item as Label;
                        userName = label.Content.ToString();
                    }
                }
                if (userName != null)
                {
                    var userChanged = EliminateUserFromlobby(userName);
                    if (userChanged.IdUser != 0)
                    {
                        LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                        lobbyActionsClient.EliminatePlayerFromMatch(roomCode, userChanged.IdUser);                        
                    }
                }
                SetPlayerInLabels();
            }
        }
        private PlayerInLobby EliminateUserFromlobby(String userName)
        {
            PlayerInLobby playerInLobby = new PlayerInLobby();
            playerInLobby.IdUser = 0;
            foreach (var item in currentPlayerInLobby)
            {
                if (item.UserName.Equals(userName))
                {
                    var updatedSide = item;                   
                    currentPlayerInLobby.Remove(item);                   
                    playerInLobby = item;
                    break;
                }
            }
            return playerInLobby;
        }

        private void ClicChangeTeamSide(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby && currentPlayerInLobby.Count == 4 && (bool)rdbTeam.IsChecked)
            {
                String userName = null;
                Border borderChossen = (Border)sender;
                StackPanel stcChoosen = (StackPanel)borderChossen.Child;
                foreach (var item in stcChoosen.Children)
                {
                    if (item is Label)
                    {
                        Label label = item as Label;
                        userName = label.Content.ToString();
                    }
                }
                if (userName != null)
                {
                    var userChanged = ChangeSideOfPlayer(userName);
                    if (userChanged.IdUser != 0)
                    {
                        LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                        lobbyActionsClient.ChangePlayerSide(roomCode, userChanged.IdUser, userChanged.Side);
                        SetPlayerInLabels();
                    }
                }
            }
        }

        private PlayerInLobby ChangeSideOfPlayer(String userName)
        {
            PlayerInLobby playerInLobby = new PlayerInLobby();
            playerInLobby.IdUser = 0;
            foreach (var item in currentPlayerInLobby)
            {
                if (item.UserName.Equals(userName))
                {                    
                    var updatedSide = item;
                    if (item.Side == 1)
                    {
                        updatedSide.Side = 2;
                    }
                    else
                    {
                        updatedSide.Side = 1;
                    }
                    currentPlayerInLobby.Remove(item);
                    currentPlayerInLobby.Add(updatedSide);
                    playerInLobby = updatedSide;
                    break;
                }
            }
            return playerInLobby;
        }

        private void ClicChoseModality(object sender, RoutedEventArgs e)
        {
            if (isAdminOfLobby)
            {
                bool teamUp = false;
                LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);             
                if ((bool)rdbIndividual.IsChecked && currentPlayerInLobby.Count == 4)
                {
                    rdbIndividual.IsChecked = false;
                    rdbTeam.IsChecked = true;
                    teamUp = true;
                    lobbyActionsClient.MakeTeams(roomCode, userSingleton.IdUser, teamUp);                    
                }
                else
                {
                    teamUp = false;
                    rdbIndividual.IsChecked = true;
                    rdbTeam.IsChecked = false;
                    lobbyActionsClient.MakeTeams(roomCode, userSingleton.IdUser, teamUp);
                }
                if (currentPlayerInLobby.Count < 4) { MessageBox.Show("Deben de ser 4 jugadores"); }
                DoOrUndoTeams(teamUp);
                SetPlayerInLabels();
            }
        }

    }    
}
