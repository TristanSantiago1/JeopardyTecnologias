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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LobbyPage.xaml
    /// </summary>
    public partial class LobbyPage : Page, ILobbyActionsCallback, ILiveChatCallback, INotifyUserAvailabilityCallback
    {
        private ActiveFriends activeUsersInstance = null;
        private LiveChat liveChatInstance = null;
        private const int NULL_INT_VALUE = 0;
        private const int TEAM_LEFT_SIDE = 1;
        private const int TEMA_RIGHT_SIDE = 2;
        private Random generateAleatory;
        private int roomCode;
        private bool isAdminOfLobby;
        private List<PlayerInLobby> currentPlayerInLobby = new List<PlayerInLobby>();
        private UserSingleton userSingleton;
        private Window dialogMessage;

        public LobbyPage()
        {
            InitializeComponent();
            isAdminOfLobby = true;
            Loaded += LoadedPrepareWindowAdmin;
        }

        private void LoadedPrepareWindowAdmin(object sender, RoutedEventArgs e)
        {
            PrepareWindow();
            LobbyActionsOperationClient lobbyActionsProxy = new();
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

                LobbyActionsClient lobbyActionsProxy = new LobbyActionsClient(context);

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

        private void CreateNewlobby(LobbyActionsClient lobbyActionsProxy)
        {
            try
            {
                generateAleatory = new Random();
                int aleatoryNumber = generateAleatory.Next(10000, 99999);
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

        private void JoinLobby(LobbyActionsClient lobbyActionsProxy)
        {
            try
            {
                GenericClassOfint successful = lobbyActionsProxy.JoinIntoLobby(roomCode, userSingleton.IdUser);
                if (successful.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    LobbyActionsOperationClient lobbyActionsOperationProxy = new();
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
                LobbyActionsOperationClient lobbyActionsProxy = new();
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
                        dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.lblEliminateFromLobby, Window.GetWindow(this));
                        CloseWindow();
                    }
                }
                else
                {
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.KickedFromLobby, Window.GetWindow(this));
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
                            LobbyActionsClient lobbyActionsCallBackProxy = new LobbyActionsClient(new InstanceContext(this));
                            lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                            LobbyActionsOperationClient lobbyActionsProxy = new();
                            lobbyActionsProxy.EliminatePlayerFromMatch(roomCode, userChanged.IdUser);
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
            foreach (var item in from item in currentPlayerInLobby where item.UserName.Equals(userName) select item)
            {
                currentPlayerInLobby.Remove(item);
                playerInLobby = item;
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
                    LobbyActionsClient lobbyActionsCallBackProxy = new LobbyActionsClient(new InstanceContext(this));
                    lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                    if (currentPlayerInLobby.Count == 4)
                    {
                        DoOrUndoTeams(true);
                        SetPlayerInLabels();
                        LobbyActionsOperationClient lobbyActionsProxy = new();
                        lobbyActionsProxy.MakeTeams(roomCode, userSingleton.IdUser, true);
                    }
                    else
                    {
                        chbTeamUp.IsChecked = false;
                        dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.MustBe4Players, Window.GetWindow(this));
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
                    chbTeamUp.IsChecked = false;
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this));
                    chbTeamUp.IsChecked = false;
                }
                catch (TimeoutException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this));
                    chbTeamUp.IsChecked = false;
                }
                catch (CommunicationException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this));
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
                    LobbyActionsClient lobbyActionsCallBackProxy = new LobbyActionsClient(new InstanceContext(this));
                    lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                    DoOrUndoTeams(false);
                    SetPlayerInLabels();
                    LobbyActionsOperationClient lobbyActionsProxy = new();
                    lobbyActionsProxy.MakeTeams(roomCode, userSingleton.IdUser, false);
                }
                catch (EndpointNotFoundException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this));
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (TimeoutException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this));
                    DoOrUndoTeams(true);
                    SetPlayerInLabels();
                }
                catch (CommunicationException ex)
                {
                    Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this));
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
                currentPlayerInLobby = currentPlayerInLobby.Select(pla =>
                {
                    if (pla.NumberOfPlayerInLobby <= TEMA_RIGHT_SIDE)
                    {
                        pla.SideOfTeam = TEAM_LEFT_SIDE;
                    }
                    else
                    {
                        pla.SideOfTeam = TEMA_RIGHT_SIDE;
                    }
                    return pla;
                }).ToList();
            }
            else
            {
                currentPlayerInLobby = currentPlayerInLobby.Select(pla =>
                {
                    pla.SideOfTeam = TEAM_LEFT_SIDE;
                    return pla;
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
                LobbyActionsClient lobbyActionsCallBackProxy = new LobbyActionsClient(new InstanceContext(this));
                lobbyActionsCallBackProxy.RenewLobbyCallBack(roomCode, userSingleton.IdUser);

                LobbyActionsOperationClient lobbyActionsProxy = new();
                lobbyActionsProxy.ChangePlayerSide(roomCode, userChanged.IdUser, userChanged.SideOfTeam);
            }
            catch (EndpointNotFoundException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblComunicationException, Window.GetWindow(this));
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (TimeoutException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblTimeException, Window.GetWindow(this));
                ChangeSideOfPlayer(userChanged.UserName);
            }
            catch (CommunicationException ex)
            {
                Exceptions.ExceptionHandlerForLogs.LogException(ex, Exceptions.ExceptionDictionary.ERROR);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToManageTeams + " : " + Properties.Resources.lblWithoutConection, Window.GetWindow(this));
                ChangeSideOfPlayer(userChanged.UserName);
            }
        }

        private PlayerInLobby ChangeSideOfPlayer(String userName)
        {
            currentPlayerInLobby = currentPlayerInLobby.Select(pla =>
            {
                if (pla.UserName.Equals(userName))
                {
                    if (pla.SideOfTeam == TEAM_LEFT_SIDE)
                    {
                        pla.SideOfTeam = TEMA_RIGHT_SIDE;
                    }
                    else
                    {
                        pla.SideOfTeam = TEAM_LEFT_SIDE;
                    }
                }
                return pla;
            }).ToList();
            PlayerInLobby player = currentPlayerInLobby.Find(x => x.UserName.Equals(userName));
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
            if (new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.txbCancel, Window.GetWindow(this)).CloseWindow)
            {
                try
                {
                    LobbyActionsOperationClient lobbyActionsProxy = new();
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
            dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.GameCancelled, Window.GetWindow(this));
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
            ((ILiveChatCallback)liveChatInstance).ReceiveMessage(message);
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
                AvailabilityUserManagmentClient availabilityUserProxy = new();
                availabilityUserProxy.PlayerIsPlaying(userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToNotifyYourFriends + " : " + Properties.Resources.lblEndPointNotFound, Window.GetWindow(this));
            }
        }

        public void CloseSubFrameOfChatAndFriends()
        {
            frmActiveFriendsAndChat.Content = null;
            grdActiveUser.Visibility = Visibility.Hidden;
        }
        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            ((INotifyUserAvailabilityCallback)activeUsersInstance).ResponseOfPlayerAvailability(status, idFriend);
        }


        public void NotifyQuestionsAreReady(int codeEvent)
        {
            if (codeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                bttStartGame.IsEnabled = true;
            }
            else
            {
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblNotGame, Window.GetWindow(this));
            }
        }


        private void ClickStartGame(object sender, RoutedEventArgs e)
        {
            if ((bool)chbTeamUp.IsChecked)
            {
                if (currentPlayerInLobby.Where(pl => pl.SideOfTeam == TEAM_LEFT_SIDE).ToList().Count == currentPlayerInLobby.Where(pl => pl.SideOfTeam == TEMA_RIGHT_SIDE).ToList().Count)
                {
                    CallMethodToStartGame();
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources._2PlayerByTeam, Window.GetWindow(this));
                }
            }
            else if (currentPlayerInLobby.Count > 1)
            {
                CallMethodToStartGame();
            }
            else
            {
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.MoreThan1Player, Window.GetWindow(this));
            }
        }

        private void CallMethodToStartGame()
        {
            try
            {
                LobbyActionsOperationClient lobbyActionsProxy = new();
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
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
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
