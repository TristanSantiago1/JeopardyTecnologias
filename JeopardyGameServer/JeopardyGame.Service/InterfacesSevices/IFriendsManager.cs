using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract]
    public interface IFriendsManager
    {
        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPOJO user);

        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPOJO user);

        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPOJO user);

        [OperationContract]
        GenericClass<bool> BanUser(UserPOJO user);

        [OperationContract]
        GenericClass<bool> UnbanUser(UserPOJO user);

        [OperationContract]
        GenericClass<bool> IsUserBanned(UserPOJO user);
    }

  
}
