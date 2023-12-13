using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
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
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                var playerOnLobbySubscribing = lobby.listOfPlayerInLobby.FirstOrDefault(u => u.idUser == idUserSubscribing);
                if (playerOnLobbySubscribing != null)
                {
                    PlayerPlaying playerJoiningGame = new()
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
                        List<PlayerPlaying> playersPlaying = new()
                        {
                            playerJoiningGame
                        };
                        ActiveGamesDictionary.RegisterNewGameIndDictionary(roomCode, playersPlaying);
                    }
                    else
                    {
                        var activeGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                        activeGame.Add(playerJoiningGame);
                    }                   
                    var activeGameStatus = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                    if (activeGameStatus.Count == 4 && activeGameStatus.Any(pl => pl.SideTeam == 2))
                    {
                        ActiveGamesDictionary.RearrangeTurnsForTeams(roomCode);
                    }
                    var playersPlayinStatus = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
                    if (lobby.listOfPlayerInLobby.Count == playersPlayinStatus.Count)
                    {
                        NotifyEveryBodyIsReady(playersPlayinStatus);
                    }
                }
            }            
        }

        private void NotifyEveryBodyIsReady(List<PlayerPlaying> playersPlaying)
        {
            
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);         
            foreach (var player in playersPlaying)
            {
                player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationEverybodyIsPlaying(true, player.TurnOfPlayer, playersInGame);
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
                    int turnLeaving = activeGame.FirstOrDefault(player => player.IdUser == idUserUnsubscribing).TurnOfPlayer;
                    activeGame.Remove(playerLeaving);
                    RearrangeTurns(activeGame, turnLeaving);
                    NotifySomeOneLeaveTheGame(activeGame);
                }                  
            }
            else
            {
                //no se
            }
        }

        private void RearrangeTurns(List<PlayerPlaying> playersPlaying, int turnLeaving)
        {
            playersPlaying.Where(item => item.TurnOfPlayer > turnLeaving).ToList().ForEach(item => item.TurnOfPlayer--);
        }

        private void NotifySomeOneLeaveTheGame(List<PlayerPlaying> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            foreach (var player in playersPlaying)
            {
                player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationSomeOneLeft(player.TurnOfPlayer, playersInGame);
            }
        }

        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn)
        {
            var playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            if (playersPlaying != null)
            {
                foreach (var playerPlaying in playersPlaying)
                {
                    if (playerPlaying.gameCallbackChannel != null)
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseSomeOneChooseAnAnswer(answerSelected, idUserSelecting, pointsWorth);
                    }
                }                
                NotifyPlayerAboutTurn(playersPlaying, currentTurn);
            }
        }

        private void NotifyPlayerAboutTurn(List<PlayerPlaying> playersPlaying, int turnJustPassed)
        {
            int yourTurn;
            if (playersPlaying.Count == turnJustPassed)
            {
                yourTurn = FIRST_TURN;
            }
            else
            {
                turnJustPassed++;
                yourTurn = turnJustPassed;
            }
            foreach (var playerPlaying in playersPlaying)
            {
               playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ReceiveNotificationAboutTurn(yourTurn);
            }
        }

        public void ChooseQuestion(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            var activeGame = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            if (activeGame != null)
            {
                foreach (var playerPlaying in activeGame)
                {
                    if (playerPlaying.gameCallbackChannel != null)
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseSomeOneSelectAQuestion(questionToShow, currentRound, idUserSelecting);
                    }
                }
            }
        }

        public void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished)
        {            
            int newRound = ERROR;
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

        private void NotifyPrepareNewRound(List<PlayerPlaying> playersPlaying, int newRound)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            if (playersPlaying != null)
            {
                foreach (var playerPlaying in playersPlaying)
                {
                    playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseBeginRound(playerPlaying.TurnOfPlayer, newRound, playersInGame);
                }
            }
        } 

        private void AssignTurnsByPoints(List<PlayerInGameDataContract> playerInGame, List<PlayerPlaying> playersPlaying)
        {
            playerInGame.OrderBy(player => player.CurrentPointsOfRound).ToList();
            int turn = FIRST_TURN;
            foreach (var player in playerInGame)
            {
                var playerChangingTurn = playersPlaying.FirstOrDefault(play => play.IdUser == player.IdUser);
                if (true)
                {
                    playerChangingTurn.TurnOfPlayer = turn;
                }
                turn++;
            }
        }


        public void ConfirmBet(int roomCode, int idUser)
        {
            List<PlayerPlaying> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            playersPlaying.FirstOrDefault(pla => pla.IdUser == idUser).DidBet = true;
            if (playersPlaying.Count == playersPlaying.Where(pla => pla.DidBet == true).ToList().Count)
            {
                foreach (PlayerPlaying player in playersPlaying)
                {
                    player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseShowLastQuestion();
                }
            }
        }


        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            List<PlayerPlaying> playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            PlayerPlaying specificPlayer = playersPlaying.FirstOrDefault(pla => pla.IdUser == playerAnswering.IdUser);
            //si alguiens e sale durante la ultima regunta, quitarlo del diccionario y verificar playerAwnserin = null
            specificPlayer.DidAnswerLastQuestion = true;
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

        private void NotifyPlayersWinner(List<PlayerPlaying> playersPlaying)
        {
            List<PlayerInGameDataContract> playersInGame = GetPlayerInGameDataContractList(playersPlaying);
            foreach (PlayerPlaying player in playersPlaying)
            {
                player.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseShowWinner(playersInGame);
            }
        }

        public void FinishGame(int roomCode, int idUserLeader, List<PlayerInGameDataContract> playerInGame)
        {
            QuestionsManagerImplementation managerImplementation = new QuestionsManagerImplementation();
            managerImplementation.RegistryGamePlayers(roomCode, playerInGame);
            var playersPlaying = ActiveGamesDictionary.GetSpecificActiveGame(roomCode);
            if (playersPlaying != null)
            {
                foreach (var playerPlaying in playersPlaying)
                {
                    if (playerPlaying.IdUser != idUserLeader)
                    {
                        playerPlaying.gameCallbackChannel.GetCallbackChannel<IGameActionsCallBack>().ResponseFinishGame();
                    }
                }
                CleanDictionariesAfterGame(roomCode, true);
                QuestionsManagerImplementation questionsManager = new();
                questionsManager.RegistryGamePlayers(roomCode, playerInGame);
            }
        }

        private void CleanDictionariesAfterGame(int roomCode, bool playAgaing)
        {
            ActiveGamesDictionary.RemoveRegistryOfGameFromDictionary(roomCode);
            QuestionsForLobbyDictionary.RemoveSetOFQuestionsFromDictionary(roomCode);
            if (playAgaing)
            {
                GameLobbiesDictionary.RemoveRegistryOfLobbyFromDictionary(roomCode);
                ChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                ChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
            }
        }


        private List<PlayerInGameDataContract> GetPlayerInGameDataContractList(List<PlayerPlaying> playersPlaying)
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
