using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract(CallbackContract = typeof(INotifyUserActionFriendsManagerCallBack))]
    public interface INotifyUserActionFriendsManager
    {
        [OperationContract]
        GenericClass<int> RegisterFriendManagerUser(int idUser);

        [OperationContract(IsOneWay = true)]
        void UnregisterFriendManagerUser(int idUser);

        [OperationContract(IsOneWay = true)]
        void ReportPlayer(int idUser, String userName);

        [OperationContract(IsOneWay = true)]
        void EliminateUserFromFriends(int idUser1, int idUser2);

        [OperationContract(IsOneWay = true)]
        void SendFriendRequest(int idUser, int idUser2);

        [OperationContract(IsOneWay = true)]
        void AcceptFriendRequest(int idUser, int idUser2);

        [OperationContract(IsOneWay = true)]
        void DeclineFriendRequest(int idUser, int idUser2);
    }

    [ServiceContract]
    public interface INotifyUserActionFriendsManagerCallBack
    {
        [OperationContract]
        void ResponseReported(int numReports);

        [OperationContract]
        void ResponseEliminationFromFriends(int idUser);

        [OperationContract]
        void ResponseRequestAction(int idUser, int requestStatus, String userName);
    }

}

    

