using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class UserDataCheckerImplementation : IUserDataChecker
    {

        public GenericClass<int> EmailAlreadyExist(String email)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (string.IsNullOrEmpty(email))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<int> emailIsNew = LoginOperations.ValidateIfEmailExist(email);
            resultToReturn.ObjectSaved = emailIsNew.ObjectSaved;
            resultToReturn.CodeEvent = emailIsNew.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<int> UserNameAlreadyExist(String userName)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<int> emailIsNew = LoginOperations.ValidateIfUserNameExist(userName);
            resultToReturn.ObjectSaved = emailIsNew.ObjectSaved;
            resultToReturn.CodeEvent = emailIsNew.CodeEvent;
            return resultToReturn;
        }
    }
}
