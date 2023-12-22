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
    internal interface IEmailSenderManager
    {
        [OperationContract]
        GenericClass<int> SentEmailConfirmationToCreateAccount(String email, String subject, String bodyMessage);

        [OperationContract]
        GenericClass<int> SentEmailInvitingToGame(String email, String subject, String bodyMessage);
    }
}
