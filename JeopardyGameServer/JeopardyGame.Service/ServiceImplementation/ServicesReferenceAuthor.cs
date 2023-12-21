using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using System.Collections.Generic;
using System.ServiceModel;

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
        public GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId)
        {
            return ((IUserManager)UserManager).UpdatePlayerPhoto(idPlayer, imageId);
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
        public int ValidateThereIsOnlyOneAActiveAccount(int idUser)
        {
            return ((IUserManager)UserManager).ValidateThereIsOnlyOneAActiveAccount(idUser);
        }
    }

    public partial class ServicesReferenceAuthor: IFriendsManager
    {
        FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();

        public GenericClass<int> BanUser(int idPlayer)
        {
            return ((IFriendsManager)friendsManagerImplementation).BanUser(idPlayer);
        }
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
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, INotifyUserActionFriendsManager, ILobbyActions, ILiveChat, IGameActions, IChatForTeams
    {
        NotifyUserAvailabilityImplementation NotifyUserAvailability = new NotifyUserAvailabilityImplementation();
        NotifyFriendlyActionsImplementation NotifyFriendlyActions = new NotifyFriendlyActionsImplementation();
        LobbyActionsImplementation LobbyActions = new LobbyActionsImplementation();
        LiveChatImplementation LiveChat = new LiveChatImplementation();
        GameActionsImplementation GameActions = new GameActionsImplementation();
        ChatForTeamsImplementation TeamChat = new ChatForTeamsImplementation();
        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActions).AcceptFriendRequest(idPlayerAccepting, idUserRequesting);
        }
        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            ((ILobbyActions)LobbyActions).ChangePlayerSide(roomCode, idUserToChangeTeam, newSideTeam);
        }
        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn)
        {
            ((IGameActions)GameActions).ChooseAnswer(roomCode, idUserSelecting, answerSelected, pointsWorth, currentTurn);
        }
        public void ChooseQuestionOfBoard(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            ((IGameActions)GameActions).ChooseQuestionOfBoard(roomCode, idUserSelecting, currentRound, questionToShow);
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
            ((IGameActions)GameActions).FinishGame(roomCode, idUserLeader, playerInGame);
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
        public GenericClass<int> JoinIntoLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).JoinIntoLobby(roomCode, idUser);
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

        public void PlayerIsAvailable(int idNewActiveUser)
        {
            ((INotifyUserAvailability)NotifyUserAvailability).PlayerIsAvailable(idNewActiveUser);
        }
        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            ((INotifyUserAvailability)NotifyUserAvailability).PlayerIsNotAvailable(idUserDisconnecting);
        }
        public void RegisterForTeamChat(int idUser)
        {
            ((IChatForTeams)TeamChat).RegisterForTeamChat(idUser);
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
        public void SendMessageTeam(int idUser, int idTeamMate, string userName, string messageToSend)
        {
            ((IChatForTeams)TeamChat).SendMessageTeam(idUser, idTeamMate, userName, messageToSend);
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
        public void UnregisterFromTeamChat(int idUser)
        {
            ((IChatForTeams)TeamChat).UnregisterFromTeamChat(idUser);
        }
        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            ((IGameActions)GameActions).UnSubscribeFromGameCallBack(roomCode, idUserUnsubscribing);
        }
    }

    public partial class ServicesReferenceAuthor : IHeartBeat
    {
        HeartBeatImplementation heartBeatImplementation = new();
        public void Heartbeat()
        {
            ((IHeartBeat)heartBeatImplementation).Heartbeat();
        }
    }
}
