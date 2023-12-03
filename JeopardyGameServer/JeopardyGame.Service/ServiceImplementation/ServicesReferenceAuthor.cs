using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial  class ServicesReferenceAuthor: IUserManager
    {
        UserManagerImplementation UserManager = new UserManagerImplementation();

        public GenericClass<int> EmailAlreadyExist(string email)
        {
            return ((IUserManager)UserManager).EmailAlreadyExist(email);
        }

        public List<IUserManager.PlayerInfo> GetPlayersInfo()
        {
            return ((IUserManager)UserManager).GetPlayersInfo();
        }

        public GenericClass<int> SaveUser(UserPOJO userPojoNew)
        {
            return ((IUserManager)UserManager).SaveUser(userPojoNew);
        }

        public GenericClass<int> SentEmailCodeConfirmation(string email, string subject, string code)
        {
            return ((IUserManager)UserManager).SentEmailCodeConfirmation(email, subject, code);
        }

        public GenericClass<int> UpdateUserInformation(string editedName, string originalName)
        {
            return ((IUserManager)UserManager).UpdateUserInformation(editedName, originalName);
        }

        public GenericClass<int> UserNameAlreadyExist(string userName)
        {
            return ((IUserManager)UserManager).UserNameAlreadyExist(userName);
        }

        public GenericClass<int> ValidateCredentials(UserValidate newUserValidate)
        {
            return ((IUserManager)UserManager).ValidateCredentials(newUserValidate);
        }
    }

    public partial class ServicesReferenceAuthor: IFriendsManager
    {
        FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();

        public GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriendRequests(user);
        }

        public GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriends(user);
        }

        public GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUsersNotFriends(user);
        }

        GenericClass<bool> IFriendsManager.BanUser(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).BanUser(user);
        }

        GenericClass<bool> IFriendsManager.IsUserBanned(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).IsUserBanned(user);
        }

        GenericClass<bool> IFriendsManager.UnbanUser(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).UnbanUser(user);
        }
    }

    public partial class ServicesReferenceAuthor: IConsultInformation
    {
        ConsultInformationImplementation consultInfoImplementation = new ConsultInformationImplementation();

        public GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImplementation).ConsultPlayerById(idPlayer);
        }

        public GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser)
        {
            return ((IConsultInformation)consultInfoImplementation).ConsultPlayerByIdUser(idUser);
        }

        public GenericClass<UserPOJO> ConsultUserById(int idUser)
        {
            return ((IConsultInformation)consultInfoImplementation).ConsultUserById(idUser);
        }

        public GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImplementation).ConsultUserByIdPlayer(idPlayer);
        }

        public GenericClass<UserPOJO> ConsultUserByUserName(string userName)
        {
            return ((IConsultInformation)consultInfoImplementation).ConsultUserByUserName(userName);
        }
    }

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, INotifyUserActionFriendsManager, ILobbyActions, ILiveChat, IGameActions
    {
        NotifyUserAvailabilityImplementation NotifyUserAvb = new NotifyUserAvailabilityImplementation();
        NotifyFriendlyActionsImplementation NotifyFriendlyActions = new NotifyFriendlyActionsImplementation();
        LobbyActionsImplementation LobbyActions = new LobbyActionsImplementation();
        LiveChatImplementation LiveChat = new LiveChatImplementation();
        GameActionsImplementation GameActions = new GameActionsImplementation();

        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).AcceptFriendRequest(idPlayerAccepting, idUserRequesting);
        }

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            ((ILobbyActions)LobbyActions).ChangePlayerSide(roomCode, idUserToChangeTeam, newSideTeam);
        }

        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, bool isCorrect, int pointsWorth, int currentTurn)
        {
            ((IGameActions)GameActions).ChooseAnswer(roomCode, idUserSelecting, answerSelected, isCorrect, pointsWorth, currentTurn);
        }

        public void ChooseQuestion(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            ((IGameActions)GameActions).ChooseQuestion(roomCode, idUserSelecting, currentRound, questionToShow);
        }

        public void ConfirmBet(int roomCode, int idUser)
        {
            ((IGameActions)GameActions).ConfirmBet(roomCode, idUser);
        }

        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            ((IGameActions)GameActions).ConfirmLastQuestionAnswer(roomCode, playerAnswering, points, isCorrect);
        }

        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            return ((ILiveChat)LiveChat).CreateChatForLobby(roomCode, idAdmin);
        }

        public GenericClass<int> CreateNewLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).CreateNewLobby(roomCode, idUser);
        }

        public void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).DeclineFriendRequest(idPlayerDeclining, idUserRequesting);
        }

        public void DeleteChat(int roomCode, int idUser)
        {
            ((ILiveChat)LiveChat).DeleteChat(roomCode, idUser);
        }

        public void DissolveLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActions).DissolveLobby(roomCode, idUser);
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUserToEliminate)
        {
            ((ILobbyActions)LobbyActions).EliminatePlayerFromMatch(roomCode, idUserToEliminate);
        }

        public void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).EliminateUserFromFriends(idPlayerDeleting, idUserToEliminate);
        }

        public void FinishGame(int roomCode, int idUserLeader, List<PlayerInGameDataContract> playerInGame)
        {
            ((IGameActions)GameActions).FinishGame(roomCode, idUserLeader, playerInGame );
        }

        public void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished)
        {
            ((IGameActions)GameActions).FinishRound(roomCode, playerInGame, roundFinished);
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            return ((ILobbyActions)LobbyActions).GetAllCurrentPlayerInLobby(roomCode, idUserRequesting);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
            return ((ILiveChat)LiveChat).GetAllMessages(roomCode, idUser);
        }

        public GenericClass<int> JoinLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).JoinLobby(roomCode, idUser);
        }

        public void LeaveLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActions).LeaveLobby(roomCode, idUser);
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            ((ILobbyActions)LobbyActions).MakeTeams(roomCode, idUser, wannaTeam);
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActions).NotifyPlayerInLobby(roomCode, idUser);
        }


        public void PlayerIsAvailable(int idNewActiveUser, int idNewActivePlayer)
        {
            ((INotifyUserAvailability)NotifyUserAvb).PlayerIsAvailable(idNewActiveUser, idNewActivePlayer);
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting, int idPlayerDisconnecting)
        {
            ((INotifyUserAvailability)NotifyUserAvb).PlayerIsNotAvailable(idUserDisconnecting, idPlayerDisconnecting);
        }

        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {
            return ((INotifyUserActionFriendsManager)NotifyFriendlyActions).RegisterFriendManagerUser(idUserFriendManager);
        }

        public void ReportPlayer(int idUser, string userName)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).ReportPlayer(idUser, userName);
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            ((ILobbyActions)LobbyActions).SelectQuestionsForGame(roomCode);
        }

        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).SendFriendRequest(idPLayerRequesting, idUserRequested);
        }

        public void SendMessage(int idUser, int roomCode, string userName, string messageToSend)
        {
            ((ILiveChat)LiveChat).SendMessage(idUser, roomCode, userName, messageToSend);
        }

        public void StartGame(int roomCode)
        {
             ((ILobbyActions)LobbyActions).StartGame(roomCode);
        }

        public void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar)
        {
            ((IGameActions)GameActions).SubscribeToGameCallBack(roomCode, idUserSubscribing, idAvatar);
        }

        public void UnregisterFriendManagerUser(int idUserFriendManager)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).UnregisterFriendManagerUser(idUserFriendManager);
        }

        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            ((IGameActions)GameActions).UnSubscribeFromGameCallBack(roomCode, idUserUnsubscribing);
        }
    }


}
