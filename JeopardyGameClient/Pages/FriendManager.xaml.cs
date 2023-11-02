using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ReGexs;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para friendManager.xaml
    /// </summary>
    public partial class FriendManager : Page, INotifyUserActionFriendsManagerCallback
    {
        private List<FriendInfo> friends;
        private List<FriendInfo> friendRequests;
        private List<FriendInfo> otherPeople;
        private String textLeftButton = Properties.Resources.bttReport;
        private String textRightButton = Properties.Resources.bttEliminate;
        private DispatcherTimer timer;
        private int leftTime = 5;
        private const int NOT_STATUS = 0;
        private const int MY_FRIENDS = 1;
        private const int FRIENDS_REQUEST = 2;
        private const int OTHER_PEOPLE = 3;
        private int typeUserConsult = MY_FRIENDS;
        NotifyUserActionFriendsManagerClient notifyUserActionFriendsManagerClient;
        private InstanceContext context;

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
            txbUserToSearch.PreviewTextInput += TextBoxSearchListener;
        }

        private void SetCards()
        {
            stcFrinedsManagerList.Children.Clear();
            List<FriendInfo> listOfUsers;
            switch (typeUserConsult)
            {
                case MY_FRIENDS:
                    listOfUsers = new List<FriendInfo>(friends); break;
                case FRIENDS_REQUEST:
                    listOfUsers = new List<FriendInfo>(friendRequests); break;
                case OTHER_PEOPLE:
                    listOfUsers = new List<FriendInfo>(otherPeople); break;
                default:
                    listOfUsers = new List<FriendInfo>(); break;
            }
            foreach (var item in listOfUsers)
            {
                Border brdCard = new Border();
                FriendCardManagementWindow friendCardManagement = new FriendCardManagementWindow(item.IdUser, item.UserName, typeUserConsult, textLeftButton, textRightButton, this);
                brdCard.Child = friendCardManagement;
                stcFrinedsManagerList.Children.Add(SetBorderCardStyle(brdCard));

            }
        }

        private void GetAllTables()
        {
            ServidorServiciosJeopardy.FriendsManagerClient proxyFriend = new ServidorServiciosJeopardy.FriendsManagerClient();
            ServidorServiciosJeopardy.ConsultInformationClient proxyUser = new ServidorServiciosJeopardy.ConsultInformationClient();
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            UserPOJO user = proxyUser.ConsultUserById(userSingleton.IdUser);
            friends = proxyFriend.GetUserFriends(user).ToList();
            friendRequests = proxyFriend.GetUserFriendRequests(user).ToList();
            otherPeople = proxyFriend.GetUsersNotFriends(user).ToList();
            proxyFriend.Close();
            proxyUser.Close();
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

        private void ClicConsultMyFriends(object sender, MouseButtonEventArgs e)
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

        private void ClicConsultFriendSolicitudes(object sender, MouseButtonEventArgs e)
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

        private void ClicConsultMorePeople(object sender, MouseButtonEventArgs e)
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

        private void SelectLabel(Label selectedLbael)
        {
            lblMyFriends.FontSize = 36;
            lblMyFriends.Foreground = new SolidColorBrush(Colors.White);
            lblRequests.FontSize = 36;
            lblRequests.Foreground = new SolidColorBrush(Colors.White);
            lblMorePeople.FontSize = 36;
            lblMorePeople.Foreground = new SolidColorBrush(Colors.White);
            selectedLbael.FontSize = 40;
            selectedLbael.Foreground = new SolidColorBrush(Colors.LightGray);
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
            FriendInfo newFriend = new FriendInfo();
            newFriend.IdUser = idUserFriendToEliminate;
            newFriend.UserName = userName;
            newFriend.IdStatus = NOT_STATUS;
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
            FriendInfo newFriend = new FriendInfo();
            newFriend.IdUser = idUserRequesting;
            newFriend.UserName = userName;
            newFriend.IdStatus = NOT_STATUS;
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
            FriendInfo newFriend = new FriendInfo();
            newFriend.IdUser = idUserRequesting;
            newFriend.UserName = userName;
            newFriend.IdStatus = NOT_STATUS;
            otherPeople.Add(newFriend);
            SetCards();
        }

        public void ResponseReported(int numReports)
        {
            InfoMessageDW infoMessageDW = new InfoMessageDW(Properties.Resources.txbInfoMessgSuccRegUser, Properties.Resources.MessageReported + numReports.ToString());
            infoMessageDW.Show();
        }

        public void ResponseResquestAction(int idUserOperation, int requestStatus, String userName)
        {
            FriendInfo newFriend = new FriendInfo();
            switch (requestStatus)
            {
                case 0:
                    foreach (var item in friendRequests)
                    {
                        if (item.IdUser == idUserOperation)
                        {
                            friendRequests.Remove(item);
                            break;
                        }
                    }
                    newFriend.IdUser = idUserOperation;
                    newFriend.UserName = userName;
                    newFriend.IdStatus = NOT_STATUS;
                    otherPeople.Add(newFriend);
                    lblDeclineRequestMessage.Content = idUserOperation + " " + Properties.Resources.MessageFriRequeDeclined;
                    StartTimer();
                    break;
                case 1:
                    foreach (var item in otherPeople)
                    {
                        if (item.IdUser == idUserOperation)
                        {
                            otherPeople.Remove(item);
                            break;
                        }
                    }
                    newFriend.IdUser = idUserOperation;
                    newFriend.UserName = userName;
                    newFriend.IdStatus = NOT_STATUS;
                    friendRequests.Add(newFriend);
                    break;
                case 2:
                    foreach (var item in friendRequests)
                    {
                        if (item.IdUser == idUserOperation)
                        {
                            friendRequests.Remove(item);
                            break;
                        }
                    }
                    newFriend.IdUser = idUserOperation;
                    newFriend.UserName = userName;
                    newFriend.IdStatus = NOT_STATUS;
                    friends.Add(newFriend);
                    break;
            }
            SetCards();
        }
        public void ResponseEliminationFromFriends(int idPlayerWhoEliminatedU)
        {
            String userNmae = String.Empty;
            foreach (var item in friends)
            {
                if (item.IdUser == idPlayerWhoEliminatedU)
                {
                    friends.Remove(item);
                    userNmae = item.UserName;
                    break;
                }
            }
            FriendInfo newFriend = new FriendInfo();
            newFriend.IdUser = idPlayerWhoEliminatedU;
            newFriend.UserName = userNmae;
            newFriend.IdStatus = NOT_STATUS;
            otherPeople.Add(newFriend);
            SetCards();
        }

        private void ClicBackToMenu(object sender, MouseButtonEventArgs e)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            notifyUserActionFriendsManagerClient.UnregisterFriendManagerUser(userSingleton.IdUser);
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }

        private void ClicSearchPlayerButton(object sender, RoutedEventArgs e)
        {
            String userNameToSearch = txbUserToSearch.Text;
            stcFrinedsManagerList.Children.Clear();
            List<FriendInfo> listOfUsers;
            switch (typeUserConsult)
            {
                case MY_FRIENDS:
                    listOfUsers = new List<FriendInfo>(friends); break;
                case FRIENDS_REQUEST:
                    listOfUsers = new List<FriendInfo>(friendRequests); break;
                case OTHER_PEOPLE:
                    listOfUsers = new List<FriendInfo>(otherPeople); break;
                default:
                    listOfUsers = new List<FriendInfo>(); break;
            }
            foreach (FriendInfo item in listOfUsers)
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

        private void TextBoxSearchListener(object sender, TextCompositionEventArgs e)
        {
            if (txbUserToSearch.Text.Trim().Length > 0)
            {
                imgLook.Visibility = Visibility.Hidden;
            }
            else
            {
                imgLook.Visibility = Visibility.Visible;
            }
        }

    }
}
