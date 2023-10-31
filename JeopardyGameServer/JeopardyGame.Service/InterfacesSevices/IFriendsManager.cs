using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    public interface IFriendsManager
    {
        [OperationContract]
        List<FriendInfo> GetUserFriends(UserPOJO user);

        [OperationContract]
        List<FriendInfo> GetUserFriendRequests(UserPOJO user);

        [OperationContract]
        List<FriendInfo> GetUsersNotFriends(UserPOJO user);
    }

    [DataContract]
    public struct FriendInfo
    {
        private int idUser;
        private string userName;
        private int idStatus;

        [DataMember]
        public int IdUser { get { return idUser; } set { idUser = value; } }
        [DataMember]
        public string UserName { get { return userName; } set { userName = value; } } 
        [DataMember]
        public int IdStatus { get { return idStatus; } set { idStatus = value; } }
    }
}
