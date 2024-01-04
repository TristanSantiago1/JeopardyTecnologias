using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Data.Entity;
using System.ServiceModel;

namespace JeopardyGame.Service.ServiceImplementation
{
    partial class NotifyUserAvailabilityImplementation : INotifyUserAvailability
    {
        private static Object lockObject = new Object();


        public void NotifyFriends(int idUser, int status)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            ConsultFriendsImplementation friendsManagerImplementation = new ConsultFriendsImplementation();
            var userConsulted = consultInformation.ConsultUserById(idUser);           
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
                        catch (CommunicationObjectFaultedException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(friend.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (TimeoutException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(friend.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (CommunicationException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(friend.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (InvalidOperationException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(friend.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                    }
                }
            }          
        }

        public void RenewNotifyAvailabityCallBack(int idUser)
        {
            lock (lockObject)
            {
                try
                {
                    if (idUser != 0)
                    {
                        var newChannel = OperationContext.Current;
                        ActiveUsersDictionary.RenewAvailabityCallBack(idUser, newChannel);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public void SubscribeToAvailabityCallBackChannel(int idNewActiveUser)
        {
            lock (lockObject)
            {
                try
                {
                    var savedChannel = ActiveUsersDictionary.GetChannelCallBackActiveUser(idNewActiveUser);
                    if (savedChannel == null)
                    {
                        var newChannel = OperationContext.Current;
                        ActiveUsersDictionary.RegisterNewActiveUserInDictionary(idNewActiveUser, newChannel);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

    }


    public class NotifyUserIsNotAvailableImplementation : IAvailabilityUserManagment
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int AVAILABLE_STATUS = 1;
        private readonly int UNAVAILABLE_STATUS = 0;
        private readonly int PLAYING_STATUS = 2;

        public void PlayerIsAvailable(int idNewActiveUser)
        {
            try
            {
                if (idNewActiveUser != NULL_INT_VALUE)
                {                    
                    NotifyUserAvailabilityImplementation notifyUserAvailability = new();
                    notifyUserAvailability.NotifyFriends(idNewActiveUser, AVAILABLE_STATUS);
                }                
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idNewActiveUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            try
            {
                if (idUserDisconnecting != NULL_INT_VALUE)
                {
                    ActiveUsersDictionary.RemoveRegistryOfActiveUserFromDictionary(idUserDisconnecting);
                    NotifyUserAvailabilityImplementation notifyUserAvailability = new();
                    notifyUserAvailability.NotifyFriends(idUserDisconnecting, UNAVAILABLE_STATUS);                    
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserDisconnecting, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserDisconnecting, ChannelAdministrator.FRIEND_MANAGER_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserDisconnecting, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserDisconnecting, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }


        public void PlayerIsPlaying(int idUserPlaying)
        {
            try
            {
                if (idUserPlaying != NULL_INT_VALUE)
                {                      
                    NotifyUserAvailabilityImplementation notifyUserAvailability = new();
                    notifyUserAvailability.NotifyFriends(idUserPlaying, PLAYING_STATUS);                    
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserPlaying, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserPlaying, ChannelAdministrator.FRIEND_MANAGER_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserPlaying, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserPlaying, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }


    }

}
