using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class RecoverPasswordImplementation : IRecoverPassword
    {
        private static Object objectLock = new object();

        public int CreateCodeToRecoverPassWord(string userName, string emailTitle, string email)
        {
            int resultToReturn = ExceptionDictionary.UNSUCCESFULL_EVENT;
            lock (objectLock)
            {
                try
                {
                    if (!string.IsNullOrEmpty(userName))
                    {
                        ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                        var userConsulted = consultInformation.ConsultUserByUserName(userName);
                        if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            if (!PasswordChangeCodeDictionary.passwordsCodes.ContainsKey(userName))
                            {
                                EmailSenderManagerImplementation emailSenderManager = new();
                                string code = GenerateCodeForPassword();
                                var succes = emailSenderManager.SentEmailToRecoverPassword(userConsulted.ObjectSaved, emailTitle, code + " " + email);
                                if (succes.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                                {
                                    PasswordChangeCodeDictionary.AddTimerRegistry(userName, code);
                                    resultToReturn = ExceptionDictionary.SUCCESFULL_EVENT;
                                    Console.WriteLine(code);
                                }
                                else
                                {
                                    resultToReturn = succes.CodeEvent;
                                }
                            }
                            else
                            {
                                resultToReturn = ExceptionDictionary.USERNAME_ALREADY_EXIST;
                            }
                        }
                        else
                        {
                            resultToReturn = ExceptionDictionary.NULL_PARAEMETER;
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
            return resultToReturn;
        }

        public int VerifyCodeToRecoverPassword(string userName, string code)
        {
            int resultToReturn = ExceptionDictionary.UNSUCCESFULL_EVENT;
            try
            {
                if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(code))
                {
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    var userConsulted = consultInformation.ConsultUserByUserName(userName);
                    if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        if (PasswordChangeCodeDictionary.passwordsCodes.ContainsKey(userName))
                        {
                            if (PasswordChangeCodeDictionary.passwordsCodes[userName].Equals(code))
                            {
                                resultToReturn = ExceptionDictionary.SUCCESFULL_EVENT;
                                PasswordChangeCodeDictionary.RemoveTimerRegistry(userName);
                            }
                            else
                            {
                                resultToReturn = ExceptionDictionary.INVALID_OPERATION;
                            }
                        }
                        else
                        {
                            resultToReturn = ExceptionDictionary.ARGUMENT_NULL;
                        }
                    }
                    else
                    {
                        resultToReturn = ExceptionDictionary.NULL_PARAEMETER;
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
            return resultToReturn;
        }


        private string GenerateCodeForPassword()
        {
            Random randomNumber = new Random();
            int fourDigitsAleatoryNumber = randomNumber.Next(1000, 9999);
            char firstRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);
            char secondRandomCharacter = (char)randomNumber.Next('A', 'Z' + 1);
            return $"{firstRandomCharacter}{secondRandomCharacter}{fourDigitsAleatoryNumber:D4}";
        }

    }

    
}
