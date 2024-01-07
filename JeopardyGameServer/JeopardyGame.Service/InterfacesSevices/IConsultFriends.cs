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
    public interface IConsultFriends
    {
        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUserFriends(UserPojo user);

        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUserFriendRequests(UserPojo user);

        [OperationContract]
        GenericClass<List<FriendBasicInformation>> GetUsersNotFriends(UserPojo user);

    }

  
}
