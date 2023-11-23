using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using JeopardyGame.UserControls;
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
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Application = System.Windows.Application;
using Label = System.Windows.Controls.Label;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LobbyPage.xaml
    /// </summary>
    public partial class LobbyPage : Page, ILobbyActionsCallback, ILiveChatCallback
    {
        private static ActiveFriends activeUsersControls;
        private static LiveChat liveChatUser;
        private const int NULL_INT_VALUE = 0;
        private const int TEAM_LEFT_SIDE = 1;
        private const int TEMA_RIGHT_SIDE = 2;
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
        public LobbyPage(int roomCode)
        {
            InitializeComponent();
            this.roomCode = roomCode;
            isAdminOfLobby = false;
            PrepareWindow() ;
        }

        private void PrepareWindow()
        {
            activeUsersControls = LogInUser.ActiveFriendsInstance;
            liveChatUser = new LiveChat();
            context = new InstanceContext(this);
            LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);            
            chbTeamUp.IsChecked = false;
            if (isAdminOfLobby)
            {                
                generateAleatory = new Random();
                int aleatoryNumber = generateAleatory.Next(10000, 99999);               
                roomCode = aleatoryNumber;
                lobbyActionsClient.CreateNewLobby(roomCode, userSingleton.IdUser);
            }
            else
            {
                GenericClassOfint successful = lobbyActionsClient.JoinLobby(roomCode, userSingleton.IdUser);
                if(successful.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    lobbyActionsClient.NotifyPlayerInLobby(roomCode, userSingleton.IdUser);                    
                }
                else
                {
                    new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, "Error", Application.Current.MainWindow);
                    return;
                }
            }
            var playersInLobby = lobbyActionsClient.GetAllCurrentPlayerInLobby(roomCode, userSingleton.IdUser);
            if(playersInLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                currentPlayerInLobby = playersInLobby.ObjectSaved.ToList();
                ThereAreTeams();
            }
            else
            {
                return;
            }
            lblAleatoryCode.Content = roomCode;
            SetPlayerInLabels();
        }

        private void ThereAreTeams()
        {
            foreach (var item in currentPlayerInLobby)
            {
                if (item.SideOfTeam == TEMA_RIGHT_SIDE)
                {
                    chbTeamUp.IsChecked = true;
                    break;
                }
            }
        }

        private void SetPlayerInLabels()
        {
            CleanAllLabels();
            if (currentPlayerInLobby != null)
            {
                foreach (var item in currentPlayerInLobby)
                {
                    switch (item.NumberOfPlayerInLobby)
                    {
                        case 1:
                            ShowPlayer(lblLeaderBlue, lblLeaderRed, brdLeaderBlue, brdLeaderRed, item.UserName, item.SideOfTeam);
                            break;
                        case 2:
                            ShowPlayer(lblPlayer2Blue, lblPlayer2Red, brdPlayer2Blue, brdPlayer2Red, item.UserName, item.SideOfTeam);
                            break;
                        case 3:
                            ShowPlayer(lblPlayer3Blue, lblPlayer3Red, brdPlayer3Blue, brdPlayer3Red, item.UserName, item.SideOfTeam);
                            break;
                        case 4:
                            ShowPlayer(lblPlayer4Blue, lblPlayer4Red, brdPlayer4Blue, brdPlayer4Red,item.UserName, item.SideOfTeam);
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
            if (side == TEAM_LEFT_SIDE)
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
            if(playersInTheLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT) 
            {
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
                    new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, "Tehan eliminado del lobby", Application.Current.MainWindow);
                    CloseWindow();
                }
            }                       
        }


        public void DissolvingLobby()
        {
            new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, "Se ha cancelado la partida", Application.Current.MainWindow);
            CloseWindow();
        }

        public void MakeTeamsResponse(bool teamUp)
        {
            DoOrUndoTeams(teamUp);
            SetPlayerInLabels();
        }

        private void DoOrUndoTeams(bool teamUp)
        {
            List<PlayerInLobby> auxiliaryPlayerLobby = new List<PlayerInLobby>();
            if (teamUp)
            {
                chbTeamUp.IsChecked = true;
                foreach (var item in currentPlayerInLobby)
                {
                    var updatedPlayer = item;
                    if (item.NumberOfPlayerInLobby <= TEAM_LEFT_SIDE)
                    {
                        updatedPlayer.SideOfTeam = TEAM_LEFT_SIDE;                        
                        auxiliaryPlayerLobby.Add(updatedPlayer);
                        break;
                    }
                    else
                    {
                        updatedPlayer.SideOfTeam = TEMA_RIGHT_SIDE;                        
                        auxiliaryPlayerLobby.Add(updatedPlayer);
                        break;
                    }            
                }
            }
            else
            {
                chbTeamUp.IsChecked = false;
                foreach (var item in currentPlayerInLobby)
                {                   
                    var updatedPlayer = item;
                    updatedPlayer.SideOfTeam = TEAM_LEFT_SIDE;                   
                    auxiliaryPlayerLobby.Add(updatedPlayer);
                }
            }
            currentPlayerInLobby.Clear();
            currentPlayerInLobby.AddRange(auxiliaryPlayerLobby);
        }

        public void UpdateTeamSide(GenericClassOfArrayOfPlayerInLobbyxY0a3WX4 playersInTheLobby)
        {
            if (playersInTheLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                currentPlayerInLobby = playersInTheLobby.ObjectSaved.ToList();
                SetPlayerInLabels();
            }
        }
        

        private void ClickEliminatePlayerFromLobby(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby)
            {
                string userName = GetUserNameFromLabel(sender);
                if (userName != null)
                {
                    var userChanged = EliminateUserFromLobby(userName);
                    if (userChanged.IdUser != NULL_INT_VALUE)
                    {
                        LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                        lobbyActionsClient.EliminatePlayerFromMatch(roomCode, userChanged.IdUser);                        
                    }
                }
                SetPlayerInLabels();
            }
        }

        private PlayerInLobby EliminateUserFromLobby(String userName)
        {
            PlayerInLobby playerInLobby = new PlayerInLobby();
            playerInLobby.IdUser = NULL_INT_VALUE;
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

        private void ClickChangeTeamSide(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby && currentPlayerInLobby.Count == 4 && (bool)chbTeamUp.IsChecked)
            {
                string userName = GetUserNameFromLabel(sender);
                if (userName != null)
                {
                    var userChanged = ChangeSideOfPlayer(userName);
                    if (userChanged.IdUser != NULL_INT_VALUE)
                    {
                        LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                        lobbyActionsClient.ChangePlayerSide(roomCode, userChanged.IdUser, userChanged.SideOfTeam);
                        SetPlayerInLabels();
                    }
                }
            }
        }

        private String GetUserNameFromLabel(object sender)
        {
            String userName = null;
            Border brdChosen = (Border)sender;
            StackPanel stcChosen = (StackPanel)brdChosen.Child;
            foreach (var item in stcChosen.Children)
            {
                if (item is Label)
                {
                    Label label = item as Label;
                    userName = label.Content.ToString();
                }
            }
            return userName;
        }

        private void ClickNoTeamUp(object sender, RoutedEventArgs e)
        {
            if (isAdminOfLobby)
            {
                bool teamUp = false;
                LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                lobbyActionsClient.MakeTeams(roomCode, userSingleton.IdUser, teamUp);
            }
        }

        private void ClickTeamUp(object sender, RoutedEventArgs e)
        {
            if (isAdminOfLobby)
            {
                if (currentPlayerInLobby.Count == 4)
                {
                    bool teamUp = true;
                    LobbyActionsClient lobbyActionsClient = new LobbyActionsClient(context);
                    lobbyActionsClient.MakeTeams(roomCode, userSingleton.IdUser, teamUp);
                    DoOrUndoTeams(teamUp);
                    SetPlayerInLabels();
                }
                else
                {
                    new ErrorMessageDialogWindow("Error", "Deben haber almenos 4 jugadores", Application.Current.MainWindow);
                }
            }
        }

        private PlayerInLobby ChangeSideOfPlayer(String userName)
        {
            PlayerInLobby playerInLobby = new PlayerInLobby();
            playerInLobby.IdUser = NULL_INT_VALUE;
            foreach (var item in currentPlayerInLobby)
            {
                if (item.UserName.Equals(userName))
                {                    
                    var updatedSide = item;
                    if (item.SideOfTeam == TEAM_LEFT_SIDE)
                    {
                        updatedSide.SideOfTeam = TEMA_RIGHT_SIDE;
                    }
                    else
                    {
                        updatedSide.SideOfTeam = TEAM_LEFT_SIDE;
                    }
                    currentPlayerInLobby.Remove(item);
                    currentPlayerInLobby.Add(updatedSide);
                    playerInLobby = updatedSide;
                    break;
                }
            }
            return playerInLobby;
        }

        private void ClickOpenChat(object sender, MouseButtonEventArgs e)
        {
            frmActiveFriendsAndChat.Content = liveChatUser;
            liveChatUser.StartPage(isAdminOfLobby, roomCode, this);            
            grdActiveUser.Visibility = Visibility.Visible;
        }

        private void ClickListFriends(object sender, MouseButtonEventArgs e)
        {
            frmActiveFriendsAndChat.Content = activeUsersControls;
            activeUsersControls.StartPage(this);        
            grdActiveUser.Visibility = Visibility.Visible;
        }

        private void CLicButtonCancelGame(object sender, RoutedEventArgs e)
        {
            if (new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.txbWarningMessCloseWin, Application.Current.MainWindow).closeWindow)
            {
                ClosingLobby();
            }
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
                lobbyActionsClient.LeaveLobby(roomCode, userSingleton.IdUser);
            }
            CloseWindow();

        }
        private void CloseWindow()
        {
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }

        public void CloseFriendList()
        {
            frmActiveFriendsAndChat.Content = null; ;
            grdActiveUser.Visibility = Visibility.Collapsed;
        }       

        public void CloseLiveChat()
        {
            frmActiveFriendsAndChat.Content = null;
            grdActiveUser.Visibility = Visibility.Collapsed;
        }

        public void ReceiveMessage(GenericClassOfMessageChatxY0a3WX4 message)
        {
            ((ILiveChatCallback)liveChatUser).ReceiveMessage(message);
        }

        private void bttStartGame_Click(object sender, RoutedEventArgs e)
        {
            GameBoard gameBoard = new GameBoard();
            this.NavigationService.Navigate(gameBoard);
            NavigationService.RemoveBackEntry();
        }
    }
}
