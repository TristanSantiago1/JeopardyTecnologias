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

        public int EmailAlreadyExist(string email)
        {
            return ((IUserManager)UserManager).EmailAlreadyExist(email);
        }

        public int SaveUser(UserPOJO userPojoNew)
        {
            return ((IUserManager)UserManager).SaveUser(userPojoNew);
        }

        public int SentEmailCodeConfirmation(string email, string subject, string body)
        {
            return ((IUserManager)UserManager).SentEmailCodeConfirmation(email, subject, body);
        }

        public int UserNameAlreadyExist(string userName)
        {
            return ((IUserManager)UserManager).UserNameAlreadyExist(userName);
        }

        public int validateCredentials(UserValidate newUserValidate)
        {
            return ((IUserManager)UserManager).validateCredentials(newUserValidate);
        }

        public int UpdateUserInformation(string editedName, string originalName)
        {
            return ((IUserManager)UserManager).UpdateUserInformation(editedName, originalName);
        }
        public List<FriendScore> GetFriendScores(int IdUser)
        {
            return ((IUserManager)UserManager).GetFriendScores(IdUser);
        }
    }

    public partial class ServicesReferenceAuthor: IFriendsManager
    {
        FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();

        public List<FriendInfo> GetUserFriendRequests(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriendRequests(user);
        }

        public List<FriendInfo> GetUserFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriends(user);
        }

        public List<FriendInfo> GetUsersNotFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUsersNotFriends(user);
        }
    }

    public partial class ServicesReferenceAuthor: IConsultInformation
    {
        ConsultInfoImple consultInfoImple = new ConsultInfoImple();

        public PlayerPOJO ConsultPlayerById(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImple).ConsultPlayerById(idPlayer);
        }

        public PlayerPOJO ConsultPlayerByIdUser(int idUser)
        {
            return ((IConsultInformation)consultInfoImple).ConsultPlayerByIdUser(idUser);
        }

        public UserPOJO ConsultUserById(int idUser)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserById(idUser);
        }

        public UserPOJO ConsultUserByIdPlayer(int idPlayer)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserByIdPlayer(idPlayer);
        }

        public UserPOJO ConsultUserByUserName(string userName)
        {
            return ((IConsultInformation)consultInfoImple).ConsultUserByUserName(userName);
        }
    }

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ServicesReferenceAuthor : INotifyUserAvailability, INotifyUserActionFriendsManager
    {
        NotifyUserAvbImple NotifyUserAvbImple = new NotifyUserAvbImple();
        NotifyFriendlyActionsImple NotifyFriendlyActionsImple = new NotifyFriendlyActionsImple();

        public void AcceptFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).AcceptFriendRequest(idUser, idUser2);
        }

        public void DeclineFriendRequest(int idUser, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).DeclineFriendRequest(idUser, idUser2);
        }

        public void EliminateUserFromFriends(int idUser1, int idUser2)
        {
            ((INotifyUserActionFriendsManager)NotifyFriendlyActionsImple).EliminateUserFromFriends(idUser1, idUser2);
        }

        public void PlayerIsAvailable(int idUser, int idPlayer)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsAvailable(idUser, idPlayer);
        }

        public void PlayerIsNotAvailable(int idUser, int idPlayer)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsNotAvailable(idUser, idPlayer);
        }

        public int RegisterFriendManagerUser(int idUser)
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
