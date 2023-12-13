using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace JeopardyGame.Service.ServiceImplementation
{
    partial class NotifyFriendlyActionsImplementation : INotifyUserActionFriendsManager
    {

        private readonly int NULL_INT_VALUE = 0;
        private readonly int CHANNEL_ALREADY_EXIST = -1;
        private readonly int CHANNEL_SAVED = 1;
        private readonly int DECLINE_FRIEND_REQUEST = 0;
        private readonly int SEND_FRIEND_REQUEST = 1;
        private readonly int ACCEPT_FRIEND_REQUEST = 2;

        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {

            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                if (idUserFriendManager == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserFriendManager);
                if (channelSaved == null)
                {
                    var newCallBackChannel = OperationContext.Current;
                    FriendManagerDictionary.RegisterNewFriendUserInDictionary(idUserFriendManager, newCallBackChannel);
                    resultToReturn.ObjectSaved = CHANNEL_SAVED;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.ObjectSaved = CHANNEL_ALREADY_EXIST;
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
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
            return resultToReturn;



        }

        public void UnregisterFriendManagerUser(int idUserFriendManager)
        {
            try
            {
                if (idUserFriendManager != NULL_INT_VALUE)
                {
                    var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserFriendManager);
                    if (channelSaved != null)
                    {
                        FriendManagerDictionary.RemoveRegistryOfFriendFromDictionary(idUserFriendManager);
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

    partial class NotifyFriendlyActionsImplementation : INotifyUserActionFriendsManager
    {
        public void ReportPlayer(int idUser, string userName)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            var playerConsulted = consultInformation.ConsultPlayerById(idUser);          
            if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT && playerConsulted.ObjectSaved.NoReports < 2)
            {
                playerConsulted.ObjectSaved.NoReports++;
                var result = UserManagerDataOperation.UpdatePlayer(playerConsulted.ObjectSaved.IdPlayer);
                var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUser);
                if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT &&  channelSaved != null)
                {
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseReported(playerConsulted.ObjectSaved.NoReports);
                }                
            }
            else
            {
                //logica para baennar
            }
        }
    }

    partial class NotifyFriendlyActionsImplementation : INotifyUserActionFriendsManager
    {
        public void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();               
            var playerToEliminated = consultInformation.ConsultPlayerByIdUser(idUserToEliminate);
            try
            {
                if (playerToEliminated.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var affectedRows = FriendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeleting, playerToEliminated.ObjectSaved.IdPlayer);
                    if (affectedRows.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserToEliminate);
                        if (channelSaved != null)
                        {
                            var userDeleting = consultInformation.ConsultUserByIdPlayer(idPlayerDeleting);
                            if (userDeleting.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseEliminationFromFriends(userDeleting.ObjectSaved.IdUser);
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

    partial class NotifyFriendlyActionsImplementation : INotifyUserActionFriendsManager
    {
        public void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            var userConsulted = consultInformation.ConsultUserByIdPlayer(idPlayerDeclining);
            try
            {
                if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var playerDeclined = consultInformation.ConsultPlayerByIdUser(idUserRequesting);
                    if (playerDeclined.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var affectedRows = FriendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeclining, playerDeclined.ObjectSaved.IdPlayer);
                        if (affectedRows.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserRequesting);
                            if (channelSaved != null)
                            {
                                channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseRequestAction(userConsulted.ObjectSaved.IdUser, DECLINE_FRIEND_REQUEST, userConsulted.ObjectSaved.UserName);
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

        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            var userConsulted = consultInformation.ConsultUserByIdPlayer(idPLayerRequesting);
            try
            {
                if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var playerConsulted = consultInformation.ConsultPlayerByIdUser(idUserRequested);
                    if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var affectedRows = FriendsManagerDataOperation.SendFriendRequest(idPLayerRequesting, playerConsulted.ObjectSaved.IdPlayer);
                        if (affectedRows.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserRequested);
                            if (channelSaved != null)
                            {
                                channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseRequestAction(userConsulted.ObjectSaved.IdUser, SEND_FRIEND_REQUEST, userConsulted.ObjectSaved.UserName);
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

        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();            
            var userConsulted = consultInformation.ConsultUserByIdPlayer(idPlayerAccepting);
            try
            {
                if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    var playerConsulted = consultInformation.ConsultPlayerByIdUser(idUserRequesting);
                    if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        var affectedRows = FriendsManagerDataOperation.AcceptFriendRequest(idPlayerAccepting, playerConsulted.ObjectSaved.IdPlayer);
                        if (affectedRows.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            var channelSaved = FriendManagerDictionary.GetChannelFriendUser(idUserRequesting);
                            if (channelSaved != null)
                            {
                                channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseRequestAction(userConsulted.ObjectSaved.IdUser, ACCEPT_FRIEND_REQUEST, userConsulted.ObjectSaved.UserName);
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
