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
        private int UNAVAILABLE_STATUS = 0;
        private int AVAILABLE_STATUS = 1;
        private int PLAYING_STATUS = 2;
      
        public void PlayerIsAvailable(int idNewActiveUser, int idNewActiviePlayer)
        {
            if (idNewActiveUser != 0 && idNewActiviePlayer != 0)
            {
                var channel = OperationContext.Current;
                ActiveUsers.RegisterNewUserInDictionary(idNewActiveUser, channel);               
                NotifyFriends(idNewActiveUser, AVAILABLE_STATUS, idNewActiviePlayer);
            }           
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting, int idNewActiviePlayer)
        {
            if (idUserDisconnecting != 0 && idNewActiviePlayer != 0)
            {
                var channel = ActiveUsers.GetChannelUser(idUserDisconnecting);
                if (channel != null)
                {
                    ActiveUsers.RemoveRegistryFromDictionary(idUserDisconnecting);
                    NotifyFriends(idUserDisconnecting, UNAVAILABLE_STATUS, idNewActiviePlayer);              
                }
            }           
        }

    

        private void NotifyFriends(int idUser, int status, int idPlayer)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();
            UserPOJO user = consultInfoImple.ConsultUserById(idUser).ObjectSaved;
            List<FriendInfo> friendsNewUser = friendsManagerImplementation.GetUserFriends(user).ObjectSaved;  
            if(friendsNewUser != null)
            {
                foreach (var friend in friendsNewUser)
                {
                    var channelSaved = ActiveUsers.GetChannelUser(friend.IdUser);
                    if (channelSaved != null)
                    {
                        channelSaved.GetCallbackChannel<INotifyUserAvailabilityCallBack>().Response(status, idUser);
                    }
                }
            }
                    
        }

        
    }

}
