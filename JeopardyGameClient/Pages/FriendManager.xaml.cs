using JeopardyGame.DialogWindows;
using JeopardyGame.Exceptions;
using JeopardyGame.Helpers;
using JeopardyGame.ReGexs;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Reflection;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;
using System.Windows.Threading;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para friendManager.xaml
    /// </summary>
    public partial class FriendManager : Page, IFriendManagerActionsCallback
    {
        private List<FriendBasicInformation> friends;
        private List<FriendBasicInformation> friendRequests;
        private List<FriendBasicInformation> otherPeople;
        private String textLeftButton = Properties.Resources.bttReport;
        private String textRightButton = Properties.Resources.bttEliminate;
        private DispatcherTimer timer;
        private int leftTime = 5;
        private const int NOT_STATUS = 0;
        private const int MY_FRIENDS = 1;
        private const int FRIENDS_REQUEST = 2;
        private const int OTHER_PEOPLE = 3;
        private const int DECLINED_REQUEST = 0;
        private const int SEND_REQUEST = 1;
        private const int ACCEPT_REQUEST = 2;
        private int typeUserConsult = MY_FRIENDS;
        private Window dialogMessage;
        private UserSingleton userSingleton;

        public FriendManager()
        {
            InitializeComponent();
            Loaded += LoadedPrepareWindow;
        }

        private void LoadedPrepareWindow(object sender, RoutedEventArgs e)
        {
            userSingleton = UserSingleton.GetMainUser();
            try
            {
                InstanceContext context = new InstanceContext(this);
                FriendManagerActionsClient friendActionsProxy = new FriendManagerActionsClient(context);
                friendActionsProxy.RegisterFriendManagerUser(userSingleton.IdUser);
                GetAllTables();
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
        }


        private void GetAllTables()
        {
            try
            {
                UserSingleton userSingleton = UserSingleton.GetMainUser();
                if (userSingleton != null)
                {
                    UserPOJO userConsulted = new UserPOJO()
                    {
                        IdUser = userSingleton.IdUser,
                        EmailAddress = userSingleton.Email,
                        Name = userSingleton.Name,
                        Password = userSingleton.Password,
                        UserName = userSingleton.Name,
                    };
                    ConsultFriendsClient friendManagerProxy = new ConsultFriendsClient();
                    var friendsConsulted = friendManagerProxy.GetUserFriends(userConsulted);
                    if (friendsConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var friendRequestsConsulted = friendManagerProxy.GetUserFriendRequests(userConsulted);
                        if (friendRequestsConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            var otherPeopleConsulted = friendManagerProxy.GetUsersNotFriends(userConsulted);
                            if (otherPeopleConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                friends = friendsConsulted.ObjectSaved.ToList();
                                friendRequests = friendRequestsConsulted.ObjectSaved.ToList();
                                otherPeople = otherPeopleConsulted.ObjectSaved.ToList();
                            }
                            else
                            {
                                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
                            }
                        }
                        else
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                            ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
                        }
                    }
                    else
                    {
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToRecoverFriends, Application.Current.MainWindow);
                        ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
                    }
                    friendManagerProxy.Close();
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
                    ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
                ClickBackToMenu(imgGoBackToMenu, new MouseButtonEventArgs(Mouse.PrimaryDevice, 0, MouseButton.Left));
            }
        }

        private void SetCards()
        {
            stpFrinedsManagerList.Children.Clear();
            List<FriendBasicInformation> listOfUsers;
            switch (typeUserConsult)
            {
                case MY_FRIENDS:
                    listOfUsers = new List<FriendBasicInformation>(friends); 
                    break;
                case FRIENDS_REQUEST:
                    listOfUsers = new List<FriendBasicInformation>(friendRequests); 
                    break;
                case OTHER_PEOPLE:
                    listOfUsers = new List<FriendBasicInformation>(otherPeople);
                    break;
                default:
                    listOfUsers = new List<FriendBasicInformation>();
                    break;
            }
            foreach (var item in listOfUsers)
            {
                Border brdCard = new Border();
                FriendCardManagementWindow friendCardManagement = new FriendCardManagementWindow(item.IdUser, item.UserName, typeUserConsult, textLeftButton, textRightButton, this);
                brdCard.Child = friendCardManagement;
                stpFrinedsManagerList.Children.Add(SetBorderCardStyle(brdCard));
            }
        }


        private Border SetBorderCardStyle(Border brdCard)
        {
            brdCard.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#D9D9D9"));
            brdCard.Background.Opacity = 0.20;
            brdCard.CornerRadius = new CornerRadius(15);
            brdCard.Margin = new Thickness(20, 10, 5, 10);
            brdCard.Width = 1030;
            brdCard.MaxWidth = 1130;
            brdCard.Height = 70;
            brdCard.HorizontalAlignment = HorizontalAlignment.Left;
            return brdCard;
        }

        private void ClickConsultMyFriends(object sender, MouseButtonEventArgs e)
        {
            typeUserConsult = MY_FRIENDS;
            textLeftButton = Properties.Resources.bttReport;
            textRightButton = Properties.Resources.bttEliminate;
            SelectLabel(lblMyFriends);
            if (friends == null)
            {
                GetAllTables();
            }
            SetCards();
        }

        private void ClickConsultFriendSolicitudes(object sender, MouseButtonEventArgs e)
        {
            typeUserConsult = FRIENDS_REQUEST;
            textLeftButton = Properties.Resources.bttAcceptFriendRequest;
            textRightButton = Properties.Resources.bttDeclineFriendRequest;
            SelectLabel(lblRequests);
            if (friendRequests == null)
            {
                GetAllTables();
            }
            SetCards();
        }

        private void ClickConsultMorePeople(object sender, MouseButtonEventArgs e)
        {
            typeUserConsult = OTHER_PEOPLE;
            textLeftButton = Properties.Resources.bttAddFriend;
            textRightButton = Properties.Resources.bttReport;
            SelectLabel(lblMorePeople);
            if (otherPeople == null)
            {
                GetAllTables();
            }
            SetCards();
        }

        private void SelectLabel(Label selectedLabel)
        {
            lblMyFriends.FontSize = 36;
            lblMyFriends.Foreground = new SolidColorBrush(Colors.White);
            lblRequests.FontSize = 36;
            lblRequests.Foreground = new SolidColorBrush(Colors.White);
            lblMorePeople.FontSize = 36;
            lblMorePeople.Foreground = new SolidColorBrush(Colors.White);
            selectedLabel.FontSize = 40;
            selectedLabel.Foreground = new SolidColorBrush(Colors.LightGray);
        }
        
        public void ReportUser(int idPlayer)
        {      
            try
            {
                FriendManagerActionsClient friendActionsCallBackProxy = new FriendManagerActionsClient(new InstanceContext(this));
                friendActionsCallBackProxy.RenewFriendManagerUserCallBack(userSingleton.IdUser);

                FriendManagerActionOperationsClient friendActionsProxy = new();
                var result = friendActionsProxy.BanUser(idPlayer, userSingleton.IdUser);
                if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {                    
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblSuccesReportedUser, Application.Current.MainWindow);
                }                                                                                                 
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToReportAUser, Application.Current.MainWindow);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblComunicationException);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public void EliminateFriend(int idUserFriendToEliminate)
        {
            try
            {
                FriendManagerActionsClient friendActionsCallBackProxy = new FriendManagerActionsClient(new InstanceContext(this));
                friendActionsCallBackProxy.RenewFriendManagerUserCallBack(userSingleton.IdUser);

                FriendManagerActionOperationsClient friendActionsProxy = new();
                friendActionsProxy.EliminateUserFromFriends(userSingleton.IdPlayer, idUserFriendToEliminate);
                String userName = String.Empty;
                foreach (var item in friends)
                {
                    if (item.IdUser == idUserFriendToEliminate)
                    {
                        friends.Remove(item);
                        userName = item.UserName;
                        break;
                    }
                }
                if (!otherPeople.Any(pla => pla.UserName.Equals(userName)))
                {
                    FriendBasicInformation newFriend = new FriendBasicInformation();
                    newFriend.IdUser = idUserFriendToEliminate;
                    newFriend.UserName = userName;
                    newFriend.IdStatusAvailability = NOT_STATUS;
                    otherPeople.Add(newFriend);
                }
                SetCards();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToEliminateFriend + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToEliminateFriend + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToEliminateFriend + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToEliminateFriend + " : " + Properties.Resources.lblComunicationException);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public void SentFriendRequest(int idUserRequested)
        {
            try
            {
                FriendManagerActionsClient friendActionsCallBackProxy = new FriendManagerActionsClient(new InstanceContext(this));
                friendActionsCallBackProxy.RenewFriendManagerUserCallBack(userSingleton.IdUser); 

                FriendManagerActionOperationsClient friendActionsProxy = new();
                friendActionsProxy.SendFriendRequest(userSingleton.IdPlayer, idUserRequested);
                FriendBasicInformation item = otherPeople.FirstOrDefault(pla => pla.IdUser == idUserRequested);
                if (item.IdUser == idUserRequested)
                {
                    otherPeople.Remove(item);
                }
                SetCards();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToSentTheFriendRequest + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToSentTheFriendRequest + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToSentTheFriendRequest + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToSentTheFriendRequest + " : " + Properties.Resources.lblComunicationException);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public void AcceptFriendRequest(int idUserRequesting, String userName)
        {
            try
            {
                FriendManagerActionsClient friendActionsCallBackProxy = new FriendManagerActionsClient(new InstanceContext(this));
                friendActionsCallBackProxy.RenewFriendManagerUserCallBack(userSingleton.IdUser);

                FriendManagerActionOperationsClient friendActionsProxy = new();
                friendActionsProxy.AcceptFriendRequest(userSingleton.IdPlayer, idUserRequesting);
                foreach (var item in friendRequests)
                {
                    if (item.IdUser == idUserRequesting)
                    {
                        friendRequests.Remove(item);
                        break;
                    }
                }
                if (!friends.Any(pla => pla.IdUser == idUserRequesting))
                {
                    FriendBasicInformation newFriend = new FriendBasicInformation();
                    newFriend.IdUser = idUserRequesting;
                    newFriend.UserName = userName;
                    newFriend.IdStatusAvailability = NOT_STATUS;
                    friends.Add(newFriend);
                }
                SetCards();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToAccepInvitation + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToAccepInvitation + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToAccepInvitation + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToAccepInvitation + " : " + Properties.Resources.lblComunicationException);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public void DeclineFriendRequest(int idUserRequesting, String userName)
        {
            try
            {
                FriendManagerActionsClient friendActionsCallBackProxy = new FriendManagerActionsClient(new InstanceContext(this));
                friendActionsCallBackProxy.RenewFriendManagerUserCallBack(userSingleton.IdUser);

                FriendManagerActionOperationsClient friendActionsProxy = new();
                friendActionsProxy.DeclineFriendRequest(userSingleton.IdPlayer, idUserRequesting);
                foreach (var item in friendRequests)
                {
                    if (item.IdUser == idUserRequesting)
                    {
                        friendRequests.Remove(item);
                        break;
                    }
                }
                if (!otherPeople.Any(pla => pla.IdUser == idUserRequesting))
                {
                    FriendBasicInformation newFriend = new FriendBasicInformation();
                    newFriend.IdUser = idUserRequesting;
                    newFriend.UserName = userName;
                    newFriend.IdStatusAvailability = NOT_STATUS;
                    otherPeople.Add(newFriend);
                }
                SetCards();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToDeclineRequest + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToDeclineRequest + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToDeclineRequest + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToDeclineRequest + " : " + Properties.Resources.lblComunicationException);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToReportAUser + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public void ResponseReported(int numReports)
        {
            dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.MessageReported + numReports.ToString(), Application.Current.MainWindow);
        }

        public void ResponseRequestAction(int idUser, int requestStatus, string userName)
        {           
            switch (requestStatus)
            {
                case DECLINED_REQUEST:                   
                    ManageResponse(friendRequests, otherPeople,idUser,userName);
                    lblDeclineRequestMessage.Content = userName + " " + Properties.Resources.MessageFriRequeDeclined;
                    StartTimer();
                    break;
                case SEND_REQUEST:                    
                    ManageResponse(otherPeople, friendRequests, idUser, userName);
                    break;
                case ACCEPT_REQUEST:                   
                    ManageResponse(friendRequests, friends, idUser, userName);
                    break;
            }
            SetCards();
        }

        private void ManageResponse(List<FriendBasicInformation> deleteFromList, List<FriendBasicInformation> addToList, int idUserOperation, string userName)
        {
            foreach (var item in deleteFromList)
            {
                if (item.IdUser == idUserOperation)
                {
                    deleteFromList.Remove(item);
                    break;
                }
            }
            if(!addToList.Any(pla => pla.IdUser == idUserOperation))
            {
                FriendBasicInformation newFriend = new FriendBasicInformation();
                newFriend.IdUser = idUserOperation;
                newFriend.UserName = userName;
                newFriend.IdStatusAvailability = NOT_STATUS;
                addToList.Add(newFriend);
            }            
        }

        public void ResponseEliminationFromFriends(int idPlayerWhoEliminatedYou)
        {
            String userName = String.Empty;
            foreach (var item in friends)
            {
                if (item.IdUser == idPlayerWhoEliminatedYou)
                {
                    friends.Remove(item);
                    userName = item.UserName;
                    break;
                }
            }
            if (!otherPeople.Any(pla => pla.IdUser == idPlayerWhoEliminatedYou))
            {
                FriendBasicInformation newFriend = new FriendBasicInformation();
                newFriend.IdUser = idPlayerWhoEliminatedYou;
                newFriend.UserName = userName;
                newFriend.IdStatusAvailability = NOT_STATUS;
                otherPeople.Add(newFriend);
            }            
            SetCards();
        }             

        private void ClickSearchPlayerButton(object sender, RoutedEventArgs e)
        {
            String userNameToSearch = txbUserToSearch.Text;
            if (!userNameToSearch.Equals(Properties.Resources.bttSearch))
            {
                stpFrinedsManagerList.Children.Clear();
                List<FriendBasicInformation> listOfUsers;
                switch (typeUserConsult)
                {
                    case MY_FRIENDS:
                        listOfUsers = new List<FriendBasicInformation>(friends);
                        break;
                    case FRIENDS_REQUEST:
                        listOfUsers = new List<FriendBasicInformation>(friendRequests);
                        break;
                    case OTHER_PEOPLE:
                        listOfUsers = new List<FriendBasicInformation>(otherPeople);
                        break;
                    default:
                        listOfUsers = new List<FriendBasicInformation>();
                        break;
                }
                foreach (FriendBasicInformation item in listOfUsers)
                {
                    if (item.UserName == userNameToSearch)
                    {
                        Border brdCard = new Border();
                        FriendCardManagementWindow friendCardManagement = new FriendCardManagementWindow(item.IdUser, item.UserName, typeUserConsult, textLeftButton, textRightButton, this);
                        brdCard.Child = friendCardManagement;
                        stpFrinedsManagerList.Children.Add(SetBorderCardStyle(brdCard));
                    }
                }
            }    
        }

        private void StartTimer()
        {
            leftTime = 5;   
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if (leftTime > 0)
            {
                leftTime--;
            }
            else
            {
                lblDeclineRequestMessage.Content = string.Empty;
                timer.Stop();
            }
        }

        private void OverSearchBar(object sender, MouseEventArgs e)
        {
            txbUserToSearch.Text = string.Empty;
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
        }

        private void ClickBackToMenu(object sender, MouseButtonEventArgs e)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            try
            {
                FriendManagerActionOperationsClient friendActionsProxy = new();
                friendActionsProxy.UnregisterFriendManagerUser(userSingleton.IdUser);
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
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }

        public void ResponseNewPlayerJusJoin(int idUser, string userName)
        {
            if(idUser != 0 && !string.IsNullOrEmpty(userName)) 
            {
                if(!otherPeople.Any(pl => pl.IdUser == idUser))
                {
                    otherPeople.Add(new FriendBasicInformation (){IdUser = idUser, EmailAddress = string.Empty, UserName = userName, IdStatusAvailability = 1 });
                    SetCards();
                }
            }
        }

    }
}
