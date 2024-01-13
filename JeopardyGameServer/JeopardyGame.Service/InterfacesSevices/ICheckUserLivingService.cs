using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract(CallbackContract = typeof(ICheckUserLivingCallBack))]
    public interface ICheckUserLivingService
    {
        [OperationContract]
        int SubscribeToICheckUserLiving(UserPojo user);

        [OperationContract]
        int RenewLivingCallBack(UserPojo user);
    }


    [ServiceContract]
    public interface ICheckUserLivingUnsubscribe
    {
        [OperationContract(IsOneWay = true)]
        void UnsubscribeFromICheckUserLiving(UserPojo user);
    }

    [ServiceContract]
    public interface ICheckUserLivingCallBack
    {
        [OperationContract]
        bool IsClientActive();
    }
}
