using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    partial class NotifyUserAvailabilityImplementation : INotifyUserAvailability
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int UNAVAILABLE_STATUS = 0;
        private readonly int AVAILABLE_STATUS = 1;
        private readonly int PLAYING_STATUS = 2;
      
        public void PlayerIsAvailable(int idNewActiveUser, int idNewActivePlayer)
        {
            if (idNewActiveUser != NULL_INT_VALUE && idNewActivePlayer != NULL_INT_VALUE)
            {
                var savedChannel = ActiveUsersDictionary.GetChannelCallBackActiveUser(idNewActiveUser);
                if (savedChannel == null)
                {
                    var newChannel = OperationContext.Current;
                    ActiveUsersDictionary.RegisterNewActiveUserInDictionary(idNewActiveUser, newChannel);
                    NotifyFriends(idNewActiveUser, AVAILABLE_STATUS);
                }
                else 
                {
                    //Channel ya existe
                }
            }           
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting, int idPlayerDisconnecting)
        {
            if (idUserDisconnecting != NULL_INT_VALUE && idPlayerDisconnecting != NULL_INT_VALUE)
            {
                var channel = ActiveUsersDictionary.GetChannelCallBackActiveUser(idUserDisconnecting);
                if (channel != null)
                {
                    ActiveUsersDictionary.RemoveRegistryOfActiveUserFromDictionary(idUserDisconnecting);
                    NotifyFriends(idUserDisconnecting, UNAVAILABLE_STATUS);              
                }
                else
                {
                    // channel no existe
                }
            }           
        }

        //FALTA METODO PARA NOTIFICAR CUANDO ENTRE A APRTIDA
    

        private void NotifyFriends(int idUser, int status)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();
            var userConsulted = consultInformation.ConsultUserById(idUser);
            if(userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                var friendsNewUser = friendsManagerImplementation.GetUserFriends(userConsulted.ObjectSaved);
                if (friendsNewUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    foreach (var friend in friendsNewUser.ObjectSaved)
                    {
                        var channelSaved = ActiveUsersDictionary.GetChannelCallBackActiveUser(friend.IdUser);
                        if (channelSaved != null)
                        {
                            channelSaved.GetCallbackChannel<INotifyUserAvailabilityCallBack>().ResponseOfPlayerAvailability(status, idUser);
                        }
                    }
                }
            }                    
        }

        
    }

}
