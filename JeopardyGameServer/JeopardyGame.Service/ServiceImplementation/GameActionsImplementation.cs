using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection;
using System.ServiceModel;
using static JeopardyGame.Service.DataDictionaries.ActiveGamesDictionary;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class GameActionsImplementation : IGameActions
    {
        private static readonly object lockObject = new object();

        public int RenewGameCallBack(int roomCode, int idUser)
        {
            int resultToReturn = ExceptionDictionary.UNSUCCESFULL_EVENT;
            lock (lockObject)
            {               
                try
                {
                    if(roomCode != 0 && idUser != 0)
                    {
                        ActiveGamesDictionary.RenewGameCallBack(roomCode, idUser, OperationContext.Current);
                        resultToReturn = ExceptionDictionary.SUCCESFULL_EVENT;
                    }                   
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }

        public void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar)
        {
            lock (lockObject)
            {
                var lobbyOfGame = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                var playerOnLobbySubscribing = lobbyOfGame.listOfPlayerInLobby.Find(u => u.idUser == idUserSubscribing);
                try { 
                    if (playerOnLobbySubscribing != null)
                    {
                        PlayerPlayingInGame playerJoiningGame = new()
                        {
                            IdUser = idUserSubscribing,
                            IdPlayer = playerOnLobbySubscribing.idPlayer,
                            UserName = playerOnLobbySubscribing.userName,
                            NumberOfPlayerInGame = playerOnLobbySubscribing.numberOfPlayerInLobby,
                            SideTeam = playerOnLobbySubscribing.sideTeam,
                            TurnOfPlayer = playerOnLobbySubscribing.numberOfPlayerInLobby,
                            DidBet = false,
                            DidAnswerLastQuestion = false,
                            FinalPoints = 0,
                            IdAvatar = idAvatar,
                            gameCallbackChannel = OperationContext.Current
                        };

                        if (ActiveGamesDictionary.GetSpecificActiveGame(roomCode) == null)
                        {
                            List<PlayerPlayingInGame> playersPlaying = new()
                            {
                                playerJoiningGame
                            };
                            ActiveGamesDictionary.RegisterNewGameIndDictionary(roomCode, playersPlaying);
                        }
                        else
                        {
                            var activeCurrentGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                            activeCurrentGame.Add(playerJoiningGame);
                        }                   
                        var activeGameStatus = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                        if (activeGameStatus.Count == 4 && activeGameStatus.Exists(pl => pl.SideTeam == 2))
                        {
                            ActiveGamesDictionary.RearrangeTurnsForTeams(roomCode);
                        }
                        var playersPlayinStatus = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                        if (lobbyOfGame.listOfPlayerInLobby.Count == playersPlayinStatus.Count)
                        {
                            NotifyEveryBodyIsReady(playersPlayinStatus);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }            
        }

        private void NotifyEveryBodyIsReady(List<PlayerPlayingInGame> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInGame = GameActionsOperationsImplementation.GetPlayerInGameDataContractList(playersPlaying);
            foreach (var player in playersPlaying)
            {
                try
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationEverybodyIsPlaying(true, player.TurnOfPlayer, playersInGame);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

    }

    public partial class GameActionsOperationsImplementation : IGameActionsOperations
    {
        private const int ERROR = 0;
        private const int NULL_INT_VALUE = 0;
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private const int FIRST_TURN = 1;
        private static readonly Object objectLock = new();

        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            lock (objectLock)
            {
                if (roomCode != NULL_INT_VALUE && idUserUnsubscribing != 0)
                {
                    var activeGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                    if (activeGame != null)
                    {
                        try
                        {
                            var playerLeaving = activeGame.Find(player => player.IdUser == idUserUnsubscribing);
                            if(playerLeaving != null)
                            { 
                                activeGame.Remove(playerLeaving);
                                ReArrangeTurns(activeGame, playerLeaving.TurnOfPlayer);
                                NotifySomePlayerLeaveTheGame(activeGame);
                            }
                        }                        
                        catch (InvalidOperationException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(idUserUnsubscribing, ChannelAdministrator.GAME_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        
                    }
                }
            }
        }

        private void ReArrangeTurns(List<PlayerPlayingInGame> playersPlayingInCurrentGame, int turnLeaving)
        {
            playersPlayingInCurrentGame.Where(item => item.TurnOfPlayer > turnLeaving).ToList().ForEach(item => item.TurnOfPlayer--);
        }

        private void NotifySomePlayerLeaveTheGame(List<PlayerPlayingInGame> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInCurrentGame = GetPlayerInGameDataContractList(playersPlaying).ToList();
            foreach (var player in playersPlaying)
            {
                try
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationSomeOneLeft(player.TurnOfPlayer, playersInCurrentGame);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }

        }

        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn)
        {
            var playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            if (playersPlaying != null)
            {
                try
                {
                    NotifySomeOneSelectAnAnswer(playersPlaying, idUserSelecting, answerSelected, pointsWorth);
                    NotifyPlayerAboutTurn(playersPlaying, currentTurn);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void NotifySomeOneSelectAnAnswer(List<PlayerPlayingInGame> playersPlaying, int idUserSelecting, int answerSelected, int pointsWorth)
        {
            foreach (var playerPlaying in playersPlaying)
            {
                try
                {
                    if (playerPlaying.gameCallbackChannel != null)
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseSomeOneChooseAnAnswer(answerSelected, idUserSelecting, pointsWorth);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void NotifyPlayerAboutTurn(List<PlayerPlayingInGame> playersPlaying, int turnJustPassed)
        {
            int playerTurn;
            if (playersPlaying.Count == turnJustPassed)
            {
                playerTurn = FIRST_TURN;
            }
            else
            {
                turnJustPassed++;
                playerTurn = turnJustPassed;
            }
            foreach (var playerPlaying in playersPlaying)
            {
                try
                {
                    playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationAboutTurn(playerTurn);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public void ChooseQuestionOfBoard(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            var activeCurrentGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            try
            {
                if (activeCurrentGame != null)
                {
                    var playersPlaying = GetSpecificActiveGame(roomCode);
                    NotifyPlayerSomeOneChooseAQuestion(playersPlaying, idUserSelecting, currentRound, questionToShow);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyPlayerSomeOneChooseAQuestion(List<PlayerPlayingInGame> playersPlayingGame, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            foreach (var playerPlaying in playersPlayingGame)
            {
                try
                {
                    if (playerPlaying.gameCallbackChannel != null)
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseSomeOneSelectAQuestion(questionToShow, currentRound, idUserSelecting);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished)
        {
            int newRound = ERROR;
            try
            {
                switch (roundFinished)
                {
                    case ROUND_ONE:
                        newRound = ROUND_TWO;
                        break;
                    case ROUND_TWO:
                        newRound = ROUND_THREE;
                        break;
                }
                var playerPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                NotifyPrepareNewRound(playerPlaying, newRound);
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
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyPrepareNewRound(List<PlayerPlayingInGame> playersPlaying, int newRound)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            if (playersPlaying != null)
            {
                foreach (var playerPlaying in playersPlaying)
                {
                    try
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseBeginRound(playerPlaying.TurnOfPlayer, newRound, playersInGame);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }

        }


        public void ConfirmBet(int roomCode, int idUser)
        {
            lock (objectLock)
            {
                if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE)
                {
                    List<PlayerPlayingInGame> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                    if (playersPlaying != null)
                    {
                        var playerBetting = playersPlaying.Find(pla => pla.IdUser == idUser);
                        if(playerBetting != null)
                        {
                            playerBetting.DidBet = true;
                        }                        
                        if (playersPlaying.Count == playersPlaying.Where(pla => pla.DidBet).ToList().Count)
                        {
                            NotifyPlayersBetsAreReady(playersPlaying);
                        }                       
                    }
                }
            }
        }

        private void NotifyPlayersBetsAreReady(List<PlayerPlayingInGame> playersPlaying)
        {
            lock (objectLock)
            {
                foreach (PlayerPlayingInGame player in playersPlaying)
                {
                    try
                    {
                        player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseShowLastQuestion();
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }
        }


        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            lock (objectLock)
            {
                if (roomCode != 0 && playerAnswering != null)
                {
                    List<PlayerPlayingInGame> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                    if (playersPlaying != null)
                    {
                        PlayerPlayingInGame specificPlayer = playersPlaying.Find(pla => pla.IdUser == playerAnswering.IdUser);
                        if (specificPlayer != null)
                        {
                            UpdatePlayerLastQuestionStatus(specificPlayer, isCorrect, playerAnswering, points);
                            CheckAndProcessEndOfRound(playersPlaying, roomCode);
                        }
                        else
                        {
                            NotifyPlayersWinner(playersPlaying, ExceptionDictionary.UNKOWN_EXCEPTION_OCURRED);
                        }
                    }
                }
            }            
        }

        private void UpdatePlayerLastQuestionStatus(PlayerPlayingInGame specificPlayer, bool isCorrect, PlayerInGameDataContract playerAnswering, int points)
        {
            specificPlayer.DidAnswerLastQuestion = true;
            if (isCorrect)
            {
                specificPlayer.FinalPoints = playerAnswering.CurrentPointsOfRound += points;
            }
            else
            {
                specificPlayer.FinalPoints = playerAnswering.CurrentPointsOfRound -= points;
            }
            
        }

        private void CheckAndProcessEndOfRound(List<PlayerPlayingInGame> playersPlaying, int roomCode)
        {
            if (playersPlaying.Count == playersPlaying.Where(pla => pla.DidAnswerLastQuestion).ToList().Count)
            {
                QuestionsManagerImplementation questionsManager = new();
                int arePointsSaved = questionsManager.RegistryGamePlayers(roomCode, playersPlaying);
                NotifyPlayersWinner(playersPlaying, arePointsSaved);
                CleanDictionariesAfterGame(roomCode);
            }
        }

        private void NotifyPlayersWinner(List<PlayerPlayingInGame> playersPlaying, int arePointsSaved)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            foreach (PlayerPlayingInGame player in playersPlaying)
            {
                try
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseShowWinner(playersInGame, arePointsSaved);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }            

        private void CleanDictionariesAfterGame(int roomCode)
        {
            QuestionsForLobbyDictionary.RemoveSetOFQuestionsFromDictionary(roomCode);
            GameLobbiesDictionary.RemoveRegistryOfLobbyFromDictionary(roomCode);
            ChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
            ChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
            var gameToFinish = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);           
            if (gameToFinish != null)
            {
                gameToFinish.Select(item => item.IdUser).ToList().ForEach(userId =>
                {
                    ActiveUsersDictionary.RemoveRegistryOfActiveUserFromDictionary(userId);
                    TeamChats.RemoveRegistryOfTeamChatUserFromDictionary(userId);
                });
                ActiveGamesDictionary.RemoveRegistryOfGameFromDictionary(roomCode);
            }

        }

        public static List<PlayerInGameDataContract> GetPlayerInGameDataContractList(List<PlayerPlayingInGame> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInGame = new();
            foreach (var playing in playersPlaying)
            {
                PlayerInGameDataContract playerInGame = new PlayerInGameDataContract()
                {
                    IdUser = playing.IdUser,
                    IdPlayer = playing.IdPlayer,
                    SideTeam = playing.SideTeam,
                    TurnOfPlayer = playing.TurnOfPlayer,
                    UserName = playing.UserName,
                    CurrentPointsOfRound = playing.FinalPoints,
                    FinalPosition = playing.FinalPoints,
                    IdAvatar = playing.IdAvatar,
                };
                playersInGame.Add(playerInGame);
            }
            return playersInGame;
        }

    }
}
