using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Configuration;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class LobbyActionsImplementation : ILobbyActions
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int ROOMCODE_ALREADY_EXIST = -1;      
        private readonly int SUCCESFUL = 1;
        private readonly int LEADER_POSITION_IN_LOBBY = 1;
        private readonly int TEAM_LEFT_SIDE = 1;
        private readonly int TEAM_RIGTH_SIDE = 2;
        private readonly int MAX_PLAYERS = 4;
        private static Object lockObject = new Object();

        public GenericClass<int> CreateNewLobby(int roomCode, int idUser)
        {
            lock (lockObject)
            {
                GenericClass<int> resultToReturn = new GenericClass<int>();
                try
                {
                    if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE)
                    {
                        return NullParametersHandler.HandleNullParametersService(resultToReturn);
                    }
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby == null)
                    {
                        ConsultInformationImplementation consultInformation = new();
                        GenericClass<UserPOJO> userConsulted = consultInformation.ConsultUserById(idUser);
                        if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            GenericClass<PlayerPOJO> playerConsultedByIdUser = consultInformation.ConsultPlayerByIdUser(idUser);
                            if (playerConsultedByIdUser.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                            {
                                PlayerOnLobbyList leaderOfTheGame = new PlayerOnLobbyList();
                                leaderOfTheGame.idUser = idUser;
                                leaderOfTheGame.idPlayer = playerConsultedByIdUser.ObjectSaved.IdPlayer;
                                leaderOfTheGame.userName = userConsulted.ObjectSaved.UserName;
                                leaderOfTheGame.numberOfPlayerInLobby = LEADER_POSITION_IN_LOBBY;
                                leaderOfTheGame.sideTeam = TEAM_LEFT_SIDE;
                                leaderOfTheGame.lobbyCommunicationChannelCallback = OperationContext.Current;
                                Lobby newLobby = new Lobby();
                                newLobby.idAdmin = idUser;
                                newLobby.listOfPlayerInLobby.Add(leaderOfTheGame);
                                GameLobbiesDictionary.RegisterNewLobby(roomCode, newLobby);
                                resultToReturn.ObjectSaved = SUCCESFUL;
                                resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                            }
                            else
                            {
                                resultToReturn.CodeEvent = playerConsultedByIdUser.CodeEvent;
                            }
                        }
                        else
                        {
                            resultToReturn.CodeEvent = userConsulted.CodeEvent;
                        }
                    }
                    else
                    {
                        resultToReturn.ObjectSaved = ROOMCODE_ALREADY_EXIST;
                        resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }            
        }
        

        public GenericClass<int> JoinIntoLobby(int roomCode, int idUser)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);               
                ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                GenericClass<UserPOJO> userPojo = consultInformation.ConsultUserById(idUser);
                if (userPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    GenericClass<PlayerPOJO> playerPojo = consultInformation.ConsultPlayerByIdUser(idUser);
                    if (playerPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        PlayerOnLobbyList playerJoining = new PlayerOnLobbyList();
                        playerJoining.idUser = idUser;
                        playerJoining.idPlayer = playerPojo.ObjectSaved.IdPlayer;
                        playerJoining.userName = userPojo.ObjectSaved.UserName;
                        playerJoining.numberOfPlayerInLobby = GetPositionOfPlayer(lobby);
                        playerJoining.sideTeam = TEAM_LEFT_SIDE;
                        playerJoining.lobbyCommunicationChannelCallback = OperationContext.Current;
                        lobby.listOfPlayerInLobby.Add(playerJoining);
                        resultToReturn.ObjectSaved = SUCCESFUL;
                        resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultToReturn.CodeEvent = playerPojo.CodeEvent;
                    }
                }
                else
                {
                    resultToReturn.CodeEvent = userPojo.CodeEvent;
                }                               
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }  
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        private int GetPositionOfPlayer(Lobby lobby)
        {
            int position = lobby.listOfPlayerInLobby.Count + 1;
            return position;
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            try
            {
                if (roomCode != NULL_INT_VALUE || idUser != NULL_INT_VALUE)
                {
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {
                            if (item.idUser == idUser)
                            {
                                NotifyPlayerJoiningOrLeavingLobby(roomCode, idUser, lobby);
                                break;
                            }
                        }
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }            
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            GenericClass<List<PlayerInLobby>> resultToReturn = new GenericClass<List<PlayerInLobby>>();
            try
            {
                if (roomCode != NULL_INT_VALUE && idUserRequesting != NULL_INT_VALUE)
                {
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        List<PlayerInLobby> playerInLobbies = new List<PlayerInLobby>();
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {
                            PlayerInLobby playerIn = new();
                            playerIn.IdUser = item.idUser;
                            playerIn.IdPlayer = item.idPlayer;
                            playerIn.UserName = item.userName;
                            playerIn.NumberOfPlayerInLobby = item.numberOfPlayerInLobby;
                            playerIn.SideOfTeam = item.sideTeam;
                            playerInLobbies.Add(playerIn);
                        }
                        resultToReturn.ObjectSaved = playerInLobbies;
                        resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultToReturn.ObjectSaved = null;
                        resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                else
                {
                    resultToReturn = NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }            
            return resultToReturn;
        }

        public void LeaveLobby(int roomCode, int idUserLeaving)
        {
            try
            {
                if (roomCode != NULL_INT_VALUE && idUserLeaving != NULL_INT_VALUE && idUserLeaving != NULL_INT_VALUE)
                {
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        var playerLeaving = lobby.listOfPlayerInLobby.FirstOrDefault(pl => pl.idUser == idUserLeaving);                       
                        if (playerLeaving != null)
                        {
                            lobby.listOfPlayerInLobby.Remove(playerLeaving);
                            RearrangePositions(lobby, playerLeaving.numberOfPlayerInLobby);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUserLeaving, lobby);
                            RemovePlayerFromChatDictionary(roomCode, playerLeaving);                          
                        }                        
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void RemovePlayerFromChatDictionary(int roomCode, PlayerOnLobbyList playerLeaving)
        {
            ChannelsCallBackInActiveChats channelsCallBack= ChatsDictionary.GetChannelCallBackChat(roomCode);
            if (channelsCallBack != null)
            {
                var channelToDelete = channelsCallBack.listOfChannelsCallBack.FirstOrDefault(channel => channel.idUser == playerLeaving.idUser);
                if (channelToDelete != null)
                {
                    channelsCallBack.listOfChannelsCallBack.Remove(channelToDelete);
                }
            }           
        }

        private void NotifyPlayerJoiningOrLeavingLobby(int roomCode, int idUser, Lobby lobby)
        {
            GenericClass<List<PlayerInLobby>> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);           
            if (playersLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    try
                    {
                        var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                        if (channel != null && idUser != item.idUser)
                        {
                            channel.UpdateJoinedPlayerResponse(playersLobby);
                        }
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }         
        }   

        public void DissolveLobby(int roomCode, int idUser)
        {
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            try
            {
                if (lobby != null)
                {
                    var Leader = lobby.listOfPlayerInLobby.FirstOrDefault(pl => pl.idUser == idUser && pl.numberOfPlayerInLobby == LEADER_POSITION_IN_LOBBY);
                    if (Leader != null)
                    {
                        NotifyClosingLobby(lobby);
                        GameLobbiesDictionary.RemoveRegistryOfLobbyFromDictionary(roomCode);
                        QuestionsForLobbyDictionary.RemoveSetOFQuestionsFromDictionary(roomCode);
                        ChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                        ChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        } 

        private void NotifyClosingLobby(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                try
                {
                    var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                    if (channel != null && item.numberOfPlayerInLobby != LEADER_POSITION_IN_LOBBY)
                    {
                        channel.DissolvingLobby();
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }                   
            }                       
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            try
            {
                if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE)
                {
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        if (lobby.listOfPlayerInLobby.Count == MAX_PLAYERS && wannaTeam)
                        {
                            AssignTeamSide(lobby);
                        }
                        else
                        {
                            DissolveTeamsSides(lobby);
                        }
                        NotifyPlayersAboutTeams(lobby, idUser, wannaTeam);
                    }
                }
            }            
            catch (CommunicationObjectFaultedException ex)
                {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
                {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
                {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void AssignTeamSide(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                if (item.numberOfPlayerInLobby <= 2)
                {
                    item.sideTeam = TEAM_LEFT_SIDE;                    
                }
                else
                {
                    item.sideTeam = TEAM_RIGTH_SIDE;
                }
            }
        }

        private void DissolveTeamsSides(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                item.sideTeam = TEAM_LEFT_SIDE;
            }
        }

        private void NotifyPlayersAboutTeams(Lobby lobby, int idUserNotifying, bool wannaTeam)
        {            
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                try
                {
                    if (item.idUser != idUserNotifying)
                    {
                        item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().MakeTeamsResponse(wannaTeam);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
          
        }

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            if (roomCode != NULL_INT_VALUE && idUserToChangeTeam != NULL_INT_VALUE && newSideTeam != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                try
                {
                    if (lobby != null)
                    {
                        var player = lobby.listOfPlayerInLobby.FirstOrDefault(pl => pl.idUser == idUserToChangeTeam);
                        if (player != null)
                        {
                            player.sideTeam = newSideTeam;
                            NotifyPlayerChangedOfSide(roomCode, idUserToChangeTeam, lobby);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }
        private void NotifyPlayerChangedOfSide(int roomCode, int idUser, Lobby lobby)
        {
            GenericClass<List<PlayerInLobby>> playersInLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);            
            if (playersInLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    try
                    {
                        var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                        if (channel != null && lobby.idAdmin != item.idUser)
                        {
                            channel.UpdateTeamSide(playersInLobby);
                        }
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }            
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUserToEliminate)
        {            
            if (roomCode != NULL_INT_VALUE && idUserToEliminate != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                try
                {
                    if (lobby != null)
                    {
                        PlayerOnLobbyList playerEjected = lobby.listOfPlayerInLobby.FirstOrDefault(pl => pl.idUser == idUserToEliminate);
                        if (playerEjected != null)
                        {
                            lobby.listOfPlayerInLobby.Remove(playerEjected);
                            RearrangePositions(lobby, playerEjected.numberOfPlayerInLobby);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUserToEliminate, lobby);
                            NotifyPlayerBeingExpelled(playerEjected, roomCode, idUserToEliminate);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }         
        }

        private void RearrangePositions(Lobby lobby, int eliminatedPosition)
        {
            lobby.listOfPlayerInLobby.Where(item => item.numberOfPlayerInLobby > eliminatedPosition).ToList().ForEach(item => item.numberOfPlayerInLobby--);
        }

        private void NotifyPlayerBeingExpelled(PlayerOnLobbyList playerEjected, int roomCode, int idUserToEliminate)
        {
            try
            {
                playerEjected.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().UpdateJoinedPlayerResponse(GetAllCurrentPlayerInLobby(roomCode, idUserToEliminate));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            QuestionsManagerImplementation questionsManagerImplementation = new();
            var questions = questionsManagerImplementation.GetQuestionForBoard(roomCode);
            if (questions.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                QuestionsForLobbyDictionary.RegisterNewSetOfQuestionsInDictionary(roomCode, questions);                
            }
            NotifyQuestionsReady(roomCode, questions.CodeEvent);
        }

        private void NotifyQuestionsReady(int roomCode, int codeEvent)
        {
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);            
            if (lobby != null)
            {
                var playerLeader = lobby.listOfPlayerInLobby.Find(player => player.numberOfPlayerInLobby == LEADER_POSITION_IN_LOBBY);
                try
                {                    
                    if (playerLeader != null)
                    {
                        playerLeader.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().NotifyQuestionsAreReady(codeEvent);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
            else
            {

            }            
        }

        public void StartGame(int roomCode)
        {
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            var questions = QuestionsForLobbyDictionary.GetSpecificSetOfQuestionsForLobby(roomCode);           
            if (lobby != null && questions != null)
            {                
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    try
                    {
                        item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().NotifyGameWillStart(questions.ObjectSaved);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
                
            }           
        }
    }
}
