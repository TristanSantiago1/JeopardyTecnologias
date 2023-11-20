using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para ActiveFriends.xaml
    /// </summary>
    public partial class ActiveFriends : Page, INotifyUserAvailabilityCallback
    {
        private const int AVAILABLE_STATUS = 1;
        public ActiveFriends()
        {
            InitializeComponent();                                   
        }

        public void StartPage()
        {
            GetFriend();
            SetFriend();
        }

        private void ClickCloseListFriends(object sender, MouseButtonEventArgs e)
        {
            LobbyPage lobbyGamePage = new LobbyPage();
            this.NavigationService.Navigate(lobbyGamePage);
            NavigationService.RemoveBackEntry();
        }

        private  void GetFriend()
        {
            FriendsManagerClient proxyFriend = new FriendsManagerClient();
            ConsultInformationClient proxyUser = new ConsultInformationClient();
            UserSingleton mainCurrentUser = UserSingleton.GetMainUser();
            var user = proxyUser.ConsultUserById(mainCurrentUser.IdUser);    
            var friends = proxyFriend.GetUserFriends(user.ObjectSaved);
            if(friends.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in friends.ObjectSaved)
                {
                    FriendAvailabilityInformation activeFriend = new FriendAvailabilityInformation();
                    activeFriend.IdUser = item.IdUser;
                    activeFriend.Name = item.UserName;
                    activeFriend.idStatusOfAvailability = item.IdStatusAvailability;
                    FriendList.RegisterNewFriendInDictionary(item.IdUser, activeFriend);
                }
            }
            else
            {
                ExceptionHandler.HandleException(friends.CodeEvent, string.Empty);
            }
            proxyFriend.Close();
            proxyUser.Close();
        }

        private void SetFriend()
        {   
            stcFriendList.Children.Clear();
            stcFriendList.Orientation = Orientation.Vertical;
            Dictionary<int, FriendAvailabilityInformation> friendList = FriendList.GetActiveFriendsList();
            if (friendList != null)
            {               
                foreach (var item in friendList)
                {
                    bool state;
                    if (item.Value.idStatusOfAvailability == AVAILABLE_STATUS)
                    {
                        state = true;
                    }
                    else
                    {
                        state = false;
                    }
                    stcFriendList.Children.Add(new FriendCard(item.Value.Name, state, "Invite"));
                    
                }
            }            
        }
        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            Dictionary<int, FriendAvailabilityInformation> friendList = FriendList.GetActiveFriendsList();
            if (friendList.ContainsKey(idFriend))
            {
                FriendList.ChangeStatusOfFriend(idFriend, status);
            }
            SetFriend();
        }
    }

}
