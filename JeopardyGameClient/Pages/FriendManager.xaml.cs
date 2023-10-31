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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para friendManager.xaml
    /// </summary>
    public partial class FriendManager : Page, INotifyUserActionFriendsManagerCallback
    {
        private List<FriendInfo> friends ;
        private List<FriendInfo> friendRequests;
        private List<FriendInfo> otherPeople;
        private int typeUserConsult = 1;
        private String textLeftButton = Properties.Resources.bttReport;
        private String textRightButton = Properties.Resources.bttEliminate;
        private InstanceContext context;
        NotifyUserActionFriendsManagerClient notifyUserActionFriendsManagerClient;

        public FriendManager()
        {
            InitializeComponent();
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
                case 1:
                   listOfUsers = new List<FriendInfo>(friends); break;
                case 2:
                    listOfUsers = new List<FriendInfo>(friendRequests); break;
                case 3:
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

        private void GetInfoCards()
        {
            ServidorServiciosJeopardy.FriendsManagerClient proxyFriend = new ServidorServiciosJeopardy.FriendsManagerClient();
            ServidorServiciosJeopardy.ConsultInformationClient proxyUser = new ServidorServiciosJeopardy.ConsultInformationClient();
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            UserPOJO user = proxyUser.ConsultUserById(userSingleton.IdUser);
            switch(typeUserConsult)
            {
                case 1:
                    friends = proxyFriend.GetUserFriends(user).ToList();
                    break;
                case 2:
                    friendRequests = proxyFriend.GetUserFriendRequests(user).ToList();
                    break;
                case 3:
                    otherPeople = proxyFriend.GetUsersNotFriends(user).ToList();
                    break;
            }                      
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
            typeUserConsult = 1;
            textLeftButton = Properties.Resources.bttReport;
            textRightButton = Properties.Resources.bttEliminate;
            SelectLabel(lblMyFriends);
            if (friends == null)
            {               
                GetInfoCards();
            }
            SetCards();
        }

        private void ClicConsultFriendSolicitudes(object sender, MouseButtonEventArgs e)
        {
            typeUserConsult = 2;
            textLeftButton = Properties.Resources.bttAcceptFriendRequest;
            textRightButton = Properties.Resources.bttDeclineFriendRequest;
            SelectLabel(lblRequests);
            if (friendRequests == null)
            {                
                GetInfoCards();                
            }
            SetCards();
        }

        private void ClicConsultMorePeople(object sender, MouseButtonEventArgs e)
        {
            typeUserConsult = 3;
            textLeftButton = Properties.Resources.bttAddFriend;
            textRightButton = Properties.Resources.bttReport;
            SelectLabel(lblMorePeople);
            if (otherPeople == null)
            {              
                GetInfoCards();                
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
            String userName = "nono";
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
            newFriend.IdStatus = 0;
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
            newFriend.IdStatus = 0;
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
            newFriend.IdStatus = 0;
            otherPeople.Add(newFriend);
            SetCards();
        }

        public void ResponseReported(int numReports)
        {
            MessageBox.Show("Te han reportado por :" + numReports + ", Cuidado");
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
                    newFriend.IdStatus = 0;
                    otherPeople.Add(newFriend);
                    lblDeclineRequestMessage.Content = "HA RECHAZADO TU SOLCIITUD" + idUserOperation;
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
                    newFriend.IdStatus = 0;
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
                    newFriend.IdStatus = 0;
                    friends.Add(newFriend);
                    break;
            }
            SetCards();
        } 
        public void ResponseEliminationFromFriends(int idPlayerWhoEliminatedU)
        {
            String userNmae = "none";
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
            newFriend.IdStatus = 0;
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

        private void DeleteMesage(object sender, MouseButtonEventArgs e)
        {
            lblDeclineRequestMessage.Content = string.Empty;
        }

      

        private void ClicSearchPlayerButton(object sender, RoutedEventArgs e)
        {
            String userNameToSearch = txbUserToSearch.Text;
            stcFrinedsManagerList.Children.Clear();
            List<FriendInfo> listOfUsers;
            switch (typeUserConsult)
            {
                case 1:
                    listOfUsers = new List<FriendInfo>(friends); break;
                case 2:
                    listOfUsers = new List<FriendInfo>(friendRequests); break;
                case 3:
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
