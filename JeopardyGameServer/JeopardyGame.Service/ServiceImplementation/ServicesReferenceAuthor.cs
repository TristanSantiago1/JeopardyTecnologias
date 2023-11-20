using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
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

        public GenericClass<int> SaveUser(UserPOJO userPojoNew)
        {
            return ((IUserManager)UserManager).SaveUser(userPojoNew);
        }

        public GenericClass<int> SentEmailCodeConfirmation(string email, string subject, string body)
        {
            return ((IUserManager)UserManager).SentEmailCodeConfirmation(email, subject, body);
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
    }

    public partial class ServicesReferenceAuthor: IConsultInformation
    {
        ConsultInformationImplementation consultInfoImple = new ConsultInformationImplementation();

        public GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImple).ConsultPlayerById(idPlayer);
        }

        public GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser)
        {
            return ((IConsultInformation)consultInfoImple).ConsultPlayerByIdUser(idUser);
        }

        public GenericClass<UserPOJO> ConsultUserById(int idUser)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserById(idUser);
        }

        public GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserByIdPlayer(idPlayer);
        }

        public GenericClass<UserPOJO> ConsultUserByUserName(string userName)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserByUserName(userName);
        }
    }

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, INotifyUserActionFriendsManager, ILobbyActions, ILiveChat
    {
        NotifyUserAvailabilityImplementation NotifyUserAvbImple = new NotifyUserAvailabilityImplementation();
        NotifyFriendlyActionsImplementation NotifyFriendlyActionsImple = new NotifyFriendlyActionsImplementation();
        LobbyActionsImplementation LobbyActionsImple = new LobbyActionsImplementation();
        LiveChatImplementation LiveChatImple = new LiveChatImplementation();

        public void AcceptFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).AcceptFriendRequest(idUser, idUser2);
        }

        public void ChangePlayerSide(int RoomCode, int idUser, int side)
        {
            ((ILobbyActions)LobbyActionsImple).ChangePlayerSide(RoomCode, idUser, side);
        }

        public void CreateChatForLobby(int roomCode, int idAdmin)
        {
            ((ILiveChat)LiveChatImple).CreateChatForLobby(roomCode, idAdmin);
        }

        public GenericClass<int> CreateNewLobby(int RoomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActionsImple).CreateNewLobby(RoomCode, idUser);
        }

        public void DeclineFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).DeclineFriendRequest(idUser, idUser2);
        }

        public void DeleteChat(int roomCode, int idUser)
        {
            ((ILiveChat)LiveChatImple).DeleteChat(roomCode, idUser);
        }

        public void DissolveLobby(int RoomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).DissolveLobby(RoomCode, idUser);
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).EliminatePlayerFromMatch(roomCode, idUser);
        }

        public void EliminateUserFromFriends(int idUser1, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).EliminateUserFromFriends(idUser1, idUser2);
        }

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActionsImple).GetAllCurrentPlayerInLobby(roomCode, idUser);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int room, int idUser)
        {
            return ((ILiveChat)LiveChatImple).GetAllMessages(room, idUser);
        }

        public GenericClass<int> JoinLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActionsImple).JoinLobby(roomCode, idUser);
        }

        public void LeaveLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).LeaveLobby(roomCode, idUser);
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            ((ILobbyActions)LobbyActionsImple).MakeTeams(roomCode, idUser, wannaTeam);
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).NotifyPlayerInLobby(roomCode, idUser);
        }

        public void PlayerIsAvailable(int idUser, int idPlayer)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsAvailable(idUser, idPlayer);
        }

        public void PlayerIsNotAvailable(int idUser, int idPlayer)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsNotAvailable(idUser, idPlayer);
        }

        public GenericClass<int> RegisterFriendManagerUser(int idUser)
        {
            return ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).RegisterFriendManagerUser(idUser);
        }

        public void ReportPlayer(int idUser, string userName)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).ReportPlayer(idUser, userName);
        }

        public void SendFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).SendFriendRequest(idUser, idUser2);
        }

        public void SendMessage(int idUser, int room, string userName, string message)
        {
            ((ILiveChat)LiveChatImple).SendMessage(idUser, room, userName, message);
        }

        public void UnregisterFriendManagerUser(int idUser)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).UnregisterFriendManagerUser(idUser);
        }

        GenericClass<bool> ILiveChat.CreateChatForLobby(int roomCode, int idAdmin)
        {
            return ((ILiveChat)LiveChatImple).CreateChatForLobby(roomCode, idAdmin);
        }
    }


}
