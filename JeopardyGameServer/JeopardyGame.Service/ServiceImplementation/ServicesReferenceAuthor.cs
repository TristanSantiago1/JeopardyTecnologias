using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ServiceModel;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial  class ServicesReferenceAuthor: IUserManager
    {
        UserManagerImplementation UserManager = new UserManagerImplementation();

       
        public GenericClass<int> SaveUser(UserPOJO userPojoNew)
        {
            return ((IUserManager)UserManager).SaveUser(userPojoNew);
        }
       
        public GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId)
        {
            return ((IUserManager)UserManager).UpdatePlayerPhoto(idPlayer, imageId);
        }
        public GenericClass<int> UpdateUserInformation(string editedName, string originalName)
        {
            return ((IUserManager)UserManager).UpdateUserInformation(editedName, originalName);
        }       
    }

    public partial class ServicesReferenceAuthor : IEmailSenderManager
    {
        EmailSenderManagerImplementation emailSenderManagerImplementation = new EmailSenderManagerImplementation();

        public GenericClass<int> SentEmailConfirmationToCreateAccount(UserPOJO user, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailConfirmationToCreateAccount(user, subject, bodyMessage);
        }

        public GenericClass<int> SentEmailInvitingToGame(UserPOJO user, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailInvitingToGame(user, subject, bodyMessage);
        }
    }

    public partial class ServicesReferenceAuthor : ILogInVerification
    {
        LoginVerificationImplementation verificationImplementation = new LoginVerificationImplementation();

        public GenericClass<int> ValidateCredentials(UserValidate newUserValidate)
        {
            return ((ILogInVerification)verificationImplementation).ValidateCredentials(newUserValidate);
        }

        public int ValidateThereIsOnlyOneAActiveAccount(int idUser)
        {
            return ((ILogInVerification)verificationImplementation).ValidateThereIsOnlyOneAActiveAccount(idUser);
        }
    }



    public partial class ServicesReferenceAuthor : IValidateUserExistance
    {
        ValidateUserExistenceImplementation validate = new ValidateUserExistenceImplementation();

        public GenericClass<int> UserAlreadyExist(UserPOJO newUser)
        {
            return ((IValidateUserExistance)validate).UserAlreadyExist(newUser);
        }
    }

    public partial class ServicesReferenceAuthor: IConsultFriends
    {
        ConsultFriendsImplementation friendsManagerImplementation = new ConsultFriendsImplementation();

        public GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPOJO user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUserFriendRequests(user);
        }
        public GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPOJO user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUserFriends(user);
        }
        public GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPOJO user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUsersNotFriends(user);
        }
    }

    public partial class ServicesReferenceAuthor: IConsultUserInformation
    {
        ConsultInformationImplementation consultInfoImplementation = new ConsultInformationImplementation();
        public GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultPlayerById(idPlayer);
        }
        public GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultPlayerByIdUser(idUser);
        }
        public GenericClass<UserPOJO> ConsultUserById(int idUser)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserById(idUser);
        }
        public GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserByIdPlayer(idPlayer);
        }
        public GenericClass<UserPOJO> ConsultUserByUserName(string userName)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserByUserName(userName);
        }

        public GenericClass<List<PlayerInfo>> GetPlayersInformation(int idUserConsulting)
        {
            return ((IConsultUserInformation)consultInfoImplementation).GetPlayersInformation(idUserConsulting);
        }
    }

    public partial class ServicesReferenceAuthor : INotifyUserIsNotAvailable
    {
        NotifyUserIsNotAvailableImplementation notifyUserIsNotAvailable = new();

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            ((INotifyUserIsNotAvailable)notifyUserIsNotAvailable).PlayerIsNotAvailable(idUserDisconnecting);
        }

        public void PlayerIsPlaying(int idUserPlaying)
        {
            ((INotifyUserIsNotAvailable)notifyUserIsNotAvailable).PlayerIsPlaying(idUserPlaying);
        }
    }

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, IFriendManagerActions, ILobbyActions, ILiveChat, IGameActions, IChatForTeams ,IUserCreateAccountCode
    {
        NotifyUserAvailabilityImplementation NotifyUserAvailability = new NotifyUserAvailabilityImplementation();
        FriendManagerActionsImplementation NotifyFriendlyActions = new FriendManagerActionsImplementation();
        LobbyActionsImplementation LobbyActions = new LobbyActionsImplementation();
        LiveChatImplementation LiveChat = new LiveChatImplementation();
        GameActionsImplementation GameActions = new GameActionsImplementation();
        ChatForTeamsImplementation TeamChat = new ChatForTeamsImplementation();
        UserCreateAccountCodeImplementation userDataCheckerImplementation = new UserCreateAccountCodeImplementation();
        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ((IFriendManagerActions)NotifyFriendlyActions).AcceptFriendRequest(idPlayerAccepting, idUserRequesting);
        }

        public GenericClass<int> AddUserToConfirmationDictionary(UserPOJO newUser)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).AddUserToConfirmationDictionary(newUser);
        }

        public GenericClass<int> BanUser(int idPlayerBanned, int idUserBanning)
        {
            return ((IFriendManagerActions)NotifyFriendlyActions).BanUser(idPlayerBanned, idUserBanning);
        }

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            ((ILobbyActions)LobbyActions).ChangePlayerSide(roomCode, idUserToChangeTeam, newSideTeam);
        }

        public int CheckCodeEntered(UserPOJO newUser, string codeEntered)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).CheckCodeEntered(newUser, codeEntered);
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
            ((IFriendManagerActions)NotifyFriendlyActions).DeclineFriendRequest(idPlayerDeclining, idUserRequesting);
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
            ((IFriendManagerActions)NotifyFriendlyActions).EliminateUserFromFriends(idPlayerDeleting, idUserToEliminate);
        }
        public void FinishGame(int roomCode, List<PlayerInGameDataContract> playerInGame)
        {
            ((IGameActions)GameActions).FinishGame(roomCode, playerInGame);
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

        public void RegisterForTeamChat(int idUser)
        {
            ((IChatForTeams)TeamChat).RegisterForTeamChat(idUser);
        }

        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {
            return ((IFriendManagerActions)NotifyFriendlyActions).RegisterFriendManagerUser(idUserFriendManager);
        }
        public void ReportPlayer(int idUser, string userName)
        {
            ((IFriendManagerActions)NotifyFriendlyActions).ReportPlayer(idUser, userName);
        }

        public int ResendCode(UserPOJO user)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).ResendCode(user);
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            ((ILobbyActions)LobbyActions).SelectQuestionsForGame(roomCode);
        }
        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ((IFriendManagerActions)NotifyFriendlyActions).SendFriendRequest(idPLayerRequesting, idUserRequested);
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

        public void TakeUserOutOfDictionary(UserPOJO user)
        {
            ((IUserCreateAccountCode)userDataCheckerImplementation).TakeUserOutOfDictionary(user);
        }

        public void UnregisterFriendManagerUser(int idUserFriendManager)
        {
            ((IFriendManagerActions)NotifyFriendlyActions).UnregisterFriendManagerUser(idUserFriendManager);
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
