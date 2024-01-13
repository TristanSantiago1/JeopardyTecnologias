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
    internal class LobbyServiceImplementation : ILobbyService
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int ROOMCODE_ALREADY_EXIST = -1;      
        private readonly int SUCCESFUL = 1;
        private readonly int LEADER_POSITION_IN_LOBBY = 1;
        private readonly int TEAM_LEFT_SIDE = 1;
        private static readonly Object lockObject = new Object();

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
                    var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby == null)
                    {
                        ConsultInformationImplementation consultInformation = new();
                        GenericClass<UserPojo> userConsulted = consultInformation.ConsultUserById(idUser);
                        if (userConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                        {
                            GenericClass<PlayerPojo> playerConsultedByIdUser = consultInformation.ConsultPlayerByIdUser(idUser);
                            if (playerConsultedByIdUser.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
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
                                ActiveLobbiesDictionary.RegisterNewLobby(roomCode, newLobby);
                                resultToReturn.ObjectSaved = SUCCESFUL;
                                resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
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
                        resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }            
        }
        

        public GenericClass<int> JoinIntoLobby(int roomCode, int idUser)
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
                    var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    GenericClass<UserPojo> userPojo = consultInformation.ConsultUserById(idUser);
                    if (userPojo.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        GenericClass<PlayerPojo> playerPojo = consultInformation.ConsultPlayerByIdUser(idUser);
                        if (playerPojo.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
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
                            resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
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
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }
        }

        private int GetPositionOfPlayer(Lobby lobby)
        {
            int position = lobby.listOfPlayerInLobby.Count + 1;
            return position;
        }

        public int RenewLobbyCallBack(int roomCode, int idUser)
        {
            int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
            lock (lockObject)
            {
                try
                {
                    if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE)
                    {
                        return resultToReturn;
                    }
                    ActiveLobbiesDictionary.RenewLobbyCalBack(roomCode, idUser, OperationContext.Current);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }
        }
    }

    public partial class LobbyOperationImplementation : ILobbyOperation
    {

        private readonly int NULL_INT_VALUE = 0;
        private readonly int LEADER_POSITION_IN_LOBBY = 1;
        private static readonly Object lockObject = new Object();

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            try
            {
                if (roomCode != NULL_INT_VALUE || idUser != NULL_INT_VALUE)
                {
                    var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
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
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            GenericClass<List<PlayerInLobby>> resultToReturn = new GenericClass<List<PlayerInLobby>>();
            try
            {
                if (roomCode != NULL_INT_VALUE && idUserRequesting != NULL_INT_VALUE)
                {
                    var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
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
                        resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultToReturn.ObjectSaved = null;
                        resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                else
                {
                    resultToReturn = NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserRequesting, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public void LeaveLobby(int roomCode, int idUserLeaving)
        {
            lock (lockObject)
            {
                try
                {
                    if (roomCode != NULL_INT_VALUE && idUserLeaving != NULL_INT_VALUE && idUserLeaving != NULL_INT_VALUE)
                    {
                        var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                        if (lobby != null)
                        {
                            var playerLeaving = lobby.listOfPlayerInLobby.Find(pl => pl.idUser == idUserLeaving);
                            if (playerLeaving != null)
                            {
                                lobby.listOfPlayerInLobby.Remove(playerLeaving);
                                ActiveUsersDictionary.RemoveRegistryOfActiveUserFromDictionary(idUserLeaving);
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
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserLeaving, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void RemovePlayerFromChatDictionary(int roomCode, PlayerOnLobbyList playerLeaving)
        {
            ChannelsCallBackInActiveChats channelsCallBack = LobbyChatsDictionary.GetChannelCallBackChat(roomCode);
            if (channelsCallBack != null)
            {
                var channelToDelete = channelsCallBack.listOfChannelsCallBack.Find(channel => channel.idUser == playerLeaving.idUser);
                if (channelToDelete != null)
                {
                    channelsCallBack.listOfChannelsCallBack.Remove(channelToDelete);
                }
            }
        }

        private void NotifyPlayerJoiningOrLeavingLobby(int roomCode, int idUser, Lobby lobby)
        {
            GenericClass<List<PlayerInLobby>> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);
            if (playersLobby.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in lobby.listOfPlayerInLobby.Where(pla => pla.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>() != null && pla.idUser != idUser))
                {
                    try
                    {
                        item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().UpdateJoinedPlayerResponse(playersLobby);                                                                   
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                }
            }
        }

        public void DissolveLobby(int roomCode, int idUser)
        {
            lock (lockObject)
            {
                var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                try
                {
                    if (lobby != null)
                    {
                        var Leader = lobby.listOfPlayerInLobby.Find(pl => pl.idUser == idUser && pl.numberOfPlayerInLobby == LEADER_POSITION_IN_LOBBY);
                        if (Leader != null)
                        {
                            NotifyClosingLobby(lobby);
                            ActiveUsersDictionary.RemoveRegistryOfActiveUserFromDictionary(idUser);
                            ActiveLobbiesDictionary.RemoveRegistryOfLobbyFromDictionary(roomCode);
                            QuestionsForLobbyDictionary.RemoveSetOFQuestionsFromDictionary(roomCode);
                            LobbyChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                            LobbyChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void NotifyClosingLobby(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                try
                {
                    var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>();
                    if (channel != null && item.numberOfPlayerInLobby != LEADER_POSITION_IN_LOBBY)
                    {
                        channel.DissolvingLobby();
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }
       

        public void EliminatePlayerFromLobby(int roomCode, int idUserToEliminate)
        {
            if (roomCode != NULL_INT_VALUE && idUserToEliminate != NULL_INT_VALUE)
            {
                var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                try
                {
                    if (lobby != null)
                    {
                        PlayerOnLobbyList playerEjected = lobby.listOfPlayerInLobby.Find(pl => pl.idUser == idUserToEliminate);
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
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
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
                playerEjected.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().UpdateJoinedPlayerResponse(GetAllCurrentPlayerInLobby(roomCode, idUserToEliminate));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserToEliminate, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            var questions = QuestionsManagerImplementation.GetQuestionForBoard(roomCode);
            if (questions.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                QuestionsForLobbyDictionary.RegisterNewSetOfQuestionsInDictionary(roomCode, questions);
            }
            NotifyQuestionsReady(roomCode, questions.CodeEvent);
        }

        private void NotifyQuestionsReady(int roomCode, int codeEvent)
        {
            var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            if (lobby != null)
            {
                var playerLeader = lobby.listOfPlayerInLobby.Find(player => player.numberOfPlayerInLobby == LEADER_POSITION_IN_LOBBY);
                try
                {
                    if (playerLeader != null)
                    {
                        playerLeader.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().NotifyQuestionsAreReady(codeEvent);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerLeader.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public void StartGame(int roomCode)
        {
            var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            var questions = QuestionsForLobbyDictionary.GetSpecificSetOfQuestionsForLobby(roomCode);
            if (lobby != null && questions != null)
            {
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    try
                    {
                        item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().NotifyGameWillStart(questions.ObjectSaved);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                }

            }
        }

    }
}
