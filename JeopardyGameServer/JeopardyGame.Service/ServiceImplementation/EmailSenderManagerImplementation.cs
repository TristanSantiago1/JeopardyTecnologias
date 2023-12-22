using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.Helpers;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class EmailSenderManagerImplementation : IEmailSenderManager
    {
        private readonly int SUCCESFULL_EVENT = 1;
        private readonly int UNSUCCESFULL_EVENT = 0; 



        public GenericClass<int> SentEmailConfirmationToCreateAccount(String email, String subject, String bodyMessage)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(subject) || string.IsNullOrEmpty(bodyMessage))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            int emailSend = EmailSender.SentEmailConfirmationToCreateAccount(email, subject, bodyMessage);
            if (emailSend == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                resultToReturn.ObjectSaved = SUCCESFULL_EVENT;
                resultToReturn.ObjectSaved = emailSend;
            }
            else
            {
                resultToReturn.ObjectSaved = UNSUCCESFULL_EVENT;
                resultToReturn.ObjectSaved = emailSend;
            }
            return resultToReturn;
        }


        public GenericClass<int> SentEmailInvitingToGame(string email, string subject, string bodyMessage)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(subject) || string.IsNullOrEmpty(bodyMessage))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            int emailSend = EmailSender.SentEmailConfirmationToCreateAccount(email, subject, bodyMessage);
            if (emailSend == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                resultToReturn.ObjectSaved = SUCCESFULL_EVENT;
                resultToReturn.ObjectSaved = emailSend;
            }
            else
            {
                resultToReturn.ObjectSaved = UNSUCCESFULL_EVENT;
                resultToReturn.ObjectSaved = emailSend;
            }
            return resultToReturn;
        }

       
    }
}
