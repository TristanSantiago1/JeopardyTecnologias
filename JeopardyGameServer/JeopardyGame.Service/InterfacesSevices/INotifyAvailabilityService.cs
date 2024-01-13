using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{

    [ServiceContract(CallbackContract = typeof(INotifyAvailabilityCallBack))]
    public interface INotifyAvailabilityService
    {
        [OperationContract(IsOneWay = true)]
        void SubscribeToAvailabityCallBackChannel(int idNewActiveUser);
        [OperationContract(IsOneWay = true)]
        void RenewNotifyAvailabityCallBack(int idUser);
    }

    [ServiceContract]
    public interface INotifyAvailabilityOperations
    {
        [OperationContract(IsOneWay = true)]
        void UserIsAvailable(int idNewActiveUser);

        [OperationContract(IsOneWay = true)]
        void UserIsPlaying(int idUserPlaying);

        [OperationContract(IsOneWay = true)]
        void UserIsNotAvailable(int idUserDisconnecting);

        [OperationContract(IsOneWay = true)]
        void NotifyUserAboutNewPlayer(int idNewPlayer, string userName);
    }


    [ServiceContract]
    public interface INotifyAvailabilityCallBack
    {
        [OperationContract]
        void ResponseOfPlayerAvailability(int status, int idFriend);
    }


}
