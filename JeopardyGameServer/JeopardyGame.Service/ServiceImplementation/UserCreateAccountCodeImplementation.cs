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
using System.Threading;
using JeopardyGame.Data.Helpers;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class UserCreateAccountCodeImplementation : IUserCreateAccountCode
    {
        private const int ALLOWED_VALUES = 1;
        private static readonly Object  lockObject = new Object();



        public GenericClass<int> AddUserToConfirmationDictionary(UserPojo newUser)
        {
            lock (lockObject)
            {
                GenericClass<int> successCriteria = new()
                {
                    CodeEvent = CodesDictionary.SUCCESFULL_EVENT,
                    ObjectSaved = ALLOWED_VALUES
                };
                try
                {                   
                    AddUserToDictionary(newUser);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    successCriteria.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    successCriteria.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    successCriteria.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    successCriteria.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return successCriteria;
            }
        }
       

        private void AddUserToDictionary(UserPojo newUser)
        {
            int fourDigitsAleatoryNumber =  AleatoryGenerator.GetAleatoryNumberWithRange(1000, 9999);
            char firstRandomCharacter = AleatoryGenerator.GetAleatoryCharacters('A', 'Z', 1);
            char secondRandomCharacter = AleatoryGenerator.GetAleatoryCharacters('A', 'Z', 1);
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

        public int CheckCodeEntered(UserPojo newUser, string codeEntered)
        {
            int successCriteria;
            try
            {
                if (newUser == null)
                {
                    return CodesDictionary.NULL_PARAEMETER;
                }
                var userToVerifyList = EmailConfirmationDictionary.GetSpecificUserToConfirm(codeEntered);
                if (userToVerifyList != null && userToVerifyList.UserName.Equals(newUser.UserName))
                {
                    successCriteria = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return successCriteria;
        }

        public int ResendCode(UserPojo user)
        {
            int successCriteria;
            try
            {
                if (user == null)
                {
                    return CodesDictionary.NULL_PARAEMETER;
                }
                string code = EmailConfirmationDictionary.GetUserToVerifyList().FirstOrDefault(entry => entry.Value.UserName.Equals(user.UserName)).Key;
                if (!string.IsNullOrEmpty(code))
                {                    
                    EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(code);
                    AddUserToDictionary(user);
                    successCriteria = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                successCriteria = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return successCriteria;
        }

        public void TakeUserOutOfDictionary(UserPojo user)
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
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

    }
}
