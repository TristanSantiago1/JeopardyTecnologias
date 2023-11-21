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
        GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager);

        [OperationContract(IsOneWay = true)]
        void UnregisterFriendManagerUser(int idUserFriendManager);

        [OperationContract(IsOneWay = true)]
        void ReportPlayer(int idUser, String userName);

        [OperationContract(IsOneWay = true)]
        void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate);

        [OperationContract(IsOneWay = true)]
        void SendFriendRequest(int idPLayerRequesting, int idUserRequested);

        [OperationContract(IsOneWay = true)]
        void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting);

        [OperationContract(IsOneWay = true)]
        void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting);
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

    

