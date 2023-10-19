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
      
        public void PlayerIsAvailable(int idNewActiveUser)
        {
            var channel = OperationContext.Current.GetCallbackChannel<INotifyUserAvailabilityCallBack>();
            ActiveUsers.RegisterNewUserInDictionary(idNewActiveUser, channel);   
            Console.WriteLine(idNewActiveUser +" entro " );
            NotifyFriends(idNewActiveUser, AVAILABLE_STATUS);
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            var channel = ActiveUsers.GetChannelUser(idUserDisconnecting);
            if (channel != null)
            {                
                ActiveUsers.RemoveRegistryFromDictionary(idUserDisconnecting);
                NotifyFriends(idUserDisconnecting, UNAVAILABLE_STATUS);
                Console.WriteLine(idUserDisconnecting + " salio ");
            }
        }

    

        private void NotifyFriends(int idUser, int status)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();
            UserPOJO user = consultInfoImple.ConsultUserById(idUser);
            List<FriendInfo> friendsNewUser = friendsManagerImplementation.GetUserFriends(user);           
            foreach (var friend in friendsNewUser)
            {
                var channelSaved = ActiveUsers.GetChannelUser(friend.IdUser);
                if (channelSaved != null)
                {
                    channelSaved.Response(status, idUser);
                }
            }           
        }

        
    }

}
