using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.ServiceModel;
using static JeopardyGame.Service.DataDictionaries.ActiveGamesDictionary;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class GameActionsImplementation : IGameActions
    {
        private const int ERROR = 0;
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private const int GAME_FINISHED = 4;
        private const int FIRST_TURN = 1;
        private static object lockObject = new object();

        public void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar)
        {
            lock (lockObject)
            {
                var lobbyOfGame = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                var playerOnLobbySubscribing = lobbyOfGame.listOfPlayerInLobby.FirstOrDefault(u => u.idUser == idUserSubscribing);
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
                        if (activeGameStatus.Count == 4 && activeGameStatus.Any(pl => pl.SideTeam == 2))
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSubscribing, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }            
        }

        private void NotifyEveryBodyIsReady(List<PlayerPlayingInGame> playersPlaying)
        {            
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            foreach (var player in playersPlaying)
            {
                try 
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationEverybodyIsPlaying(true, player.TurnOfPlayer, playersInGame);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            var activeGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            if (activeGame != null)
            {
                var playerLeaving = activeGame.Where(player => player.IdUser == idUserUnsubscribing).FirstOrDefault();
                if (playerLeaving != null)
                {
                    try
                    {
                        int turnLeaving = activeGame.FirstOrDefault(player => player.IdUser == idUserUnsubscribing).TurnOfPlayer;
                        activeGame.Remove(playerLeaving);
                        ReArrangeTurns(activeGame, turnLeaving);                       
                        NotifySomePlayerLeaveTheGame(activeGame);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idUserUnsubscribing, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idUserUnsubscribing, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idUserUnsubscribing, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
            List<PlayerInGameDataContract> playersInCurrentGame = GetPlayerInGameDataContractList(playersPlaying);            
            foreach (var player in playersPlaying)
            {
                try
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationSomeOneLeft(player.TurnOfPlayer, playersInCurrentGame);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                    
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUserSelecting, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                        var activeGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                        AssignTurnsByPoints(playerInGame, activeGame);
                        newRound = ROUND_TWO;
                        break;
                    case ROUND_TWO:
                        newRound = ROUND_THREE;
                        break;
                    case ROUND_THREE:
                        newRound = GAME_FINISHED;
                        break;
                }
                var playerPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                NotifyPrepareNewRound(playerPlaying, newRound);
            }
            catch (CommunicationObjectFaultedException ex)
            {               
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
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
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }
            
        } 

        private void AssignTurnsByPoints(List<PlayerInGameDataContract> playerInGame, List<PlayerPlayingInGame> playersPlaying)
        {
            var sortedPlayers = playerInGame.OrderBy(player => player.CurrentPointsOfRound).ToList();
            int turn = FIRST_TURN;
            foreach (var player in sortedPlayers)
            {
                var playerChangingTurn = playersPlaying.FirstOrDefault(p => p.IdUser == player.IdUser);
                if (playerChangingTurn != null)
                {
                    playerChangingTurn.TurnOfPlayer = turn;
                    turn++;
                }
                else
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                }
            }
        }


        public void ConfirmBet(int roomCode, int idUser)
        {
            List<PlayerPlayingInGame> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            playersPlaying.FirstOrDefault(pla => pla.IdUser == idUser).DidBet = true;
            try
            {
                if (playersPlaying.Count == playersPlaying.Where(pla => pla.DidBet == true).ToList().Count)
                {
                    NotifyPlayersBetsAreReady(playersPlaying);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyPlayersBetsAreReady(List<PlayerPlayingInGame> playersPlaying)
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
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }


        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            List<PlayerPlayingInGame> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            PlayerPlayingInGame specificPlayer = playersPlaying.FirstOrDefault(pla => pla.IdUser == playerAnswering.IdUser);
            //si alguiens e sale durante la ultima regunta, quitarlo del diccionario y verificar playerAwnserin = null
            specificPlayer.DidAnswerLastQuestion = true;
            try
            {
                if (isCorrect)
                {
                    specificPlayer.FinalPoints = playerAnswering.CurrentPointsOfRound += points;
                }
                else
                {
                    specificPlayer.FinalPoints = playerAnswering.CurrentPointsOfRound -= points;
                }
                if (playersPlaying.Count == playersPlaying.Where(pla => pla.DidAnswerLastQuestion == true).ToList().Count)
                {
                    NotifyPlayersWinner(playersPlaying);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(playerAnswering.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(playerAnswering.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(playerAnswering.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyPlayersWinner(List<PlayerPlayingInGame> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            foreach (PlayerPlayingInGame player in playersPlaying)
            {
                try
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseShowWinner(playersInGame);                
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }            
        }

        public void FinishGame(int roomCode, List<PlayerInGameDataContract> playerInGame)
        {
            QuestionsManagerImplementation managerImplementation = new QuestionsManagerImplementation();
            managerImplementation.RegistryGamePlayers(roomCode, playerInGame);
            var playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            try
            {
                if (playersPlaying != null )
                {
                    NotifyPlayersFinishGame(playersPlaying);
                    CleanDictionariesAfterGame(roomCode);
                    QuestionsManagerImplementation questionsManager = new();
                    questionsManager.RegistryGamePlayers(roomCode, playerInGame);
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
        }

        private void NotifyPlayersFinishGame(List<PlayerPlayingInGame> playersPlaying)
        {
            foreach (var playerPlaying in playersPlaying)
            {
                if (playerPlaying != null)
                {
                    try
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseFinishGame();
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(playerPlaying.IdUser, ChannelAdministrator.GAME_EXCEPTION);
                        ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                    }

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
            if (gameToFinish != null && gameToFinish.Any(pl => pl.SideTeam == 2))
            {
                foreach (var item in gameToFinish)
                {
                    TeamChats.RemoveRegistryOfTeamChatUserFromDictionary(item.IdUser);
                }                
            }
            ActiveGamesDictionary.RemoveRegistryOfGameFromDictionary(roomCode);
        }

        private List<PlayerInGameDataContract> GetPlayerInGameDataContractList(List<PlayerPlayingInGame> playersPlaying)
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
