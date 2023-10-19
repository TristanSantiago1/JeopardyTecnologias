using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class FriendsManagerImplementation : IFriendsManager
    {
        public List<FriendInfo> GetUserFriends(UserPOJO user)
        {
            if (user == null) return null;
            Data.DataAccess.UserManagerDataOperation userManger = new Data.DataAccess.UserManagerDataOperation();
            Data.DataAccess.FriendsManagerDataOperation friends = new Data.DataAccess.FriendsManagerDataOperation();
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            Player playerConsulted = userManger.GetPlayerByIdUser(userConsulted.IdUser);
            List<Friend> playerFriends = friends.ConsultFriendsOfUser(playerConsulted);             
            List<FriendInfo> friendsInfos = new List<FriendInfo>();
            foreach (Friend friend in playerFriends)
            {
                FriendInfo userFriend = new FriendInfo();
                PlayerPOJO playerFriend = new PlayerPOJO();
                UserPOJO friendPojo = new UserPOJO();
                if ((friend.Player_IdPlayer == playerConsulted.IdPlayer) && friend.IdFriendState == 2)
                {
                    playerFriend = UserInterpreter.FromPlayerEntityToPlayerPojo(userManger.GetPlayerByIdPlayer(friend.PlayerFriend_IdPlayer));
                    friendPojo = consultInfo.ConsultUserByIdPlayer(friend.PlayerFriend_IdPlayer);
                }
                else
                {
                    playerFriend = UserInterpreter.FromPlayerEntityToPlayerPojo(userManger.GetPlayerByIdPlayer(friend.Player_IdPlayer));
                    friendPojo = consultInfo.ConsultUserByIdPlayer(friend.Player_IdPlayer);
                }
                userFriend.UserName = friendPojo.UserName;
                userFriend.IdUser = friendPojo.IdUser;
                userFriend.IdStatus = playerFriend.IdState;
                friendsInfos.Add(userFriend);
            }
            return friendsInfos;
           
        }
    }
}



