using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract(CallbackContract = typeof(IStatusPlayerCallBack))]
    public interface INotifyUserAvailability
    {
        [OperationContract(IsOneWay = true)]
        void PlayerIsAvailable(int idUser);

        [OperationContract(IsOneWay = true)]
        void PlayerIsNotAvailable(int idUser);
    }



    [ServiceContract]
    public interface IStatusPlayerCallBack
    {
        [OperationContract]
        void Response(int status);
    }
}
