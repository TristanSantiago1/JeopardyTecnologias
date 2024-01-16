using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using Label = System.Windows.Controls.Label;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using JeopardyGame.ReGexs;
using System.Text.RegularExpressions;
using System.Net.Sockets;
using System.Threading;
using System.Security.Cryptography;

namespace JeopardyGame.Pages
{
    public partial class LobbyPage : Page, ILobbyServiceCallback, ILiveChatServiceCallback, INotifyAvailabilityServiceCallback
    {
        private ActiveFriends activeUsersInstance = null;
        private LiveChat liveChatInstance = null;
        private const int NULL_INT_VALUE = 0;
        private const int TEAM_LEFT_SIDE = 1;
        private const int TEMA_RIGHT_SIDE = 2;
        public int roomCode;
        private bool isAdminOfLobby;
        private List<PlayerInLobby> currentPlayerInLobby = new List<PlayerInLobby>();
        private UserSingleton userSingleton;

        public LobbyPage()
        {
            InitializeComponent();
            isAdminOfLobby = true;
            Loaded += LoadedPrepareWindowAdmin;
        }

        private void LoadedPrepareWindowAdmin(object sender, RoutedEventArgs e)
        {
            PrepareWindow();
            LobbyOperationClient lobbyActionsProxy = new();
            lobbyActionsProxy.SelectQuestionsForGameAsync(roomCode);
        }

        public LobbyPage(int roomCode)
        {
            InitializeComponent();
            this.roomCode = roomCode;
            isAdminOfLobby = false;
            Loaded += LoadedPrepareWindowPlayer;
        }


        private void LoadedPrepareWindowPlayer(object sender, RoutedEventArgs e)
        {
            PrepareWindow();
        }

        private void PrepareWindow()
        {
            userSingleton = UserSingleton.GetMainUser();
            try
            {
                InstanceContext context = new InstanceContext(this);

                LobbyServiceClient lobbyActionsProxy = new (context);

                if (isAdminOfLobby)
                {
                    CreateNewlobby(lobbyActionsProxy);
                }
                else
                {
                    JoinLobby(lobbyActionsProxy);
                }
                GetPlayers();
                PrepareChatAndFriends();
                lblAleatoryCode.Content = roomCode;
                SetPlayerInLabels();
                NotifyFriendsIamPlaying();
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailtToEnterTheLobby + " : " + Properties.Resources.lblWithoutConection);
            }

        }

        private void PrepareChatAndFriends()
        {
            if (liveChatInstance == null)
            {
                liveChatInstance = new LiveChat();
                liveChatInstance.StartPage(isAdminOfLobby, roomCode, this);
            }
            if (activeUsersInstance == null)
            {
                activeUsersInstance = new ActiveFriends(userSingleton.IdUser);
                activeUsersInstance.StartPage(this);
            }
        }

        private void CreateNewlobby(LobbyServiceClient lobbyActionsProxy)
        {
            try
            {
                int aleatoryNumber =  GetSpecificResource.GetAleatoryNumber(10000, 99999);
                roomCode = aleatoryNumber;
                var newLobby = lobbyActionsProxy.CreateNewLobby(roomCode, userSingleton.IdUser);
                if(newLobby.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    throw new CommunicationException();
                }
                GameCodeContainer.RoomCode = roomCode;
            }
            catch (EndpointNotFoundException)
            {
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException)
            {
                throw new CommunicationObjectFaultedException();
            }
            catch (TimeoutException)
            {
                throw new TimeoutException();
            }
            catch (CommunicationException)
            {
                throw new CommunicationException();
            }
        }

        private void JoinLobby(LobbyServiceClient lobbyActionsProxy)
        {
            try
            {
                GenericClassOfint successful = lobbyActionsProxy.JoinIntoLobby(roomCode, userSingleton.IdUser);
                if (successful.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    LobbyOperationClient lobbyActionsOperationProxy = new();
                    lobbyActionsOperationProxy.NotifyPlayerInLobby(roomCode, userSingleton.IdUser);
                }
                chbTeamUp.IsEnabled = false;
            }
            catch (EndpointNotFoundException)
            {
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException)
            {
                throw new CommunicationObjectFaultedException();
            }
            catch (TimeoutException)
            {
                throw new TimeoutException();
            }
            catch (CommunicationException)
            {
                throw new CommunicationException();
            }
        }

