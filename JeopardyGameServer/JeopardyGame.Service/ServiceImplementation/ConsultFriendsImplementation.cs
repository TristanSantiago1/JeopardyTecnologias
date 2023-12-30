using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System.Collections.Generic;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Service.ChannelsAdministrator;
using System.Data.Entity;
using System.ServiceModel;
using System;
using JeopardyGame.Service.DataDictionaries;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ConsultFriendsImplementation : IConsultFriends
    {
        private readonly int NOT_STATUS = 0;
        private readonly int ACTIVE = 1;
        private readonly int PLAYING = 2;
        private readonly int Banned = 3;
        private readonly int INACTIVE = 0;
        private readonly int THERE_IS_A_REQUEST = 1;
        private readonly int THEY_ARE_FRIENDS = 2;        

        public GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();
            try
            {
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
                        resultToReturn = GatherFriendsByCondition(playerFriendsRequests.ObjectSaved, null, playerConsulted.ObjectSaved, 1);
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
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }     
        
        public GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();
            try
            {
                if (user == null)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                User userConsultedForUserFriends = UserInterpreter.FromUserPojoToUserEntity(user);
                GenericClassServer<Player> playerConsultedForFriends = UserManagerDataOperation.GetPlayerByIdUser(userConsultedForUserFriends.IdUser);
                if (playerConsultedForFriends.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    GenericClassServer<List<Friend>> friendsOfPlayer = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerConsultedForFriends.ObjectSaved);
                    if (friendsOfPlayer.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        resultToReturn = GatherFriendsByCondition(friendsOfPlayer.ObjectSaved, null, playerConsultedForFriends.ObjectSaved, 2);
                    }
                    else
                    {
                        resultToReturn.CodeEvent = friendsOfPlayer.CodeEvent;
                    }
                }
                else
                {
                    resultToReturn.CodeEvent = playerConsultedForFriends.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPOJO user)
        {
            GenericClass<List<FriendBasicInformation>> resultToReturn = new GenericClass<List<FriendBasicInformation>>();

            try
            {
                if (user == null)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                User userConsultedForNotFriends = UserInterpreter.FromUserPojoToUserEntity(user);
                GenericClassServer<Player> playerConsultedByIdUser = UserManagerDataOperation.GetPlayerByIdUser(userConsultedForNotFriends.IdUser);
                if (playerConsultedByIdUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    GenericClassServer<List<Player>> playersNotFriends = FriendsManagerDataOperation.Get20NotFriendsPlayer(playerConsultedByIdUser.ObjectSaved);
                    if (playersNotFriends.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        resultToReturn = GatherFriendsByCondition(null, playersNotFriends.ObjectSaved, playerConsultedByIdUser.ObjectSaved, 3);
                    }
                    else
                    {
                        resultToReturn.CodeEvent = playersNotFriends.CodeEvent;
                    }
                }
                else
                {
                    resultToReturn.CodeEvent = playerConsultedByIdUser.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }
        private GenericClass<List<FriendBasicInformation>> GatherFriendsByCondition(List<Friend> listOfPlayerFriends, List<Player> listOfNotPlayerFriends, Player playerConsulted, int typeConsult)
        {
            GenericClass<List<FriendBasicInformation>> friendsListToReturn = new GenericClass<List<FriendBasicInformation>>();
            friendsListToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
            switch (typeConsult)
            {
                case 1:
                    friendsListToReturn.ObjectSaved = GetListOfRequestFriendship(listOfPlayerFriends, playerConsulted);
                    break;
                case 2:
                    friendsListToReturn.ObjectSaved = GetListOfFriendsOfUser(listOfPlayerFriends, playerConsulted);
                    break;
                case 3:
                    friendsListToReturn.ObjectSaved = GetListOfNotFriends(listOfNotPlayerFriends, playerConsulted);
                    break;
            }
            if (friendsListToReturn.ObjectSaved != null)
            {
                friendsListToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
            }
            else
            {
                friendsListToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
            }
            return friendsListToReturn;
        }
        private List<FriendBasicInformation> GetListOfRequestFriendship(List<Friend> listOfFriendsRegistry, Player playerConsulted)
        {
            List<FriendBasicInformation> basicInformationOfFriends = new List<FriendBasicInformation>();
            FriendBasicInformation userFriendRegistry = new FriendBasicInformation();
            ConsultInformationImplementation consultFriendsInformation = new ConsultInformationImplementation();
            foreach (Friend friend in listOfFriendsRegistry)
            {
                if (friend.PlayerFriend_IdPlayer == playerConsulted.IdPlayer && friend.IdFriendState == THERE_IS_A_REQUEST)
                {
                    var userFriendConsulted = consultFriendsInformation.ConsultUserByIdPlayer(friend.Player_IdPlayer);

                    if (userFriendConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        UserPOJO newUserFriend = userFriendConsulted.ObjectSaved;
                        userFriendRegistry.UserName = newUserFriend.UserName;
                        userFriendRegistry.IdUser = newUserFriend.IdUser;
                        userFriendRegistry.EmailAddress = newUserFriend.EmailAddress;
                        userFriendRegistry.IdStatusAvailability = NOT_STATUS;
                        basicInformationOfFriends.Add(userFriendRegistry);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            return basicInformationOfFriends;
        }
        private List<FriendBasicInformation> GetListOfFriendsOfUser(List<Friend> listOfFriendsRegistry, Player playerConsulted)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            List<FriendBasicInformation> friendsOfUserInformation = new List<FriendBasicInformation>();
            foreach (Friend friend in listOfFriendsRegistry)
            {
                if (friend.IdFriendState == THEY_ARE_FRIENDS)
                {
                    FriendBasicInformation userFriendInformation = new FriendBasicInformation();
                    GenericClass<UserPOJO> userFriendPojo;
                    int status;
                    if ((friend.Player_IdPlayer == playerConsulted.IdPlayer))
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
                        userFriendInformation.EmailAddress= userFriendPojo.ObjectSaved.EmailAddress;
                        userFriendInformation.IdStatusAvailability = status;
                        friendsOfUserInformation.Add(userFriendInformation);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            return friendsOfUserInformation;
        }
        private List<FriendBasicInformation> GetListOfNotFriends(List<Player> listOfFriendsRegistry, Player playerConsulted)
        {
            ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
            List<FriendBasicInformation> ListUsersNotFriendsInformation = new List<FriendBasicInformation>();
            foreach (var player in listOfFriendsRegistry)
            {
                FriendBasicInformation userNotFriendInformation = new FriendBasicInformation();
                var userFriendConsulted = consultInformation.ConsultUserByIdPlayer(player.IdPlayer);
                if (userFriendConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    userNotFriendInformation.UserName = userFriendConsulted.ObjectSaved.UserName;
                    userNotFriendInformation.IdUser = userFriendConsulted.ObjectSaved.IdUser;
                    userNotFriendInformation.EmailAddress = userFriendConsulted.ObjectSaved.EmailAddress;
                    userNotFriendInformation.IdStatusAvailability = NOT_STATUS;
                    ListUsersNotFriendsInformation.Add(userNotFriendInformation);
                }
                else
                {
                    return null;
                }
            }
            return ListUsersNotFriendsInformation;
        }

        private int GetFriendStatus(int idFriend)
        {
            ConsultInformationImplementation consultInformationOfFriends = new ConsultInformationImplementation();
            var userPOJO = consultInformationOfFriends.ConsultUserByIdPlayer(idFriend);
            if (userPOJO.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                var channelSavedForFriendStatus = LivingClients.GetClient(userPOJO.ObjectSaved.UserName);
                if (channelSavedForFriendStatus != null)
                {
                    return PLAYING;
                }
            }
            if (userPOJO.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT) 
            {
                var channelSavedForFriendStatus = ActiveUsersDictionary.GetChannelCallBackActiveUser(userPOJO.ObjectSaved.IdUser);
                if (channelSavedForFriendStatus != null)
                {
                    return ACTIVE;
                }
            }            
            var playerPojo = consultInformationOfFriends.ConsultPlayerById(idFriend);
            if (playerPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {                
                if (playerPojo.ObjectSaved.NoReports == 3)
                {
                    return Banned;
                }
            }
            return INACTIVE;
        }

    }
    
}



