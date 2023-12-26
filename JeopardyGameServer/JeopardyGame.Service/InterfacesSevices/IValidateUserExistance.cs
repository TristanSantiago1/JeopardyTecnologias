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
    internal interface IValidateUserExistance
    {
        [OperationContract]
        GenericClass<int> UserAlreadyExist(UserPOJO newUser);
    }

}
