using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesServices;
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
        private readonly int NOT_STATUS = 0;
        private readonly int ACTIVE = 1;
        private readonly int INACTIVE = 2;
        private readonly int THERE_IS_A_REQUEST = 1;
        private readonly int THEY_ARE_FRIENDS = 2;

        public GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();
            if (user == null)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }            
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<List<Friend>> playerFriendsRequests = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerConsulted.ObjectSaved);
                if (playerFriendsRequests.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    List<FriendBasicInformation> friendsBasicInformation = new List<FriendBasicInformation>();
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    foreach (Friend friend in playerFriendsRequests.ObjectSaved)
                    {
                        FriendBasicInformation userFriend = new FriendBasicInformation();
                        UserPOJO newUserFriend = new UserPOJO();
                        if (friend.PlayerFriend_IdPlayer == playerConsulted.ObjectSaved.IdPlayer && friend.IdFriendState == THERE_IS_A_REQUEST)
                        {
                            var userFriendConsulted = consultInformation.ConsultUserByIdPlayer(friend.Player_IdPlayer);
                            if (userFriendConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                newUserFriend = userFriendConsulted.ObjectSaved;
                                userFriend.UserName = newUserFriend.UserName;
                                userFriend.IdUser = newUserFriend.IdUser;
                                userFriend.IdStatusAvailability = NOT_STATUS;
                                friendsBasicInformation.Add(userFriend);
                            }
                            else
                            {
                                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                                break;
                            }
                        }
                    }
                    resultToReturn.ObjectSaved = friendsBasicInformation;                    
                }
                else
                {
                    resultToReturn.CodeEvent = playerFriendsRequests.CodeEvent;
                }
            }
            else
            {
                resultToReturn.CodeEvent = playerConsulted.CodeEvent; 
            }
            return resultToReturn;
        }


        public GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();
            if (user == null)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }            
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                GenericClassServer<List<Friend>> friendsOfPlayer = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerConsulted.ObjectSaved);
                if (friendsOfPlayer.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    List<FriendBasicInformation> friendsOfUserInformation = new List<FriendBasicInformation>();
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    foreach (Friend friend in friendsOfPlayer.ObjectSaved)
                    {
                        if (friend.IdFriendState == THEY_ARE_FRIENDS)
                        {
                            FriendBasicInformation userFriendInformation = new FriendBasicInformation();
                            var userFriendPojo = new GenericClass<UserPOJO>();
                            int status;
                            if ((friend.Player_IdPlayer == playerConsulted.ObjectSaved.IdPlayer))
                            {
                                status = GetFriendStatus(friend.PlayerFriend_IdPlayer);
                                userFriendPojo = consultInformation.ConsultUserByIdPlayer(friend.PlayerFriend_IdPlayer);
                            }
                            else
                            {
                                status = GetFriendStatus(friend.Player_IdPlayer);
                                userFriendPojo = consultInformation.ConsultUserByIdPlayer(friend.Player_IdPlayer);
                            }
                            if (userFriendPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                userFriendInformation.UserName = userFriendPojo.ObjectSaved.UserName;
                                userFriendInformation.IdUser = userFriendPojo.ObjectSaved.IdUser;
                                userFriendInformation.IdStatusAvailability = status;
                                friendsOfUserInformation.Add(userFriendInformation);
                            }
                            else
                            {
                                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                                break;
                            }
                        }
                    }
                    resultToReturn.ObjectSaved = friendsOfUserInformation;                    
                }
                else 
                {
                    resultToReturn.CodeEvent = friendsOfPlayer.CodeEvent;
                }
            }
            else
            { 
                resultToReturn.CodeEvent = playerConsulted.CodeEvent;
            }
            return resultToReturn;
        }

        public GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();
            if (user == null) 
            { 
                return NullParametersHandler.HandleNullParametersService(resultToReturn); 
            }                
            User userConsulted = UserInterpreter.FromUserPojoToUserEntity(user);
            GenericClassServer<Player> playerConsulted = UserManagerDataOperation.GetPlayerByIdUser(userConsulted.IdUser);
            if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT) 
            {
                GenericClassServer<List<Player>> playersNotFriends = FriendsManagerDataOperation.Get20NotFriendsPlayer(playerConsulted.ObjectSaved);
                if (playersNotFriends.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    List<FriendBasicInformation> ListUsersNotFriendsInformation = new List<FriendBasicInformation>();
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    foreach (var player in playersNotFriends.ObjectSaved)
                    {
                        FriendBasicInformation userNotFriendInformation = new FriendBasicInformation();
                        var userFriendConsulted = consultInformation.ConsultUserByIdPlayer(player.IdPlayer);
                        if (userFriendConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            userNotFriendInformation.UserName = userFriendConsulted.ObjectSaved.UserName;
                            userNotFriendInformation.IdUser = userFriendConsulted.ObjectSaved.IdUser;
                            userNotFriendInformation.IdStatusAvailability = NOT_STATUS;
                            ListUsersNotFriendsInformation.Add(userNotFriendInformation);
                        }
                        else
                        {
                            resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                            break;
                        }
                    }
                    resultToReturn.ObjectSaved = ListUsersNotFriendsInformation;                    
                }
                else 
                { 
                    resultToReturn.CodeEvent = playersNotFriends.CodeEvent; 
                }
            }
            else 
            {
                resultToReturn.CodeEvent = playerConsulted.CodeEvent;
            }
            return resultToReturn;
        }

        private int GetFriendStatus(int idFriend)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            var userPOJO = consultInformation.ConsultUserByIdPlayer(idFriend);
            if (userPOJO.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT) 
            {
                var channelSaved = ActiveUsersDictionary.GetChannelCallBackActiveUser(userPOJO.ObjectSaved.IdUser);
                if (channelSaved != null)
                {
                    return ACTIVE;
                }
            }
            return INACTIVE;
        }
   
    }    
}



