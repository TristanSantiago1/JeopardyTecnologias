using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
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
        public int RegisterFriendManagerUser(int idUserFriendManager)
        {
            if (idUserFriendManager != 0 )
            {
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserFriendManager);
                if (channelSaved == null)
                {
                    var channel = OperationContext.Current;
                    FriendManagerDictionary.RegisterNewUserInDictionary(idUserFriendManager, channel);
                    return 1;
                } 
                else { return 0; }
            }
            else { return 0; }
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
            PlayerPOJO playerPojo = consultInfoImple.ConsultPlayerById(idUser);          
            if (playerPojo.NoReports < 3)
            {                
                int result = UserManagerDataOperation.UpdatePlayer(playerPojo.IdPlayer);
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
            FriendsManagerDataOperation friendsManagerDataOperation = new FriendsManagerDataOperation();
            int idPlayerToEliminated = consultInfoImple.ConsultPlayerByIdUser(idUserToEliminate).IdPlayer;
            int affectedRows = friendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeleating, idPlayerToEliminated);
            if (affectedRows != 0)
            {                
                var channelSaved = FriendManagerDictionary.GetChannelUser(idUserToEliminate);
                if (channelSaved != null)
                {
                    UserPOJO userDeleating = consultInfoImple.ConsultUserByIdPlayer(idPlayerDeleating);
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
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPlayerDeclining);
            FriendsManagerDataOperation friendsManagerDataOperation = new FriendsManagerDataOperation();
            int idPlayerDeclined = consultInfoImple.ConsultPlayerByIdUser(idUserRequesting).IdPlayer;
            int affectedRows = friendsManagerDataOperation.DeleteFriendsRegister(idPlayerDeclining, idPlayerDeclined);
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
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPLayerRequesting);
            FriendsManagerDataOperation friendsManagerDataOperation = new FriendsManagerDataOperation();
            UserPOJO user = consultInfoImple.ConsultUserByIdPlayer(idPLayerRequesting);
            int idPlayerRequested = consultInfoImple.ConsultPlayerByIdUser(idUserRequested).IdPlayer;
            int affectedRows = friendsManagerDataOperation.SendFriendRequest(idPLayerRequesting, idPlayerRequested);
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
            UserPOJO userPojo = consultInfoImple.ConsultUserByIdPlayer(idPlayerAccepting);
            FriendsManagerDataOperation friendsManagerDataOperation = new FriendsManagerDataOperation();
            int idPlayerRequesting = consultInfoImple.ConsultPlayerByIdUser(idUserRequesting).IdPlayer;
            int affectedRows = friendsManagerDataOperation.AcceptFriendRequest(idPlayerAccepting, idPlayerRequesting);
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
