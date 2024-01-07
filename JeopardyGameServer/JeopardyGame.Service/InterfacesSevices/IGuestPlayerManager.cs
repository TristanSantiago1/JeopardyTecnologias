using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    internal interface IGuestPlayerManager
    {
        [OperationContract]
        GenericClass<UserPojo> CreateUserForGuest();

        [OperationContract (IsOneWay = true)]
        void DeleteGuest(int idUser);

    }
}
