using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ServiceModel;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ServicesReferenceAuthor : ICheckUserLiving
    {
        CheckUserLivingImplementation checkUserLivingImplementation = new();

        public int RenewLivingCallBack(UserPOJO user)
        {
            return ((ICheckUserLiving)checkUserLivingImplementation).RenewLivingCallBack(user);
        }

        public int SubscribeToICheckUserLiving(UserPOJO user)
        {
            return ((ICheckUserLiving)checkUserLivingImplementation).SubscribeToICheckUserLiving(user);
        }
    }
    public partial class ServicesReferenceAuthor : ICheckUserLivingUnsubscribe
    {
        CheckUserLivingUnsubscribeImplementation livingUnsubscribeImplementation = new();

        public void UnsubscribeFromICheckUserLiving(UserPOJO user)
        {
            ((ICheckUserLivingUnsubscribe)this.livingUnsubscribeImplementation).UnsubscribeFromICheckUserLiving(user);
        }
    }

    public partial  class ServicesReferenceAuthor: IUserManager
    {
        UserManagerImplementation UserManager = new UserManagerImplementation();

        public GenericClass<int> SaveUser(UserPOJO userPojoNew, string codeEntered)
        {
            return ((IUserManager)UserManager).SaveUser(userPojoNew, codeEntered);
        }

        public GenericClass<int> UpdateEmailUser(int idUser, string email)
        {
            return ((IUserManager)UserManager).UpdateEmailUser(idUser, email);  
        }

        public GenericClass<int> UpdatePasswordUser(string userName, string password)
        {
            return ((IUserManager)UserManager).UpdatePasswordUser(userName, password);
        }

        public GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId)
        {
            return ((IUserManager)UserManager).UpdatePlayerPhoto(idPlayer, imageId);
        }
        public GenericClass<int> UpdateUserInformation(int idUser, string editedName)
        {
            return ((IUserManager)UserManager).UpdateUserInformation(idUser, editedName);
        }

    }

    public partial class ServicesReferenceAuthor : IEmailSenderManager
    {
        EmailSenderManagerImplementation emailSenderManagerImplementation = new EmailSenderManagerImplementation();

        public GenericClass<int> SentEmailConfirmationToCreateAccount(UserPOJO user, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailConfirmationToCreateAccount(user, subject, bodyMessage);
        }

        public GenericClass<int> SentEmailForInvitation(string email, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailForInvitation(email, subject, bodyMessage);
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

        public int ValidateThereIsOnlyOneAActiveAccount(string userName)
        {
            return ((ILogInVerification)verificationImplementation).ValidateThereIsOnlyOneAActiveAccount(userName);
        }
    }

    public partial class ServicesReferenceAuthor : IGuestPlayerManager
    {
        GuestPlayerManagerImplementation guestPlayerManager = new();

        public GenericClass<UserPOJO> CreateUserForGuest()
        {
            return ((IGuestPlayerManager)guestPlayerManager).CreateUserForGuest();
        }

        public void DeleteGuest(int idUser)
        {
            ((IGuestPlayerManager)guestPlayerManager).DeleteGuest(idUser);
        }
    }

    public partial class ServicesReferenceAuthor : ILobbyCodeAuthentication
    {
        LobbyCodeAuthentication codeAuthentication = new();

        public GenericClass<int> VerifyRoomCodeExist(int roomCode, int idUser)
        {
            return ((ILobbyCodeAuthentication)codeAuthentication).VerifyRoomCodeExist(roomCode, idUser);
        }
    }



    public partial class ServicesReferenceAuthor : IValidateUserExistance
    {
        ValidateUserExistenceImplementation validate = new ValidateUserExistenceImplementation();

        public GenericClass<int> EmailAlreadyExist(string email)
        {
            return ((IValidateUserExistance)validate).EmailAlreadyExist(email);
        }

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

    public partial class ServicesReferenceAuthor : IAvailabilityUserManagment
    {
        NotifyUserIsNotAvailableImplementation notifyUserIsNotAvailable = new();

        public void PlayerIsAvailable(int idNewActiveUser)
        {
            ((IAvailabilityUserManagment)notifyUserIsNotAvailable).PlayerIsAvailable(idNewActiveUser);
        }

        public void PlayerIsNotAvailable(int idUserDisconnecting)
        {
            ((IAvailabilityUserManagment)notifyUserIsNotAvailable).PlayerIsNotAvailable(idUserDisconnecting);
        }

        public void PlayerIsPlaying(int idUserPlaying)
        {
            ((IAvailabilityUserManagment)notifyUserIsNotAvailable).PlayerIsPlaying(idUserPlaying);
        }
    }

    public partial class ServicesReferenceAuthor : IRecoverPassword
    {
        RecoverPasswordImplementation recoverPasswordImplementation = new();

        public int CreateCodeToRecoverPassWord(string userName, string emailTitle, string emailBody)
        {
            return ((IRecoverPassword)recoverPasswordImplementation).CreateCodeToRecoverPassWord(userName, emailTitle, emailBody);
        }

        public int VerifyCodeToRecoverPassword(string userName, string code)
        {
            return ((IRecoverPassword)recoverPasswordImplementation).VerifyCodeToRecoverPassword(userName, code);
        }
    }

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, IFriendManagerActions, ILobbyActions, ILiveChat, IGameActions, IChatForTeams
    {
        NotifyUserAvailabilityImplementation NotifyUserAvailability = new NotifyUserAvailabilityImplementation();
        FriendManagerActionsImplementation NotifyFriendlyActions = new FriendManagerActionsImplementation();
        LobbyActionsImplementation LobbyActions = new LobbyActionsImplementation();
        LiveChatImplementation LiveChat = new LiveChatImplementation();
        GameActionsImplementation GameActions = new GameActionsImplementation();
        ChatForTeamsImplementation TeamChat = new ChatForTeamsImplementation();
        UserCreateAccountCodeImplementation userDataCheckerImplementation = new UserCreateAccountCodeImplementation();

        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            return ((ILiveChat)LiveChat).CreateChatForLobby(roomCode, idAdmin);
        }

        public GenericClass<int> CreateNewLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).CreateNewLobby(roomCode, idUser);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
            return ((ILiveChat)LiveChat).GetAllMessages(roomCode, idUser);
        }

        public GenericClass<int> JoinIntoLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).JoinIntoLobby(roomCode, idUser);
        }

        public void RegisterForTeamChat(int idUser)
        {
            ((IChatForTeams)TeamChat).RegisterForTeamChat(idUser);
        }

        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {
            return ((IFriendManagerActions)NotifyFriendlyActions).RegisterFriendManagerUser(idUserFriendManager);
        }

        public int RenewFriendManagerUserCallBack(int idUserFriendManager)
        {
            return ((IFriendManagerActions)NotifyFriendlyActions).RenewFriendManagerUserCallBack(idUserFriendManager);
        }

        public int RenewGameCallBack(int roomCode, int idIUser)
        {
            return ((IGameActions)GameActions).RenewGameCallBack(roomCode, idIUser);
        }

        public int RenewLiveChatCallBack(int roomCode, int idUser)
        {
            return ((ILiveChat)LiveChat).RenewLiveChatCallBack(roomCode, idUser);
        }

        public int RenewLobbyCallBack(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActions).RenewLobbyCallBack(roomCode, idUser);
        }

        public void RenewNotifyAvailabityCallBack(int idUser)
        {
            ((INotifyUserAvailability)NotifyUserAvailability).RenewNotifyAvailabityCallBack(idUser);
        }

        public int RenewTeamChatCallBack(int idUser)
        {
            return ((IChatForTeams)TeamChat).RenewTeamChatCallBack(idUser);
        }

        public void SubscribeToAvailabityCallBackChannel(int idNewActiveUser)
        {
            ((INotifyUserAvailability)NotifyUserAvailability).SubscribeToAvailabityCallBackChannel(idNewActiveUser);
        }

        public void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar)
        {
            ((IGameActions)GameActions).SubscribeToGameCallBack(roomCode, idUserSubscribing, idAvatar);
        }
    }

    public partial class ServicesReferenceAuthor : IUserCreateAccountCode
    {
        UserCreateAccountCodeImplementation createAccountCodeImplementation = new();

        public GenericClass<int> AddUserToConfirmationDictionary(UserPOJO newUser)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).AddUserToConfirmationDictionary(newUser);
        }

        public int CheckCodeEntered(UserPOJO newUser, string codeEntered)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).CheckCodeEntered(newUser, codeEntered);
        }

        public int ResendCode(UserPOJO user)
        {
            return ((IUserCreateAccountCode)userDataCheckerImplementation).ResendCode(user);
        }

        public void TakeUserOutOfDictionary(UserPOJO user)
        {
            ((IUserCreateAccountCode)userDataCheckerImplementation).TakeUserOutOfDictionary(user);
        }
    }

    public partial class ServicesReferenceAuthor : IFriendManagerActionOperations
    {
        FriendManagerActionsOperationImplementation friendManagerActionsOperationImplementation = new();

        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).AcceptFriendRequest(idPlayerAccepting, idUserRequesting);
        }

        public GenericClass<int> BanUser(int idPlayerBanned, int idUserBanning)
        {
            return ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).BanUser(idPlayerBanned, idUserBanning);
        }

        public void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).DeclineFriendRequest(idPlayerDeclining, idUserRequesting);
        }

        public void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).EliminateUserFromFriends(idPlayerDeleting, idUserToEliminate);
        }

        public void NotifyUserAboutNewPlayer(int idNewPlayer, string userName)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).NotifyUserAboutNewPlayer(idNewPlayer, userName);
        }

        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).SendFriendRequest(idPLayerRequesting, idUserRequested);
        }

        public void UnregisterFriendManagerUser(int idUserFriendManager)
        {
            ((IFriendManagerActionOperations)friendManagerActionsOperationImplementation).UnregisterFriendManagerUser(idUserFriendManager);
        }
    }

    public partial class ServicesReferenceAuthor : ILobbyActionsOperation
    {
        LobbyActionsOperationImplementation lobbyActionsOperationImplementation = new();

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).ChangePlayerSide(roomCode, idUserToChangeTeam, newSideTeam);
        }

        public void DissolveLobby(int roomCode, int idUser)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).DissolveLobby(roomCode, idUser);
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUserToEliminate)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).EliminatePlayerFromMatch(roomCode, idUserToEliminate);
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            return ((ILobbyActionsOperation)lobbyActionsOperationImplementation).GetAllCurrentPlayerInLobby(roomCode, idUserRequesting);
        }

        public void LeaveLobby(int roomCode, int idUser)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).LeaveLobby(roomCode, idUser);
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).MakeTeams(roomCode, idUser, wannaTeam);
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).NotifyPlayerInLobby(roomCode, idUser);
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).SelectQuestionsForGame(roomCode);
        }

        public void StartGame(int roomCode)
        {
            ((ILobbyActionsOperation)lobbyActionsOperationImplementation).StartGame(roomCode);
        }
    }

    public partial class ServicesReferenceAuthor : IGameActionsOperations
    {
        GameActionsOperationsImplementation gameActionsOperationsImplementation = new();

        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).ChooseAnswer(roomCode, idUserSelecting, answerSelected, pointsWorth, currentTurn);
        }

        public void ChooseQuestionOfBoard(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).ChooseQuestionOfBoard(roomCode, idUserSelecting, currentRound, questionToShow);
        }

        public void ConfirmBet(int roomCode, int idUser)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).ConfirmBet(roomCode, idUser);
        }

        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).ConfirmLastQuestionAnswer(roomCode, playerAnswering, points, isCorrect);
        }

        public void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).FinishRound(roomCode, playerInGame, roundFinished);
        }

        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            ((IGameActionsOperations)gameActionsOperationsImplementation).UnSubscribeFromGameCallBack(roomCode, idUserUnsubscribing);
        }
    }

    public partial class ServicesReferenceAuthor : IChatForTeamsOperations
    {
        TeamChatForTeamsOperationsImplemtation chatForTeamsImplementation = new();

        public void SendMessageTeam(int idUser, int idTeamMate, string userName, string messageToSend)
        {
            ((IChatForTeamsOperations)chatForTeamsImplementation).SendMessageTeam(idUser, idTeamMate, userName, messageToSend);
        }

        public void UnregisterFromTeamChat(int idUser)
        {
            ((IChatForTeamsOperations)chatForTeamsImplementation).UnregisterFromTeamChat(idUser);
        }
    }

    public partial class ServicesReferenceAuthor : ILiveChatOperations
    {
        LiveChatOperationsImplementation liveChatOperationsImplementation = new();

        public void DeleteChat(int roomCode, int idUser)
        {
            ((ILiveChatOperations)liveChatOperationsImplementation).DeleteChat(roomCode, idUser);
        }

        public void SendMessage(int idUser, int roomCode, string userName, string messageToSend)
        {
            ((ILiveChatOperations)liveChatOperationsImplementation).SendMessage(idUser, roomCode, userName, messageToSend);
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
