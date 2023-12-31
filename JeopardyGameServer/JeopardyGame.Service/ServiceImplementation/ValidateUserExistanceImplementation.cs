using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class ValidateUserExistenceImplementation : IValidateUserExistance
    {
        private const int ALLOWED_VALUES = 1;
        private Object lockObject = new Object();

        public GenericClass<int> UserAlreadyExist(UserPOJO newUser)
        {
            lock (lockObject)
            {
                GenericClass<int> successCriteria = new()
                {
                    CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT,
                    ObjectSaved = ALLOWED_VALUES
                };
                try
                {                    
                    VerifyUsersInDictionary();
                    if (newUser == null)
                    {
                        return NullParametersHandler.HandleNullParametersService(successCriteria);
                    }
                    successCriteria = EmailAlreadyExist(newUser.EmailAddress);
                    if (successCriteria.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT || successCriteria.ObjectSaved != ALLOWED_VALUES)
                    {
                        successCriteria.ObjectSaved = ExceptionDictionary.EMAIL_ALREADY_EXIST;
                        return successCriteria;
                    }
                    successCriteria = UserNameAlreadyExist(newUser.UserName);
                    if (successCriteria.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT || successCriteria.ObjectSaved != ALLOWED_VALUES)
                    {
                        successCriteria.ObjectSaved = ExceptionDictionary.USERNAME_ALREADY_EXIST;
                        return successCriteria;
                    }
                    successCriteria = CheckDictionary(newUser);
                    if (successCriteria.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT || successCriteria.ObjectSaved != ALLOWED_VALUES)
                    {
                        return successCriteria;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    successCriteria.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    successCriteria.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    successCriteria.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    successCriteria.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                return successCriteria;
            }
        }

        private void VerifyUsersInDictionary()
        {
            var callBackChannels = LivingClients.GetLivingClientsList().ToList();
            foreach (var item in callBackChannels)
            {
                try
                {
                    bool isActive = item.Value.GetCallbackChannel<ICheckUserLivingCallBack>().IsClientActive();
                    if (!isActive)
                    {
                        EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(GetRoomCodeFromDictionary(item.Key));
                        LivingClients.CheckCallBacks();
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(GetRoomCodeFromDictionary(item.Key));
                    LivingClients.CheckCallBacks();
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(GetRoomCodeFromDictionary(item.Key));
                    LivingClients.CheckCallBacks();
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(GetRoomCodeFromDictionary(item.Key));
                    LivingClients.CheckCallBacks();
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(GetRoomCodeFromDictionary(item.Key));
                    LivingClients.CheckCallBacks();
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private string GetRoomCodeFromDictionary(string userName)
        {
            string roomCode = EmailConfirmationDictionary.GetUserToVerifyList().FirstOrDefault(us => us.Value.UserName.Equals(userName)).Key;
            return roomCode;                      
        }
        public GenericClass<int> EmailAlreadyExist(String email)
        {
            GenericClass<int> resultToReturn = new();
            if (string.IsNullOrEmpty(email))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<int> result = LoginOperations.ValidateIfEmailExist(email);
            resultToReturn.ObjectSaved = result.ObjectSaved;
            resultToReturn.CodeEvent = result.CodeEvent;
            return resultToReturn;
        }

        private GenericClass<int> UserNameAlreadyExist(String userName)
        {
            GenericClass<int> resultToReturn = new();
            if (string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<int> result = LoginOperations.ValidateIfUserNameExist(userName);
            resultToReturn.ObjectSaved = result.ObjectSaved;
            resultToReturn.CodeEvent = result.CodeEvent;
            return resultToReturn;
        }

        private GenericClass<int> CheckDictionary(UserPOJO userToVerify)
        {
            GenericClass<int> resultToReturn = new()
            {
                CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT,
                ObjectSaved = ALLOWED_VALUES
            };
            if (userToVerify == null)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            var userToVerifyList = EmailConfirmationDictionary.GetUserToVerifyList();
            if (userToVerifyList.Any(user => user.Value.EmailAddress.Equals(userToVerify.EmailAddress)))
            {
                resultToReturn.ObjectSaved = ExceptionDictionary.EMAIL_ALREADY_EXIST;
                resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                return resultToReturn;
            }
            if (userToVerifyList.Any(user => user.Value.UserName.Equals(userToVerify.UserName)))
            {
                resultToReturn.ObjectSaved = ExceptionDictionary.USERNAME_ALREADY_EXIST;
                resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                return resultToReturn;
            }
            return resultToReturn;
        }


    }
}
