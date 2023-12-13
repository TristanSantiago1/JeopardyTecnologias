using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
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
      
        public void PlayerIsAvailable(int idNewActiveUser)
        {
            try
            {
                if (idNewActiveUser != NULL_INT_VALUE)
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
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            try
            {
                if (idUserDisconnecting != NULL_INT_VALUE)
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
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        //FALTA METODO PARA NOTIFICAR CUANDO ENTRE A APRTIDA
    

        private void NotifyFriends(int idUser, int status)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();
            var userConsulted = consultInformation.ConsultUserById(idUser);
            try
            {
                if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var friendsNewUser = friendsManagerImplementation.GetUserFriends(userConsulted.ObjectSaved);
                    if (friendsNewUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        foreach (var friend in friendsNewUser.ObjectSaved)
                        {
                            try
                            {
                                var channelSaved = ActiveUsersDictionary.GetChannelCallBackActiveUser(friend.IdUser);
                                if (channelSaved != null)
                                {
                                    channelSaved.GetCallbackChannel<INotifyUserAvailabilityCallBack>().ResponseOfPlayerAvailability(status, idUser);
                                }
                            }
                            catch (CommunicationException ex)
                            {
                                ChannelAdministrator.VerifyUserIsStillActive(idUser);
                            }
                           
                        }
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        
    }

}
