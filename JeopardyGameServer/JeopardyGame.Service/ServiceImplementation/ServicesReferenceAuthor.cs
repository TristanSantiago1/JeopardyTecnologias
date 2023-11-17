using JeopardyGame.Data;
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
        UserManager UserManager = new UserManager();

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

        public GenericClass<int> validateCredentials(UserValidate newUserValidate)
        {
            return ((IUserManager)UserManager).validateCredentials(newUserValidate);
        }
    }

    public partial class ServicesReferenceAuthor: IFriendsManager
    {
        FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();

        public GenericClass<List<FriendInfo>> GetUserFriendRequests(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriendRequests(user);
        }

        public GenericClass<List<FriendInfo>> GetUserFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriends(user);
        }

        public GenericClass<List<FriendInfo>> GetUsersNotFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUsersNotFriends(user);
        }
    }

    public partial class ServicesReferenceAuthor: IConsultInformation
    {
        ConsultInfoImple consultInfoImple = new ConsultInfoImple();

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
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, INotifyUserActionFriendsManager, ILobbyActions
    {
        NotifyUserAvbImple NotifyUserAvbImple = new NotifyUserAvbImple();
        NotifyFriendlyActionsImple NotifyFriendlyActionsImple = new NotifyFriendlyActionsImple();
        LobbyActionsImple LobbyActionsImple = new LobbyActionsImple();

        public void AcceptFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).AcceptFriendRequest(idUser, idUser2);
        }

        public void ChangePlayerSide(int RoomCode, int idUser, int side)
        {
            ((ILobbyActions)LobbyActionsImple).ChangePlayerSide(RoomCode, idUser, side);
        }

        public GenericClass<int> CreateNewLobby(int RoomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActionsImple).CreateNewLobby(RoomCode, idUser);
        }

        public void DeclineFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).DeclineFriendRequest(idUser, idUser2);
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

        public GenericClass<int> joinLobby(int roomCode, int idUser)
        {
            return ((ILobbyActions)LobbyActionsImple).joinLobby(roomCode, idUser);
        }

        public void leaveLobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).leaveLobby(roomCode, idUser);
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            ((ILobbyActions)LobbyActionsImple).MakeTeams(roomCode, idUser, wannaTeam);
        }

        public void NotifyPlayerInlobby(int roomCode, int idUser)
        {
            ((ILobbyActions)LobbyActionsImple).NotifyPlayerInlobby(roomCode, idUser);
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

        public void UnregisterFriendManagerUser(int idUser)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).UnregisterFriendManagerUser(idUser);
        }
    }


}
