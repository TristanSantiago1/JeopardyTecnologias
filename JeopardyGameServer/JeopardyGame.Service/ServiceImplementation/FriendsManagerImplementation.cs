using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class FriendsManagerImplementation : IFriendsManager
    {
        private int THERE_IS_A_REQUEST = 1;
        private int THEY_ARE_FRIENDS = 2;

        public List<FriendInfo> GetUserFriendRequests(UserPOJO user)
        {
            if (user == null) return null;
            Data.DataAccess.UserManagerDataOperation userManger = new Data.DataAccess.UserManagerDataOperation();
            Data.DataAccess.FriendsManagerDataOperation friends = new Data.DataAccess.FriendsManagerDataOperation();
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            Player playerConsulted = userManger.GetPlayerByIdUser(userConsulted.IdUser);
            List<Friend> playerFriends = friends.ConsultFriendsOfPlayer(playerConsulted);
            if (playerFriends == null) return null;
            List<FriendInfo> friendsInfos = new List<FriendInfo>();
            foreach (Friend friend in playerFriends)
            {
                FriendInfo userFriend = new FriendInfo();
                UserPOJO friendPojo = new UserPOJO();               
                if (friend.PlayerFriend_IdPlayer == playerConsulted.IdPlayer && friend.IdFriendState == THERE_IS_A_REQUEST)
                {                   
                    friendPojo = consultInfo.ConsultUserByIdPlayer(friend.Player_IdPlayer);
                    userFriend.UserName = friendPojo.UserName;
                    userFriend.IdUser = friendPojo.IdUser;
                    userFriend.IdStatus = 0;
                    friendsInfos.Add(userFriend);
                }      
            }
            return friendsInfos;
        }

        public List<FriendInfo> GetUserFriends(UserPOJO user)
        {
            if (user == null) return null;
            Data.DataAccess.UserManagerDataOperation userManger = new Data.DataAccess.UserManagerDataOperation();
            Data.DataAccess.FriendsManagerDataOperation friends = new Data.DataAccess.FriendsManagerDataOperation();
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            Player playerConsulted = userManger.GetPlayerByIdUser(userConsulted.IdUser);
            List<Friend> playerFriends = friends.ConsultFriendsOfPlayer(playerConsulted);
            if (playerFriends == null) return null;
            List<FriendInfo> friendsInfos = new List<FriendInfo>(); 
            
            foreach (Friend friend in playerFriends)
            {
                if (friend.IdFriendState == THEY_ARE_FRIENDS)
                {
                    FriendInfo userFriend = new FriendInfo();
                    UserPOJO friendPojo = new UserPOJO();
                    int status;
                    if ((friend.Player_IdPlayer == playerConsulted.IdPlayer))
                    {
                        status = GetFriendStatus(friend.PlayerFriend_IdPlayer);
                        friendPojo = consultInfo.ConsultUserByIdPlayer(friend.PlayerFriend_IdPlayer);
                    }
                    else
                    {
                        status = GetFriendStatus(friend.Player_IdPlayer);
                        friendPojo = consultInfo.ConsultUserByIdPlayer(friend.Player_IdPlayer);
                    }
                    userFriend.UserName = friendPojo.UserName;
                    userFriend.IdUser = friendPojo.IdUser;
                    userFriend.IdStatus = status;
                    friendsInfos.Add(userFriend);
                }                
            }
            return friendsInfos;
        }

        public List<FriendInfo> GetUsersNotFriends(UserPOJO user)
        {
            if (user == null) return null;
            Data.DataAccess.UserManagerDataOperation userManger = new Data.DataAccess.UserManagerDataOperation();
            Data.DataAccess.FriendsManagerDataOperation friends = new Data.DataAccess.FriendsManagerDataOperation();
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            Player playerConsulted = userManger.GetPlayerByIdUser(userConsulted.IdUser);
            List<Player> playerNotFriends = friends.Get20NotFriendsPlayer(playerConsulted);
            List<FriendInfo> notFriends = new List<FriendInfo>();
            foreach (var item in playerNotFriends)
            {
                FriendInfo userNotFriend = new FriendInfo();
                UserPOJO userPOJO = new UserPOJO();
                userPOJO = consultInfo.ConsultUserByIdPlayer(item.IdPlayer);
                userNotFriend.UserName = userPOJO.UserName;
                userNotFriend.IdUser = userPOJO.IdUser;
                userNotFriend.IdStatus = 0;
                notFriends.Add(userNotFriend);
            }
            return notFriends;
        }

        private int GetFriendStatus(int idFriend)
        {
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            UserPOJO userPOJO = consultInfo.ConsultUserByIdPlayer(idFriend);
            var channelSaved = ActiveUsers.GetChannelUser(userPOJO.IdUser);
            if (channelSaved != null)
            {
                return 1;
            }
            return 2;
        }

    }
    
}



