using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract(CallbackContract = typeof(IFriendManagerCallBack))]
    public interface IFriendManagerService
    {
        [OperationContract]
        GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager);

        [OperationContract]
        int RenewFriendManagerUserCallBack(int idUserFriendManager);
    }


    [ServiceContract]
    public interface IFriendManagerOperations
    {
        [OperationContract(IsOneWay = true)]
        void UnregisterFromFriendManager(int idUserFriendManager);     

        [OperationContract]
        GenericClass<int> ReportFriend(int idPlayerBanned, int idUserBanning);

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
    public interface IFriendManagerCallBack
    {
        [OperationContract]
        void ResponseReported(int numReports);

        [OperationContract]
        void ResponseEliminationFromFriends(int idUser);

        [OperationContract]
        void ResponseRequestAction(int idUser, int requestStatus, String userName);

        [OperationContract]
        void ResponseNewPlayerJusJoin(int idUser, string userName);
    }

}

    

