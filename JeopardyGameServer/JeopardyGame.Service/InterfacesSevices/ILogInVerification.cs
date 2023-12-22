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
    internal interface ILogInVerification
    {
        [OperationContract]
        GenericClass<int> ValidateCredentials(UserValidate newUserValidate);

        [OperationContract]
        int ValidateThereIsOnlyOneAActiveAccount(int idUser);

    }

}
