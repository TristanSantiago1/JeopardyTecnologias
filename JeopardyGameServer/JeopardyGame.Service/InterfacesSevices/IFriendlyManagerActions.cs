using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract(CallbackContract = typeof(IFriendManagerActionsCallBack))]
    public interface IFriendManagerActions
    {
        [OperationContract]
        GenericClass<int> RegisterFriendManagerUser(int idUserFriendManager);

        [OperationContract]
        int RenewFriendManagerUserCallBack(int idUserFriendManager);
    }

    [ServiceContract]
    public interface IFriendManagerActionOperations
    {
        [OperationContract(IsOneWay = true)]
        void UnregisterFriendManagerUser(int idUserFriendManager);     

        [OperationContract]
        GenericClass<int> BanUser(int idPlayerBanned, int idUserBanning);

        [OperationContract(IsOneWay = true)]
        void EliminateUserFromFriends(int idPlayerDeleting, int idUserToEliminate);

        [OperationContract(IsOneWay = true)]
        void SendFriendRequest(int idPLayerRequesting, int idUserRequested);

        [OperationContract(IsOneWay = true)]
        void AcceptFriendRequest(int idPlayerAccepting, int idUserRequesting);

        [OperationContract(IsOneWay = true)]
        void DeclineFriendRequest(int idPlayerDeclining, int idUserRequesting);

        [OperationContract(IsOneWay = true)]
        void NotifyUserAboutNewPlayer(int idNewPlayer, string userName);

    }

    [ServiceContract]
    public interface IFriendManagerActionsCallBack
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

    

