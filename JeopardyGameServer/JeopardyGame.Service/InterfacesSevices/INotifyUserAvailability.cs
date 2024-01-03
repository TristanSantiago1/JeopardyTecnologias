using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{

    [ServiceContract(CallbackContract = typeof(INotifyUserAvailabilityCallBack))]
    public interface INotifyUserAvailability
    {
        [OperationContract(IsOneWay = true)]
        void SubscribeToAvailabityCallBackChannel(int idNewActiveUser);
        [OperationContract(IsOneWay = true)]
        void RenewNotifyAvailabityCallBack(int idUser);
    }

    [ServiceContract]
    public interface IAvailabilityUserManagment
    {
        [OperationContract(IsOneWay = true)]
        void PlayerIsAvailable(int idNewActiveUser);

        [OperationContract(IsOneWay = true)]
        void PlayerIsPlaying(int idUserPlaying);

        [OperationContract(IsOneWay = true)]
        void PlayerIsNotAvailable(int idUserDisconnecting);
    }

    [ServiceContract]
    public interface INotifyUserAvailabilityCallBack
    {
        [OperationContract]
        void ResponseOfPlayerAvailability(int status, int idFriend);

    }


}