        private void GetPlayers()
        {
            try
            {
                LobbyOperationClient lobbyActionsProxy = new();
                var playersInLobby = lobbyActionsProxy.GetAllCurrentPlayerInLobby(roomCode, userSingleton.IdUser);
                if (playersInLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    currentPlayerInLobby = playersInLobby.ObjectSaved.ToList();
                }
                
            }
            catch (EndpointNotFoundException)
            {
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException)
            {
                throw new CommunicationObjectFaultedException();
            }
            catch (TimeoutException)
            {
                throw new TimeoutException();
            }
            catch (CommunicationException)
            {
                throw new CommunicationException();
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
                            ShowPlayer(lblPlayer4Blue, lblPlayer4Red, brdPlayer4Blue, brdPlayer4Red, item.UserName, item.SideOfTeam);
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
                borderBlue.Visibility = Visibility.Hidden;
                borderRed.Visibility = Visibility.Visible;
            }
        }

        public void UpdateJoinedPlayerResponse(GenericClassOfArrayOfPlayerInLobbyxY0a3WX4 playersInTheLobby)
        {
            try
            {
                if (playersInTheLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    currentPlayerInLobby = playersInTheLobby.ObjectSaved.ToList();
                    if (currentPlayerInLobby.Exists(pla => pla.IdPlayer == userSingleton.IdPlayer))
                    {
                        SetPlayerInLabels();
                        if ((bool)chbTeamUp.IsChecked)
                        {
                            chbTeamUp.IsChecked = false;
                        }
                    }
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbWarningTitle, Properties.Resources.lblEliminateFromLobby, Window.GetWindow(this), DialogWindowManager.INFORMATION);
                        CloseWindow();
                    }
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbWarningTitle, Properties.Resources.KickedFromLobby, Window.GetWindow(this), DialogWindowManager.ERROR);
                    CloseWindow();
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
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
            }
        }

        private void ClickEliminatePlayerFromLobby(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby)
            {
                string userName = GetUserNameFromLabelByImage(sender);
                if (!string.IsNullOrEmpty(userName))
                {
                    var userChanged = EliminateUserFromLobby(userName);
                    if (userChanged.IdUser != NULL_INT_VALUE)
                    {
                        try
                        {
                            LobbyServiceClient lobbyActionsCallBackProxy = new LobbyServiceClient(new InstanceContext(this));
                            lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                            LobbyOperationClient lobbyActionsProxy = new();
                            lobbyActionsProxy.EliminatePlayerFromLobby(roomCode, userChanged.IdUser);
                        }
                        catch (EndpointNotFoundException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToEliminatePlayerFromLobby + " : " + Properties.Resources.lblEndPointNotFound);
                        }
                        catch (CommunicationObjectFaultedException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToEliminatePlayerFromLobby + " : " + Properties.Resources.lblComunicationException);
                        }
                        catch (TimeoutException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToEliminatePlayerFromLobby + " : " + Properties.Resources.lblTimeException);
                        }
                        catch (CommunicationException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToEliminatePlayerFromLobby + " : " + Properties.Resources.lblWithoutConection);
                        }
                    }
                }
            }
        }


        private PlayerInLobby EliminateUserFromLobby(String userName)
        {
            PlayerInLobby playerInLobby = new PlayerInLobby();
            playerInLobby.IdUser = NULL_INT_VALUE;
            var playerToEliminated =  currentPlayerInLobby.Find(item => item.UserName.Equals(userName));
            if (playerToEliminated.IdPlayer != 0)
            {
                currentPlayerInLobby.Remove(playerToEliminated);
                playerInLobby = playerToEliminated;
            }
            return playerInLobby;
        }

        private String GetUserNameFromLabelByImage(object sender)
        {
            Image imgChosen = (Image)sender;
            StackPanel stcChosen = GetParentOfGraphicInterfaceComponent.FindParent<StackPanel>(imgChosen);
            Label label = stcChosen.Children.OfType<Label>().FirstOrDefault();
            return label?.Content?.ToString();
        }


        private void ClickTeamUp(object sender, RoutedEventArgs e)
        {
            if (isAdminOfLobby)
            {
                try
                {
                    LobbyServiceClient lobbyActionsCallBackProxy = new (new InstanceContext(this));
                    lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                    if (currentPlayerInLobby.Count == 4)
                    {
                        DoOrUndoTeams(true);
                        SetPlayerInLabels();
                        LobbyTeamsManagerClient lobbyActionsProxy = new();
                        lobbyActionsProxy.MakeTeams(roomCode, userSingleton.IdUser, true);
                    }
                    else
                    {
                        chbTeamUp.IsChecked = false;
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.MustBe4Players, Window.GetWindow(this), DialogWindowManager.ERROR);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this), DialogWindowManager.ERROR);
                    chbTeamUp.IsChecked = false;
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this), DialogWindowManager.ERROR);
                    chbTeamUp.IsChecked = false;
                }
                catch (TimeoutException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this), DialogWindowManager.ERROR);
                    chbTeamUp.IsChecked = false;
                }
                catch (CommunicationException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this), DialogWindowManager.ERROR);
                    chbTeamUp.IsChecked = false;
                }
            }
        }

        private void ClickNoTeamUp(object sender, RoutedEventArgs e)
        {
            if (isAdminOfLobby)
            {
                try
                {
                    LobbyServiceClient lobbyActionsCallBackProxy = new (new InstanceContext(this));
                    lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                    DoOrUndoTeams(false);
                    SetPlayerInLabels();
                    LobbyTeamsManagerClient lobbyActionsProxy = new();
                    lobbyActionsProxy.MakeTeams(roomCode, userSingleton.IdUser, false);
                }
                catch (EndpointNotFoundException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this), DialogWindowManager.ERROR);
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this), DialogWindowManager.ERROR);
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (TimeoutException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this), DialogWindowManager.ERROR);
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (CommunicationException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this), DialogWindowManager.ERROR);
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
            }
        }

        public void MakeTeamsResponse(bool teamUp)
        {
            DoOrUndoTeams(teamUp);
            SetPlayerInLabels();
        }

        private void DoOrUndoTeams(bool teamUp)
        {
            if (teamUp)
            {
                currentPlayerInLobby = currentPlayerInLobby.Select(player =>
                {
                    if (player.NumberOfPlayerInLobby <= TEMA_RIGHT_SIDE)
                    {
                        player.SideOfTeam = TEAM_LEFT_SIDE;
                    }
                    else
                    {
                        player.SideOfTeam = TEMA_RIGHT_SIDE;
                    }
                    return player;
                }).ToList();
            }
            else
            {
                currentPlayerInLobby = currentPlayerInLobby.Select(player =>
                {
                    player.SideOfTeam = TEAM_LEFT_SIDE;
                    return player;
                }).ToList();
            }
            if (!isAdminOfLobby)
            {
                chbTeamUp.IsChecked = teamUp;
            }
        }


        private void ClickChangeTeamSide(object sender, MouseButtonEventArgs e)
        {
            if (isAdminOfLobby && currentPlayerInLobby.Count == 4 && (bool)chbTeamUp.IsChecked)
            {
                string userName = GetUserNameFromLabelByBorder(sender);
                if (userName != null)
                {
                    PlayerInLobby userChanged = ChangeSideOfPlayer(userName);
                    if (userChanged.IdUser != NULL_INT_VALUE)
                    {
                        ChangePlayerTeam(userChanged);
                        SetPlayerInLabels();
                    }
                }
            }
        }

        private void ChangePlayerTeam(PlayerInLobby userChanged)
        {
            try
            {
                LobbyServiceClient lobbyActionsCallBackProxy = new (new InstanceContext(this));
                lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                LobbyTeamsManagerClient lobbyActionsProxy = new();
                lobbyActionsProxy.ChangePlayerSide(roomCode, userChanged.IdUser, userChanged.SideOfTeam);
            }
            catch (EndpointNotFoundException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this), DialogWindowManager.ERROR);
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this), DialogWindowManager.ERROR);
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (TimeoutException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this), DialogWindowManager.ERROR);
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (CommunicationException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this), DialogWindowManager.ERROR);
                ChangeSideOfPlayer(userChanged.UserName);
            }
        }

        private PlayerInLobby ChangeSideOfPlayer(String userName)
        {
            currentPlayerInLobby = currentPlayerInLobby.Select(player =>
            {
                if (player.UserName.Equals(userName))
                {
                    if (player.SideOfTeam == TEAM_LEFT_SIDE)
                    {
                        player.SideOfTeam = TEMA_RIGHT_SIDE;
                    }
                    else
                    {
                        player.SideOfTeam = TEAM_LEFT_SIDE;
                    }
                }
                return player;
            }).ToList();
            PlayerInLobby player = currentPlayerInLobby.Find(playerForUserName => playerForUserName.UserName.Equals(userName));
            return player;
        }

        private String GetUserNameFromLabelByBorder(object sender)
        {
            Border brdChosen = (Border)sender;
            StackPanel stcChosen = (StackPanel)brdChosen.Child;
            Label label = stcChosen.Children.OfType<Label>().FirstOrDefault();
            return label?.Content?.ToString();
        }

        public void UpdateTeamSide(GenericClassOfArrayOfPlayerInLobbyxY0a3WX4 playersInTheLobby)
        {
            if (playersInTheLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                currentPlayerInLobby = playersInTheLobby.ObjectSaved.ToList();
                SetPlayerInLabels();
            }
        }

        private void CLicButtonCancelGame(object sender, RoutedEventArgs e)
        {
            if (DialogWindowManager.ShowWindowConfirmation(Properties.Resources.txbWarningTitle, Properties.Resources.txbCancel, Window.GetWindow(this)))
            {
                try
                {
                    LobbyOperationClient lobbyActionsProxy = new();
                    if (isAdminOfLobby)
                    {
                        lobbyActionsProxy.DissolveLobby(roomCode, userSingleton.IdUser);
                    }
                    else
                    {
                        lobbyActionsProxy.LeaveLobby(roomCode, userSingleton.IdUser);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                }
                catch (TimeoutException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                }
                catch (CommunicationException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                }
                CloseWindow();
            }
        }
        private void CloseWindow()
        {
            if (userSingleton.IdState != 3)
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
                NavigationService.RemoveBackEntry();
            }
            else
            {
                DeleteSingleton();
                PrincipalPage principalPage = new PrincipalPage();
                this.NavigationService.Navigate(principalPage);
                NavigationService.RemoveBackEntry();
            }
        }

        public void DissolvingLobby()
        {
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbWarningTitle, Properties.Resources.GameCancelled, Window.GetWindow(this), DialogWindowManager.INFORMATION);
            CloseWindow();
        }

        private void DeleteSingleton()
        {
            try
            {
                GuestPlayerManagerClient guestPlayerManagerProxy = new();
                guestPlayerManagerProxy.DeleteGuest(userSingleton.IdUser);
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
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
            }
            UserSingleton.CleanSingleton();
        }

        private void ClickOpenChat(object sender, MouseButtonEventArgs e)
        {
            if (liveChatInstance == null)
            {
                liveChatInstance = new LiveChat();
                liveChatInstance.StartPage(isAdminOfLobby, roomCode, this);
            }
            liveChatInstance.RenewLiveChatCallBack();
            frmActiveFriendsAndChat.Content = liveChatInstance;
            grdActiveUser.Visibility = Visibility.Visible;
        }
       
        public void ReceiveMessage(GenericClassOfMessageChatxY0a3WX4 message)
        {
            ((ILiveChatServiceCallback)liveChatInstance).ReceiveMessage(message);
        }
        private void ClickListFriends(object sender, MouseButtonEventArgs e)
        {
            if (activeUsersInstance == null)
            {
                activeUsersInstance = new ActiveFriends(userSingleton.IdUser);
                activeUsersInstance.StartPage(this);
            }
            activeUsersInstance.RenewFriendCallBackChannel(userSingleton.IdUser);
            frmActiveFriendsAndChat.Content = activeUsersInstance;
            grdActiveUser.Visibility = Visibility.Visible;
        }

        private void NotifyFriendsIamPlaying()
        {
            try
            {
                NotifyAvailabilityOperationsClient availabilityUserProxy = new();
                availabilityUserProxy.UserIsPlaying(userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
        }

        public void CloseSubFrameOfChatAndFriends()
        {
            frmActiveFriendsAndChat.Content = null;
            grdActiveUser.Visibility = Visibility.Hidden;
        }
        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyAvailabilityServiceCallback)activeUsersInstance).ResponseOfPlayerAvailability(status, idFriend);
        }


        public void NotifyQuestionsAreReady(int codeEvent)
        {
            if (codeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                bttStartGame.IsEnabled = true;
            }
            else
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblNotGame, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
        }


        private void ClickStartGame(object sender, RoutedEventArgs e)
        {
            if ((bool)chbTeamUp.IsChecked)
            {
                if (currentPlayerInLobby.Where(player => player.SideOfTeam == TEAM_LEFT_SIDE).ToList().Count == currentPlayerInLobby.Where(player => player.SideOfTeam == TEMA_RIGHT_SIDE).ToList().Count)
                {
                    CallMethodToStartGame();
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources._2PlayerByTeam, Window.GetWindow(this), DialogWindowManager.ERROR);
                }
            }
            else if (currentPlayerInLobby.Count > 1)
            {
                CallMethodToStartGame();
            }
            else
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.MoreThan1Player, Window.GetWindow(this), DialogWindowManager.ERROR);
            }
        }

        private void CallMethodToStartGame()
        {
            try
            {
                LobbyOperationClient lobbyActionsProxy = new();
                lobbyActionsProxy.StartGame(roomCode);
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblWithoutConection);
            }
        }

        public void NotifyGameWillStart(QuestionCardInformation[] questionsForGame)
        {
            GameBoard game = new GameBoard(questionsForGame.ToList(), roomCode);
            this.NavigationService.Navigate(game);
            NavigationService.RemoveBackEntry();
        }

        public static class GameCodeContainer
        {
            public static int RoomCode { get; set; }
        }
        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow, DialogWindowManager.ERROR);
            ReturnToLogin();
        }

        private void ReturnToLogin()
        {
            UserSingleton.CleanSingleton();
            LogInUser logInUserPage = new LogInUser();
            this.NavigationService.Navigate(logInUserPage);
            NavigationService.RemoveBackEntry();

        }

    }
}
