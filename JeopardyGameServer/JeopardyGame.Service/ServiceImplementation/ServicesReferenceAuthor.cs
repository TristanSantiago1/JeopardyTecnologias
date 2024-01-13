using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterfacesSevices;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ServiceModel;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ServicesReferenceAuthor : ICheckUserLivingService
    {
        CheckUserLivingServiceImplementation checkUserLivingImplementation = new();

        public int RenewLivingCallBack(UserPojo user)
        {
            return ((ICheckUserLivingService)checkUserLivingImplementation).RenewLivingCallBack(user);
        }

        public int SubscribeToICheckUserLiving(UserPojo user)
        {
            return ((ICheckUserLivingService)checkUserLivingImplementation).SubscribeToICheckUserLiving(user);
        }
    }
    public partial class ServicesReferenceAuthor : ICheckUserLivingUnsubscribe
    {
        CheckUserLivingUnsubscribeImplementation livingUnsubscribeImplementation = new();

        public void UnsubscribeFromICheckUserLiving(UserPojo user)
        {
            ((ICheckUserLivingUnsubscribe)this.livingUnsubscribeImplementation).UnsubscribeFromICheckUserLiving(user);
        }
    }

    public partial class ServicesReferenceAuthor : IUserManager
    {
        UserManagerImplementation UserManager = new UserManagerImplementation();

        public GenericClass<int> SaveUser(UserPojo userPojoNew, string codeEntered)
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

        public GenericClass<int> SentEmailConfirmationToCreateAccount(UserPojo user, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailConfirmationToCreateAccount(user, subject, bodyMessage);
        }

        public GenericClass<int> SentEmailForInvitation(string email, string subject, string bodyMessage)
        {
            return ((IEmailSenderManager)emailSenderManagerImplementation).SentEmailForInvitation(email, subject, bodyMessage);
        }

        public GenericClass<int> SentEmailInvitingToGame(UserPojo user, string subject, string bodyMessage)
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

        public GenericClass<UserPojo> CreateUserForGuest()
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

        public GenericClass<int> UserNameAlreadyExist(UserPojo newUser)
        {
            return ((IValidateUserExistance)validate).UserNameAlreadyExist(newUser);
        }
    }

    public partial class ServicesReferenceAuthor : IConsultFriends
    {
        ConsultFriendsImplementation friendsManagerImplementation = new ConsultFriendsImplementation();

        public GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPojo user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUserFriendRequests(user);
        }
        public GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPojo user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUserFriends(user);
        }
        public GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPojo user)
        {
            return ((IConsultFriends)friendsManagerImplementation).GetUsersNotFriends(user);
        }
    }

    public partial class ServicesReferenceAuthor : IConsultUserInformation
    {
        ConsultInformationImplementation consultInfoImplementation = new ConsultInformationImplementation();
        public GenericClass<PlayerPojo> ConsultPlayerById(int idPlayer)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultPlayerById(idPlayer);
        }
        public GenericClass<PlayerPojo> ConsultPlayerByIdUser(int idUser)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultPlayerByIdUser(idUser);
        }
        public GenericClass<UserPojo> ConsultUserById(int idUser)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserById(idUser);
        }
        public GenericClass<UserPojo> ConsultUserByIdPlayer(int idPlayer)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserByIdPlayer(idPlayer);
        }
        public GenericClass<UserPojo> ConsultUserByUserName(string userName)
        {
            return ((IConsultUserInformation)consultInfoImplementation).ConsultUserByUserName(userName);
        }

        public GenericClass<List<PlayerInfo>> GetPlayersInformation(int idUserConsulting)
        {
            return ((IConsultUserInformation)consultInfoImplementation).GetPlayersInformation(idUserConsulting);
        }
    }

    public partial class ServicesReferenceAuthor : INotifyAvailabilityOperations
    {
        NotifyAvailabilityOperationsImplementation notifyUserIsNotAvailable = new();

        public void NotifyUserAboutNewPlayer(int idNewPlayer, string userName)
        {
            ((INotifyAvailabilityOperations)notifyUserIsNotAvailable).NotifyUserAboutNewPlayer(idNewPlayer, userName);
        }

        public void UserIsAvailable(int idNewActiveUser)
        {
            ((INotifyAvailabilityOperations)notifyUserIsNotAvailable).UserIsAvailable(idNewActiveUser);
        }

        public void UserIsNotAvailable(int idUserDisconnecting)
        {
            ((INotifyAvailabilityOperations)notifyUserIsNotAvailable).UserIsNotAvailable(idUserDisconnecting);
        }

        public void UserIsPlaying(int idUserPlaying)
        {
            ((INotifyAvailabilityOperations)notifyUserIsNotAvailable).UserIsPlaying(idUserPlaying);
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
    public partial class ServicesReferenceAuthor : INotifyAvailabilityService, IFriendManagerService, ILobbyService, ILiveChatService, IGameService, IChatForTeamsService
    {
        NotifyAvailabilityServiceImplementation NotifyUserAvailability = new NotifyAvailabilityServiceImplementation();
        FriendManagerServiceImplementation NotifyFriendlyActions = new FriendManagerServiceImplementation();
        LobbyServiceImplementation LobbyActions = new LobbyServiceImplementation();
        LiveChatServiceImplementation LiveChat = new LiveChatServiceImplementation();
        GameServiceImplementation GameActions = new GameServiceImplementation();
        ChatForTeamsServiceImplementation TeamChat = new ChatForTeamsServiceImplementation();

        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            return ((ILiveChatService)LiveChat).CreateChatForLobby(roomCode, idAdmin);
        }

        public GenericClass<int> CreateNewLobby(int roomCode, int idUser)
        {
            return ((ILobbyService)LobbyActions).CreateNewLobby(roomCode, idUser);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
            return ((ILiveChatService)LiveChat).GetAllMessages(roomCode, idUser);
        }

        public GenericClass<int> JoinIntoLobby(int roomCode, int idUser)
        {
            return ((ILobbyService)LobbyActions).JoinIntoLobby(roomCode, idUser);
        }

        public void RegisterForTeamChat(int idUser)
        {
            ((IChatForTeamsService)TeamChat).RegisterForTeamChat(idUser);
        }

        public GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager)
        {
            return ((IFriendManagerService)NotifyFriendlyActions).RegisterFriendManagerUser(idUserFriendManager);
        }

        public int RenewFriendManagerUserCallBack(int idUserFriendManager)
        {
            return ((IFriendManagerService)NotifyFriendlyActions).RenewFriendManagerUserCallBack(idUserFriendManager);
        }

        public int RenewGameCallBack(int roomCode, int idUser)
        {
            return ((IGameService)GameActions).RenewGameCallBack(roomCode, idUser);
        }

        public int RenewLiveChatCallBack(int roomCode, int idUser)
        {
            return ((ILiveChatService)LiveChat).RenewLiveChatCallBack(roomCode, idUser);
        }

        public int RenewLobbyCallBack(int roomCode, int idUser)
        {
            return ((ILobbyService)LobbyActions).RenewLobbyCallBack(roomCode, idUser);
        }

        public void RenewNotifyAvailabityCallBack(int idUser)
        {
            ((INotifyAvailabilityService)NotifyUserAvailability).RenewNotifyAvailabityCallBack(idUser);
        }

        public int RenewTeamChatCallBack(int idUser)
        {
            return ((IChatForTeamsService)TeamChat).RenewTeamChatCallBack(idUser);
        }

        public void SubscribeToAvailabityCallBackChannel(int idNewActiveUser)
        {
            ((INotifyAvailabilityService)NotifyUserAvailability).SubscribeToAvailabityCallBackChannel(idNewActiveUser);
        }

        public void SubscribeToGameCallBack(int roomCode, int idUserSubscribing, int idAvatar)
        {
            ((IGameService)GameActions).SubscribeToGameCallBack(roomCode, idUserSubscribing, idAvatar);
        }
    }

    public partial class ServicesReferenceAuthor : IUserCreateAccountCode
    {
        UserCreateAccountCodeImplementation createAccountCodeImplementation = new();

        public GenericClass<int> AddUserToConfirmationDictionary(UserPojo newUser)
        {
            return ((IUserCreateAccountCode)createAccountCodeImplementation).AddUserToConfirmationDictionary(newUser);
        }

        public int CheckCodeEntered(UserPojo newUser, string codeEntered)
        {
            return ((IUserCreateAccountCode)createAccountCodeImplementation).CheckCodeEntered(newUser, codeEntered);
        }

        public int ResendCode(UserPojo user)
        {
            return ((IUserCreateAccountCode)createAccountCodeImplementation).ResendCode(user);
        }

        public void TakeUserOutOfDictionary(UserPojo user)
        {
            ((IUserCreateAccountCode)createAccountCodeImplementation).TakeUserOutOfDictionary(user);
        }
    }

    public partial class ServicesReferenceAuthor : IFriendManagerOperations
    {
        FriendManagerOperationImplementation friendManagerActionsOperationImplementation = new();

        public void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting)
        {
            ((IFriendManagerOperations)friendManagerActionsOperationImplementation).AcceptFriendRequest(idPlayerAccepting, idUserRequesting);
        }

        public GenericClass<int> ReportFriend(int idPlayerBanned, int idUserBanning)
        {
            return ((IFriendManagerOperations)friendManagerActionsOperationImplementation).ReportFriend(idPlayerBanned, idUserBanning);
        }

        public void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting)
        {
            ((IFriendManagerOperations)friendManagerActionsOperationImplementation).DeclineFriendRequest(idPlayerDeclining, idUserRequesting);
        }

        public void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate)
        {
            ((IFriendManagerOperations)friendManagerActionsOperationImplementation).EliminateUserFromFriends(idPlayerDeleting, idUserToEliminate);
        }

        public void SendFriendRequest(int idPLayerRequesting, int idUserRequested)
        {
            ((IFriendManagerOperations)friendManagerActionsOperationImplementation).SendFriendRequest(idPLayerRequesting, idUserRequested);
        }

        public void UnregisterFromFriendManager(int idUserFriendManager)
        {
            ((IFriendManagerOperations)friendManagerActionsOperationImplementation).UnregisterFromFriendManager(idUserFriendManager);
        }
    }

    public partial class ServicesReferenceAuthor : ILobbyTeamsManager
    {
        LobbyTeamsManagerImplementation lobbyTeamsManagerImplementation = new();

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            ((ILobbyTeamsManager)lobbyTeamsManagerImplementation).ChangePlayerSide(roomCode, idUserToChangeTeam, newSideTeam);
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            ((ILobbyTeamsManager)lobbyTeamsManagerImplementation).MakeTeams(roomCode, idUser, wannaTeam);
        }
    }


    public partial class ServicesReferenceAuthor : ILobbyOperation
    {
        LobbyOperationImplementation lobbyActionsOperationImplementation = new();

        public void DissolveLobby(int roomCode, int idUser)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).DissolveLobby(roomCode, idUser);
        }

        public void EliminatePlayerFromLobby(int roomCode, int idUserToEliminate)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).EliminatePlayerFromLobby(roomCode, idUserToEliminate);
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            return ((ILobbyOperation)lobbyActionsOperationImplementation).GetAllCurrentPlayerInLobby(roomCode, idUserRequesting);
        }

        public void LeaveLobby(int roomCode, int idUserLeaving)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).LeaveLobby(roomCode, idUserLeaving);
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).NotifyPlayerInLobby(roomCode, idUser);
        }

        public void SelectQuestionsForGame(int roomCode)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).SelectQuestionsForGame(roomCode);
        }

        public void StartGame(int roomCode)
        {
            ((ILobbyOperation)lobbyActionsOperationImplementation).StartGame(roomCode);
        }
    }

    public partial class ServicesReferenceAuthor : IGameOperations
    {
        GameOperationsImplementation gameActionsOperationsImplementation = new();

        public void ChooseAnswer(int roomCode, int idUserSelecting, int answerSelected, int pointsWorth, int currentTurn)
        {
            ((IGameOperations)gameActionsOperationsImplementation).ChooseAnswer(roomCode, idUserSelecting, answerSelected, pointsWorth, currentTurn);
        }

        public void ChooseQuestionOfBoard(int roomCode, int idUserSelecting, int currentRound, CurrentQuestionToShowContract questionToShow)
        {
            ((IGameOperations)gameActionsOperationsImplementation).ChooseQuestionOfBoard(roomCode, idUserSelecting, currentRound, questionToShow);
        }

        public void ConfirmBet(int roomCode, int idUser)
        {
            ((IGameOperations)gameActionsOperationsImplementation).ConfirmBet(roomCode, idUser);
        }

        public void ConfirmLastQuestionAnswer(int roomCode, PlayerInGameDataContract playerAnswering, int points, bool isCorrect)
        {
            ((IGameOperations)gameActionsOperationsImplementation).ConfirmLastQuestionAnswer(roomCode, playerAnswering, points, isCorrect);
        }

        public void FinishRound(int roomCode, List<PlayerInGameDataContract> playerInGame, int roundFinished)
        {
            ((IGameOperations)gameActionsOperationsImplementation).FinishRound(roomCode, playerInGame, roundFinished);
        }

        public void UnSubscribeFromGameCallBack(int roomCode, int idUserUnsubscribing)
        {
            ((IGameOperations)gameActionsOperationsImplementation).UnSubscribeFromGameCallBack(roomCode, idUserUnsubscribing);
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
}