using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.ServiceImplementation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.ServiceModel;

namespace JeopardyGame.Service.ChannelsAdministrator
{
    public static  class ChannelAdministrator
    {

        private const int _AVAILABILITY_EXCEPTION = 1;
        private const int _FRIEND_MANAGER_EXCEPTION = 2;
        private const int _LOBBY_EXCEPTION = 3;
        private const int _GAME_EXCEPTION = 4;
        private const int _TEAM_CHAT_EXCEPTION = 5;
        private const int _GENERIC_COMMUNICATION_EXCEPTION = 6;

        public static int FRIEND_MANAGER_EXCEPTION => _FRIEND_MANAGER_EXCEPTION;

        public static int LOBBY_EXCEPTION => _LOBBY_EXCEPTION;

        public static int GAME_EXCEPTION => _GAME_EXCEPTION;

        public static int AVAILABILITY_EXCEPTION => _AVAILABILITY_EXCEPTION;

        public static int TEAM_CHAT_EXCEPTION => _TEAM_CHAT_EXCEPTION;

        public static int GENERIC_COMMUNICATION_EXCEPTION => _GENERIC_COMMUNICATION_EXCEPTION;

        public static int VerifyUserIsStillActive(string userCausingException)
        {
            var channel = LivingClients.GetClient(userCausingException);
            if (channel != null)
            {
                try
                {
                    bool isActive = channel.GetCallbackChannel<ICheckUserLivingCallBack>().IsClientActive();
                    if (isActive)
                    {
                        return ExceptionDictionary.UNSUCCESFULL_EVENT;
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
                catch (CommunicationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch(InvalidOperationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
            return ExceptionDictionary.SUCCESFULL_EVENT;
        }

        public static void HandleCommunicationIssue(int idUserCausingException, int serviceType)
        {

            if (idUserCausingException != 0 && serviceType != 0)
            {
                switch (serviceType)
                {
                    case _AVAILABILITY_EXCEPTION:
                        HandleAvailabilityCommunicationException(idUserCausingException);
                        break;
                    case _FRIEND_MANAGER_EXCEPTION:
                        HandleFriendManagerCommunicationException(idUserCausingException);
                        break;
                    case _LOBBY_EXCEPTION:
                        HandleLobbyCommunicationException(idUserCausingException);
                        break;
                    case _GAME_EXCEPTION:
                        HandleGameCommunicationException(idUserCausingException);
                        break;
                    case _TEAM_CHAT_EXCEPTION:
                        HandleTeamChatCommunicationException(idUserCausingException);
                        break;
                    case _GENERIC_COMMUNICATION_EXCEPTION:
                        HandleGeneriCommunicationException(idUserCausingException);
                        break;
                }
            }
            
        }

        private static void HandleFriendManagerCommunicationException(int idUserCausingException)
        {
            FriendManagerActionsOperationImplementation friendManagerActions = new ();
            friendManagerActions.UnregisterFriendManagerUser(idUserCausingException);
            int isUserDisconnected = VerifyUserIsStillActive(GetUserNameClient(idUserCausingException));
            if (isUserDisconnected == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                KickUserFromDictionaries(idUserCausingException);
            }              
        }

        private static void HandleLobbyCommunicationException(int idUserCausingException)
        {
            try
            { 
                var lobbyList = GameLobbiesDictionary.GetActiveLobbiesList();
                int roomCode = lobbyList.FirstOrDefault(entry => entry.Value.listOfPlayerInLobby.Exists(pl => pl.idUser == idUserCausingException)).Key;
                LobbyActionsOperationImplementation lobbyActions = new();
                var lobbyFailed = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobbyFailed != null)
                {
                    if (lobbyFailed.idAdmin == idUserCausingException)
                    {
                        lobbyActions.DissolveLobby(roomCode, idUserCausingException);
                    }
                    else
                    {
                        lobbyActions.LeaveLobby(roomCode, idUserCausingException);
                    }
                }
                int isUserDisconnected = VerifyUserIsStillActive(GetUserNameClient(idUserCausingException));
                if (isUserDisconnected == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    KickUserFromDictionaries(idUserCausingException);
                }
            }
            catch(KeyNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }           
        }

        private static void HandleGameCommunicationException(int idUserCausingException)
        {
            var lobbyList = GameLobbiesDictionary.GetActiveLobbiesList();
            int roomCode = lobbyList.FirstOrDefault(entry => entry.Value.listOfPlayerInLobby.Exists(pl => pl.idUser == idUserCausingException)).Key;
            GameActionsOperationsImplementation gameActions = new ();
            gameActions.UnSubscribeFromGameCallBack(roomCode, idUserCausingException);
            HandleLobbyCommunicationException(idUserCausingException);
        }

        private static void HandleAvailabilityCommunicationException(int idUserCausingException)
        {
            NotifyUserIsNotAvailableImplementation notifyUser = new();
            notifyUser.PlayerIsNotAvailable(idUserCausingException);
            int isUserDisconnected = VerifyUserIsStillActive(GetUserNameClient(idUserCausingException));
            if (isUserDisconnected == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                KickUserFromDictionaries(idUserCausingException);
            }
        }

        private static void HandleTeamChatCommunicationException(int idUserCausingException)
        {
            TeamChats.RemoveRegistryOfTeamChatUserFromDictionary(idUserCausingException);
            int isUserDisconnected = VerifyUserIsStillActive(GetUserNameClient(idUserCausingException));
            if (isUserDisconnected == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                KickUserFromDictionaries(idUserCausingException);
            }
        }

        private static void HandleGeneriCommunicationException(int idUserCausingException)
        {
            int isUserDisconnected = VerifyUserIsStillActive(GetUserNameClient(idUserCausingException));
            if (isUserDisconnected == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                KickUserFromDictionaries(idUserCausingException);
            }
        }


        public static void KickUserFromDictionaries(int idUserCausingException)
        {  
            NotifyUserIsNotAvailableImplementation notifyUser = new();
            GameActionsOperationsImplementation gameActions = new ();
            FriendManagerActionsOperationImplementation friendsManager = new();
            LobbyActionsOperationImplementation lobbyActions = new();

            LivingClients.RemoveClientFromDictionary(GetUserNameClient(idUserCausingException));
            notifyUser.PlayerIsNotAvailable(idUserCausingException);
            var lobbyList = GameLobbiesDictionary.GetActiveLobbiesList();
            friendsManager.UnregisterFriendManagerUser(idUserCausingException);
            int roomCode = lobbyList.FirstOrDefault(entry => entry.Value.listOfPlayerInLobby.Exists(pl => pl.idUser == idUserCausingException)).Key;             
            if(roomCode != 0)
            {                
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    if (lobby.idAdmin == idUserCausingException)
                    {
                        lobbyActions.DissolveLobby(roomCode, idUserCausingException);
                    }
                    else
                    {
                        lobbyActions.LeaveLobby(roomCode, idUserCausingException);
                    }
                    gameActions.UnSubscribeFromGameCallBack(roomCode, idUserCausingException);
                }                
            }           
        }

        private static string GetUserNameClient(int idUser)
        {
            ConsultInformationImplementation consultInformationImplementation = new();
            string user = consultInformationImplementation.ConsultUserById(idUser).ObjectSaved.UserName;
            return user;
        }
    }
}
