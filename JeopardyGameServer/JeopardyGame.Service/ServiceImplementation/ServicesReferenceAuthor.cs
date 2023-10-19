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
    }

    public partial class ServicesReferenceAuthor: IFriendsManager
    {
        FriendsManagerImplementation friendsManagerImplementation = new FriendsManagerImplementation();

        public List<FriendInfo> GetUserFriends(UserPOJO user)
        {
            return ((IFriendsManager)friendsManagerImplementation).GetUserFriends(user);
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

    public partial class ServicesReferenceAuthor : INotifyUserAvailability 
    {
        NotifyUserAvbImple NotifyUserAvbImple = new NotifyUserAvbImple();

        public void PlayerIsAvailable(int idUser)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsAvailable(idUser);
        }

        public void PlayerIsNotAvailable(int idUser)
        {
            ((INotifyUserAvailability)NotifyUserAvbImple).PlayerIsNotAvailable(idUser);
        }
    }
}
