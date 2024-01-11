using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class RecoverPasswordImplementation : IRecoverPassword
    {
        private static readonly Object objectLock = new object();
        private static readonly ThreadLocal<Random> generateAleatory = new ThreadLocal<Random>(() => new Random());

        public int CreateCodeToRecoverPassWord(string userName, string emailTitle, string emailBody)
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
                            if (!PasswordChangeCodeDictionary.DoesPassWordCodeContaisKey(userName))
                            {
                                EmailSenderManagerImplementation emailSenderManager = new();
                                string code = GenerateCodeForPassword();
                                var succes = emailSenderManager.SentEmailToRecoverPassword(userConsulted.ObjectSaved, emailTitle, code + " " + emailBody);
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
                        if (PasswordChangeCodeDictionary.DoesPassWordCodeContaisKey(userName))
                        {
                            if (PasswordChangeCodeDictionary.GetSpecificCode(userName).Equals(code))
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
            int fourDigitsAleatoryNumber = generateAleatory.Value.Next(1000, 9999);
            char firstRandomCharacter = (char)generateAleatory.Value.Next('A', 'Z' + 1);
            char secondRandomCharacter = (char)generateAleatory.Value.Next('A', 'Z' + 1);
            return $"{firstRandomCharacter}{secondRandomCharacter}{fourDigitsAleatoryNumber:D4}";
        }

    }

    
}
