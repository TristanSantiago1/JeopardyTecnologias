using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JeopardyGame.Service.ChannelsAdministrator;
using System.ServiceModel;
using JeopardyGame.Service.DataDictionaries;
using System.Runtime.InteropServices.WindowsRuntime;
using JeopardyGame.Service.Helpers;
using System.Xml.Linq;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class UserCreateAccountCodeImplementation : IUserCreateAccountCode
    {
        private const int ALLOWED_VALUES = 1;
        private Object lockObject = new Object();



        public GenericClass<int> AddUserToConfirmationDictionary(UserPOJO newUser)
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
                    AddUserToDictionary(newUser);
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
       

        private void AddUserToDictionary(UserPOJO newUser)
        {
            Random randomNumber = new Random();
            int fourDigitsAleatoryNumber =  randomNumber.Next(1000, 9999);
            char firstRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);
            char secondRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);     
            string code = $"{firstRandomCharacter}{secondRandomCharacter}{fourDigitsAleatoryNumber:D4}";
            var codeAlreadyExist = EmailConfirmationDictionary.GetSpecificUserToConfirm(code);
            Console.WriteLine(code);
            if(codeAlreadyExist == null)
            {
                EmailConfirmationDictionary.RegisterNewUserToConfirm(code, newUser);       
            }
            else
            {
                AddUserToDictionary(newUser);
            }
        }

        public int CheckCodeEntered(UserPOJO newUser, string codeEntered)
        {
            int successCriteria;
            try
            {
                if (newUser == null)
                {
                    return ExceptionDictionary.NULL_PARAEMETER;
                }
                var userToVerifyList = EmailConfirmationDictionary.GetSpecificUserToConfirm(codeEntered);
                if (userToVerifyList != null && userToVerifyList.UserName.Equals(newUser.UserName))
                {
                    successCriteria = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return successCriteria;
        }

        public int ResendCode(UserPOJO user)
        {
            int successCriteria;
            try
            {
                if (user == null)
                {
                    return ExceptionDictionary.NULL_PARAEMETER;
                }
                string code = EmailConfirmationDictionary.GetUserToVerifyList().FirstOrDefault(entry => entry.Value.UserName.Equals(user.UserName)).Key;
                if (!string.IsNullOrEmpty(code))
                {                    
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(code);
                    AddUserToDictionary(user);
                    successCriteria = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                successCriteria = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return successCriteria;
        }

        public void TakeUserOutOfDictionary(UserPOJO user)
        {
            lock (lockObject)
            {
                try
                {
                    if (user != null)
                    {
                        string code = EmailConfirmationDictionary.GetUserToVerifyList().FirstOrDefault(entry => entry.Value.UserName.Equals(user.UserName)).Key;
                        if (!string.IsNullOrEmpty(code))
                        {
                            EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(code);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

    }
}
