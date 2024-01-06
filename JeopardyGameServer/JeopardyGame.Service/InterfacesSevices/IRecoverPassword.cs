using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    internal interface IRecoverPassword
    {
        [OperationContract]
        int CreateCodeToRecoverPassWord(string userName, string emailTitle, string emailBody);
        [OperationContract]
        int VerifyCodeToRecoverPassword(string userName, string code);
    }
}
