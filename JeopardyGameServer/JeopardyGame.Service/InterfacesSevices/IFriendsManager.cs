using JeopardyGame.Data;
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
        GenericClass<List<FriendInfo>> GetUserFriends(UserPOJO user);

        [OperationContract]
        GenericClass<List<FriendInfo>> GetUserFriendRequests(UserPOJO user);

        [OperationContract]
        GenericClass<List<FriendInfo>> GetUsersNotFriends(UserPOJO user);
    }

  
}
