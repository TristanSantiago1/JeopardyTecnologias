using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    partial class NotifyUserAvbImple : INotifyUserAvailability
    {
        public List<ChannelStorage> activeUsers = new List<ChannelStorage>();
        private int UNAVAILABLE_STATUS = 0;
        private int AVAILABLE_STATUS = 1;
        private int PLAYING_STATUS = 2;
      
        public void PlayerIsAvailable(int idNewActiveUser)
        {
            ChannelStorage newActiveUser = new ChannelStorage();
            newActiveUser.idUser = idNewActiveUser;
            newActiveUser.channel = OperationContext.Current.GetCallbackChannel<IStatusPlayerCallBack>();
            activeUsers.Add(newActiveUser);
            NotifyFriends(idNewActiveUser, AVAILABLE_STATUS);
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            foreach (var channel in activeUsers)
            {
                if (channel.idUser == idUserDisconnecting)
                {
                    activeUsers.Remove(channel);                  
                }
                break;
            }
            NotifyFriends(idUserDisconnecting, UNAVAILABLE_STATUS);

        }

    

        private void NotifyFriends(int idUser, int status)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();
            UserPOJO user = consultInfoImple.ConsultUserById(idUser);
            List<FriendInfo> friendsNewUser = friendsManagerImplementation.GetUserFriends(user);
            foreach (var channelSaved in activeUsers)
            {
                foreach (var friend in friendsNewUser)
                {
                    if (channelSaved.idUser == friend.IdUser)
                    {
                        channelSaved.channel.Response(status);
                    }
                }

            }
        }
        
    }

    public struct ChannelStorage()
    {
        public int idUser { get; set; }
        public IStatusPlayerCallBack channel { get; set; }
    }
}
