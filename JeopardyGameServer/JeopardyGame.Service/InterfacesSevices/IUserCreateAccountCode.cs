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
    internal interface IUserCreateAccountCode
    {

        [OperationContract]
        GenericClass<int> AddUserToConfirmationDictionary(UserPojo newUser);

        [OperationContract]
        int CheckCodeEntered(UserPojo newUser, string codeEntered);

        [OperationContract]
        int ResendCode(UserPojo user);

        [OperationContract]
        void TakeUserOutOfDictionary(UserPojo user);
    }  

}
