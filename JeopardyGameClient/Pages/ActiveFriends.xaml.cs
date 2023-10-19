using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para ActiveFriends.xaml
    /// </summary>
    public partial class ActiveFriends : Page
    {
        FriendInfo[] friends;
        public ActiveFriends()
        {
            InitializeComponent();
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
            UserPOJO user = proxyUser.ConsultUserById(1);    
            friends = proxyFriend.GetUserFriends(user);
        }

        private void SetFriend()
        {            
            stcFriendList.Orientation = Orientation.Vertical;
            foreach (var item in friends)
            {
                bool state;
                if (item.IdStatus == 1)
                {
                    state = true;  
                }
                else
                {
                    state = false;
                }
                stcFriendList.Children.Add(new FriendCard(item.UserName, state, "Invite"));
            }
        }
        

        public void RefreshFriendsList()
        {
            GetFriend();
            SetFriend();
        }
    }
}
