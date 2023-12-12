using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ReGexs;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
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
    public partial class FriendManager : Page, INotifyUserActionFriendsManagerCallback
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
        NotifyUserActionFriendsManagerClient notifyUserActionFriendsManagerClient;
        private InstanceContext context;
        private Window dialogMessage;

        public FriendManager()
        {
            InitializeComponent();
            PrepareWindow();
        }

        private void PrepareWindow()
        {
            context = new InstanceContext(this);
            notifyUserActionFriendsManagerClient = new NotifyUserActionFriendsManagerClient(context);
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.RegisterFriendManagerUser(userSingleton.IdUser);
            GetAllTables();
            SetCards();
        }

        private void GetAllTables()
        {
            FriendsManagerClient proxyFriend = new FriendsManagerClient();
            ConsultInformationClient proxyUser = new ConsultInformationClient();
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            var userConsulted = proxyUser.ConsultUserById(userSingleton.IdUser);
            if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                var friendsConsulted = proxyFriend.GetUserFriends(userConsulted.ObjectSaved);
                if (friendsConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var friendRequestsConsulted = proxyFriend.GetUserFriendRequests(userConsulted.ObjectSaved);
                    if (friendRequestsConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var otherPeopleConsulted = proxyFriend.GetUsersNotFriends(userConsulted.ObjectSaved);
                        if (otherPeopleConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            friends = friendsConsulted.ObjectSaved.ToList();
                            friendRequests = friendRequestsConsulted.ObjectSaved.ToList();
                            otherPeople = otherPeopleConsulted.ObjectSaved.ToList();
                        }
                        else
                        {
                            ExceptionHandler.HandleException(otherPeopleConsulted.CodeEvent, string.Empty);
                        }
                    }
                    else
                    {
                        ExceptionHandler.HandleException(friendRequestsConsulted.CodeEvent, string.Empty);
                    }                   
                }
                else
                {
                    ExceptionHandler.HandleException(friendsConsulted.CodeEvent, string.Empty);
                }
                proxyFriend.Close();
                proxyUser.Close();
            }
            else
            {
                ExceptionHandler.HandleException(userConsulted.CodeEvent, string.Empty);
                //LOGICA DESPUES, REGRESAR AUNA VENTANA ANTEIROR SEGURMANTE.
            }
        }

        private void SetCards()
        {
            stcFrinedsManagerList.Children.Clear();
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
                stcFrinedsManagerList.Children.Add(SetBorderCardStyle(brdCard));
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

        public void ReportUser(int idPlayer, string userNmae)
        {
            notifyUserActionFriendsManagerClient.ReportPlayer(idPlayer, userNmae);
        }

        public void EliminateFriend(int idUserFriendToEliminate)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.EliminateUserFromFriends(userSingleton.IdPlayer, idUserFriendToEliminate);
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
            FriendBasicInformation newFriend = new FriendBasicInformation();
            newFriend.IdUser = idUserFriendToEliminate;
            newFriend.UserName = userName;
            
            newFriend.IdStatusAvailability = NOT_STATUS;
            otherPeople.Add(newFriend);
            SetCards();
        }

        public void SentFriendRequest(int idUserRequested, String userName)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.SendFriendRequest(userSingleton.IdPlayer, idUserRequested);
            foreach (var item in otherPeople)
            {
                if (item.IdUser == idUserRequested)
                {
                    otherPeople.Remove(item);
                    break;
                }
            }
            SetCards();
        }

        public void AcceptFriendRequest(int idUserRequesting, String userName)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.AcceptFriendRequest(userSingleton.IdPlayer, idUserRequesting);
            foreach (var item in friendRequests)
            {
                if (item.IdUser == idUserRequesting)
                {
                    friendRequests.Remove(item);
                    break;
                }
            }
            FriendBasicInformation newFriend = new FriendBasicInformation();
            newFriend.IdUser = idUserRequesting;
            newFriend.UserName = userName;
            newFriend.IdStatusAvailability = NOT_STATUS;
            friends.Add(newFriend);
            SetCards();
        }

        public void DeclineFriendRequest(int idUserRequesting, String userName)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.DeclineFriendRequest(userSingleton.IdPlayer, idUserRequesting);
            foreach (var item in friendRequests)
            {
                if (item.IdUser == idUserRequesting)
                {
                    friendRequests.Remove(item);
                    break;
                }
            }
            FriendBasicInformation newFriend = new FriendBasicInformation();
            newFriend.IdUser = idUserRequesting;
            newFriend.UserName = userName;
            newFriend.IdStatusAvailability = NOT_STATUS;
            otherPeople.Add(newFriend);
            SetCards();
        }

        public void ResponseReported(int numReports)
        {
            dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInfoMessgSuccRegUser, Properties.Resources.MessageReported + numReports.ToString(), Application.Current.MainWindow);
        }

        public void ResponseRequestAction(int idUser, int requestStatus, string userName)
        {           
            switch (requestStatus)
            {
                case DECLINED_REQUEST:                   
                    ManageResponse(friendRequests, otherPeople,idUser,userName);
                    lblDeclineRequestMessage.Content = idUser + " " + Properties.Resources.MessageFriRequeDeclined;
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
                    friendRequests.Remove(item);
                    break;
                }
            }
            FriendBasicInformation newFriend = new FriendBasicInformation();
            newFriend.IdUser = idUserOperation;
            newFriend.UserName = userName;
            newFriend.IdStatusAvailability = NOT_STATUS;
            addToList.Add(newFriend);
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
            FriendBasicInformation newFriend = new FriendBasicInformation();
            newFriend.IdUser = idPlayerWhoEliminatedYou;
            newFriend.UserName = userName;
            newFriend.IdStatusAvailability = NOT_STATUS;
            otherPeople.Add(newFriend);
            SetCards();
        }

        private void ClickBackToMenu(object sender, MouseButtonEventArgs e)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.UnregisterFriendManagerUser(userSingleton.IdUser);
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSearchPlayerButton(object sender, RoutedEventArgs e)
        {
            String userNameToSearch = txbUserToSearch.Text;
            if (!userNameToSearch.Equals(Properties.Resources.bttSearch))
            {
                stcFrinedsManagerList.Children.Clear();
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
                        stcFrinedsManagerList.Children.Add(SetBorderCardStyle(brdCard));
                    }
                }
            }    
        }

        private void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
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
        private void WriteInSearchBar(object sender, MouseEventArgs e)
        {
            txbUserToSearch.Text = string.Empty;
        }
    }
}
