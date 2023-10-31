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
        FriendInfo[] friends;
        public ActiveFriends()
        {
            InitializeComponent();                                   
        }

        public void StartPage()
        {
            GetFriend();
            SetFriend();
        }

        private void ClicCloseListFriends(object sender, MouseButtonEventArgs e)
        {
            LobbyPage lobyGamePage = new LobbyPage();
            this.NavigationService.Navigate(lobyGamePage);
            NavigationService.RemoveBackEntry();
        }

        private  void GetFriend()
        {
            ServidorServiciosJeopardy.FriendsManagerClient proxyFriend = new ServidorServiciosJeopardy.FriendsManagerClient();
            ServidorServiciosJeopardy.ConsultInformationClient proxyUser = new ServidorServiciosJeopardy.ConsultInformationClient();
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            UserPOJO user = proxyUser.ConsultUserById(userSingleton.IdUser);    
            friends = proxyFriend.GetUserFriends(user);
            foreach (var item in friends)
            {
                Friend activeFriend = new Friend();
                activeFriend.IdUser=item.IdUser;
                activeFriend.Name = item.UserName;
                activeFriend.idStatus = item.IdStatus;
                FriendList.RegisterNewFriendInDictionary(item.IdUser,activeFriend);
            }
            proxyFriend.Close();
            proxyUser.Close();
        }

        private void SetFriend()
        {   
            stcFriendList.Children.Clear();
            stcFriendList.Orientation = Orientation.Vertical;
            Dictionary<int, Friend> friendList = FriendList.GetActiveFirendsList();
            if (friendList != null)
            {               
                foreach (var item in friendList)
                {
                    bool state;
                    if (item.Value.idStatus == 1)
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

        public void Response(int status, int idFriend)
        {
            Dictionary<int, Friend> friendList = FriendList.GetActiveFirendsList();          
            if (friendList.ContainsKey(idFriend))
            {
                FriendList.ChangeStatus(idFriend, status);
            }
            SetFriend();
        }

    }
}
