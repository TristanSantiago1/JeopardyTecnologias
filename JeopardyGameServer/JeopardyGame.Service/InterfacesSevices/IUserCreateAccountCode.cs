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
        GenericClass<int> AddUserToConfirmationDictionary(UserPOJO newUser);

        [OperationContract]
        int CheckCodeEntered(UserPOJO newUser, string codeEntered);

        [OperationContract]
        int ResendCode(UserPOJO user);

        [OperationContract]
        void TakeUserOutOfDictionary(UserPOJO user);
    }  

}
