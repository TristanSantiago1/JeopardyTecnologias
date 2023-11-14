using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using System.Xml.XPath;
using JeopardyGame.Data.DataAccess;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class FriendsManagerImplementation : IFriendsManager
    {
        private int NOT_STATUS = 0;
        private int ACTIVE = 1;
        private int INACTIVE = 2;
        private int THERE_IS_A_REQUEST = 1;
        private int THEY_ARE_FRIENDS = 2;

        public GenericClass<List<FriendInfo>> GetUserFriendRequests(UserPOJO user)
        {
            GenericClass<List<FriendInfo>> resultToReturn = new GenericClass<List<FriendInfo>>();
            if (user == null) return NullParametersHandler.HandleNullParametersService(resultToReturn);
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<List<Friend>> playerFriends = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerConsulted.ObjectSaved);
                if (playerFriends.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
                {
                    List<FriendInfo> friendsInfos = new List<FriendInfo>();
                    foreach (Friend friend in playerFriends.ObjectSaved)
                    {
                        FriendInfo userFriend = new FriendInfo();
                        UserPOJO friendPojo = new UserPOJO();
                        if (friend.PlayerFriend_IdPlayer == playerConsulted.ObjectSaved.IdPlayer && friend.IdFriendState == THERE_IS_A_REQUEST)
                        {
                            friendPojo = consultInfo.ConsultUserByIdPlayer(friend.Player_IdPlayer).ObjectSaved;
                            userFriend.UserName = friendPojo.UserName;
                            userFriend.IdUser = friendPojo.IdUser;
                            userFriend.IdStatus = NOT_STATUS;
                            friendsInfos.Add(userFriend);
                        }
                    }
                    resultToReturn.ObjectSaved = friendsInfos;
                    resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
                else { resultToReturn.CodeEvent = playerFriends.CodeEvent; }
            }
            else {resultToReturn.CodeEvent = playerConsulted.CodeEvent; }
            return resultToReturn;
        }


        public GenericClass<List<FriendInfo>> GetUserFriends(UserPOJO user)
        {
            GenericClass<List<FriendInfo>> resultToReturn = new GenericClass<List<FriendInfo>>();
            if (user == null) return NullParametersHandler.HandleNullParametersService(resultToReturn);            
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<List<Friend>> friendsConsulted = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerConsulted.ObjectSaved);
                if (friendsConsulted.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
                {
                    List<FriendInfo> friendsInfos = new List<FriendInfo>();
                    foreach (Friend friend in friendsConsulted.ObjectSaved)
                    {
                        if (friend.IdFriendState == THEY_ARE_FRIENDS)
                        {
                            FriendInfo userFriend = new FriendInfo();
                            UserPOJO friendPojo = new UserPOJO();
                            int status;
                            if ((friend.Player_IdPlayer == playerConsulted.ObjectSaved.IdPlayer))
                            {
                                status = GetFriendStatus(friend.PlayerFriend_IdPlayer);
                                friendPojo = consultInfo.ConsultUserByIdPlayer(friend.PlayerFriend_IdPlayer).ObjectSaved;
                            }
                            else
                            {
                                status = GetFriendStatus(friend.Player_IdPlayer);
                                friendPojo = consultInfo.ConsultUserByIdPlayer(friend.Player_IdPlayer).ObjectSaved;
                            }
                            userFriend.UserName = friendPojo.UserName;
                            userFriend.IdUser = friendPojo.IdUser;
                            userFriend.IdStatus = status;
                            friendsInfos.Add(userFriend);
                        }
                    }
                    resultToReturn.ObjectSaved = friendsInfos;
                    resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
                else { resultToReturn.CodeEvent = friendsConsulted.CodeEvent; }
            }
            else { resultToReturn.CodeEvent = playerConsulted.CodeEvent; }
            return resultToReturn;
        }

        public GenericClass<List<FriendInfo>> GetUsersNotFriends(UserPOJO user)
        {
            GenericClass<List<FriendInfo>> resultToReturn = new GenericClass<List<FriendInfo>>();
            if (user == null) return NullParametersHandler.HandleNullParametersService(resultToReturn);          
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT) 
            {
                GenericClassServer<List<Player>> playerNotFriends = FriendsManagerDataOperation.Get20NotFriendsPlayer(playerConsulted.ObjectSaved);
                if (playerNotFriends.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
                {
                    List<FriendInfo> notFriends = new List<FriendInfo>();
                    foreach (var item in playerNotFriends.ObjectSaved)
                    {
                        FriendInfo userNotFriend = new FriendInfo();
                        UserPOJO userPOJO = new UserPOJO();
                        userPOJO = consultInfo.ConsultUserByIdPlayer(item.IdPlayer).ObjectSaved;
                        userNotFriend.UserName = userPOJO.UserName;
                        userNotFriend.IdUser = userPOJO.IdUser;
                        userNotFriend.IdStatus = NOT_STATUS;
                        notFriends.Add(userNotFriend);
                    }
                    resultToReturn.ObjectSaved = notFriends;
                    resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
                else { resultToReturn.CodeEvent = playerNotFriends.CodeEvent; }
            }
            else { resultToReturn.CodeEvent = playerConsulted.CodeEvent; }
            return resultToReturn;
        }

        private int GetFriendStatus(int idFriend)
        {
            ConsultInfoImple consultInfo = new ConsultInfoImple();
            UserPOJO userPOJO = consultInfo.ConsultUserByIdPlayer(idFriend).ObjectSaved;
            var channelSaved = ActiveUsers.GetChannelUser(userPOJO.IdUser);
            if (channelSaved != null)
            {
                return ACTIVE;
            }
            return INACTIVE;
        }
   
    }
    
}



