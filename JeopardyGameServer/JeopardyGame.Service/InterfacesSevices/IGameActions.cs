using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{

    [ServiceContract(CallbackContract = typeof(IGameActionsCallBack))]
    public  interface IGameActions
    {
        [OperationContract(IsOneWay = true)]
        void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar);

        [OperationContract]
        int RenewGameCallBack(int roomCode, int idUser);
    }

    [ServiceContract]
      public interface IGameActionsOperations
    {
        [OperationContract(IsOneWay = true)]
        void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing);

        [OperationContract(IsOneWay = true)]
        void ChooseQuestionOfBoard(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow);

        [OperationContract(IsOneWay = true)]
        void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn);

        [OperationContract(IsOneWay = true)]
        void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished);

        [OperationContract(IsOneWay = true)]
        void ConfirmBet(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect);
    } 


    [ServiceContract]
    public interface IGameActionsCallBack
    {
        [OperationContract(IsOneWay = true)]
        void ReceiveNotificationEverybodyIsPlaying(bool isEveryBodyPlaying, int isYourTurn, List<PlayerInGameDataContract> playerInGame);
        
        [OperationContract(IsOneWay = true)]
        void ReceiveNotificationSomeOneLeft(int isYourTurn, List<PlayerInGameDataContract> playerInGame);

        [OperationContract]
        void ReceiveNotificationAboutTurn(int isYourTurn);

        [OperationContract(IsOneWay = true)]
        void ResponseSomeOneSelectAQuestion(CurrentQuestionToShowContract questionToShow, int currentRound, int idUser);

        [OperationContract(IsOneWay = true)]
        void ResponseSomeOneChooseAnAnswer(int idAnswerSelected, int idUserAnswering, int pointsWorth);

        [OperationContract(IsOneWay = true)]
        void ResponseBeginRound(int isYourTurn, int roundToStart, List<PlayerInGameDataContract> playerInGam);

        [OperationContract(IsOneWay = true)]
        void ResponseShowWinner(List<PlayerInGameDataContract> playerInGame, int poinstWereSaved);

        [OperationContract(IsOneWay = true)]
        void ResponseShowLastQuestion();

    }

}
