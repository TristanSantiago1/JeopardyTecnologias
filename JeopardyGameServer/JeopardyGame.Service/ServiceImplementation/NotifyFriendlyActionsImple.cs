using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    partial class NotifyFriendlyActionsImple : INotifyUserActionFriendsManager
    {
        private const int CHANNEL_ALREADY_EXIST = -1;
        private const int CHANNEL_SAVED = 1;
        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (idUserFriendManager == 0) { return NullParametersHandler.HandleNullParametersService(resultToReturn); }            
            var channelSaved = FriendManagerDictionary.GetChannelUser(idUserFriendManager);
            if (channelSaved == null)
            {
                var channel = OperationContext.Current;
                FriendManagerDictionary.RegisterNewUserInDictionary(idUserFriendManager, channel);
                resultToReturn.ObjectSaved = CHANNEL_SAVED;
                resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
            } 
            else { resultToReturn.ObjectSaved = CHANNEL_ALREADY_EXIST; resultToReturn.CodeEvent = ExceptionDiccionary.UNSUCCESFULL_EVENT; }
            return resultToReturn;
           
        }

        public void UnregisterFriendManagerUser(int idUserFriendManager)
        {
            if (idUserFriendManager != 0)
            {
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserFriendManager);
                if (channelSaved != null)
                {
                    var channel = OperationContext.Current;
                    FriendManagerDictionary.RemoveRegistryFromDictionary(idUserFriendManager);                   
                }
               
            }            
        }
    }

    partial class NotifyFriendlyActionsImple : INotifyUserActionFriendsManager
    {
        public void ReportPlayer(int idUser, string userName)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            PlayerPOJO playerPojo = consultInfoImple.ConsultPlayerById(idUser).ObjectSaved;          
            if (playerPojo.NoReports < 3)
            {                
                int result = UserManagerDataOperation.UpdatePlayer(playerPojo.IdPlayer).ObjectSaved;
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUser);
                if (channelSaved != null)
                {
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseReported(playerPojo.NoReports);
                }                
            }
            else
            {
                //logica para baennar
            }
        }
    }

    partial class NotifyFriendlyActionsImple : INotifyUserActionFriendsManager
    {
        public void EliminateUserFromFriends(int idPlayerDeleating, int idUserToEliminate)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();               
            int idPlayerToEliminated = consultInfoImple.ConsultPlayerByIdUser(idUserToEliminate).ObjectSaved.IdPlayer;
            int affectedRows = FriendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeleating, idPlayerToEliminated).ObjectSaved;
            if (affectedRows != 0)
            {                
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserToEliminate);
                if (channelSaved != null)
                {
                    UserPOJO userDeleating = consultInfoImple.ConsultUserByIdPlayer(idPlayerDeleating).ObjectSaved;
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseEliminationFromFriends(userDeleating.IdUser);
                }
            }
        }
    }

    partial class NotifyFriendlyActionsImple : INotifyUserActionFriendsManager
    {
        public void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPlayerDeclining).ObjectSaved;
            int idPlayerDeclined = consultInfoImple.ConsultPlayerByIdUser(idUserRequesting).ObjectSaved.IdPlayer;
            int affectedRows = FriendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeclining, idPlayerDeclined).ObjectSaved;
            if (affectedRows != 0)
            {
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserRequesting);
                if (channelSaved != null)
                {
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseResquestAction(userPojo.IdUser, 0, userPojo.UserName);
                }
            }
        }

        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPLayerRequesting).ObjectSaved;           
            UserPOJO user = consultInfoImple.ConsultUserByIdPlayer(idPLayerRequesting).ObjectSaved;
            int idPlayerRequested = consultInfoImple.ConsultPlayerByIdUser(idUserRequested).ObjectSaved.IdPlayer;
            int affectedRows = FriendsManagerDataOperation.SendFriendRequest(idPLayerRequesting, idPlayerRequested).ObjectSaved;
            if (affectedRows != 0)
            {
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserRequested);
                if (channelSaved != null)
                {
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseResquestAction(user.IdUser, 1, userPojo.UserName);
                }
            }
        }      

        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ConsultInfoImple consultInfoImple = new ConsultInfoImple();            
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPlayerAccepting).ObjectSaved;            
            int idPlayerRequesting = consultInfoImple.ConsultPlayerByIdUser(idUserRequesting).ObjectSaved.IdPlayer;
            int affectedRows = FriendsManagerDataOperation.AcceptFriendRequest(idPlayerAccepting, idPlayerRequesting).ObjectSaved;
            if (affectedRows != 0)
            {
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserRequesting);
                if (channelSaved != null)
                {
                    channelSaved.GetCallbackChannel<INotifyUserActionFriendsManagerCallBack>().ResponseResquestAction(userPojo.IdUser, 2, userPojo.UserName);
                }
            }
        }

    }
}
