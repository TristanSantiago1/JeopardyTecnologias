using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data.Helpers;
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

        public int CreateCodeToRecoverPassWord(string userName, string emailTitle, string emailBody)
        {
            int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
            lock (objectLock)
            {
                try
                {
                    if (!string.IsNullOrEmpty(userName))
                    {
                        ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                        var userConsulted = consultInformation.ConsultUserByUserName(userName);
                        if (userConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                        {
                            if (!PasswordChangeCodeDictionary.DoesPassWordCodeContaisKey(userName))
                            {
                                EmailSenderManagerImplementation emailSenderManager = new();
                                string code = GenerateCodeForPassword();
                                var succes = emailSenderManager.SentEmailToRecoverPassword(userConsulted.ObjectSaved, emailTitle, code + " " + emailBody);
                                if (succes.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                                {
                                    PasswordChangeCodeDictionary.AddTimerRegistry(userName, code);
                                    resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                                    Console.WriteLine(code);
                                }
                                else
                                {
                                    resultToReturn = succes.CodeEvent;
                                }
                            }
                            else
                            {
                                resultToReturn = CodesDictionary.USERNAME_ALREADY_EXIST;
                            }
                        }
                        else
                        {
                            resultToReturn = CodesDictionary.NULL_PARAEMETER;
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
            return resultToReturn;
        }

        public int VerifyCodeToRecoverPassword(string userName, string code)
        {
            int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
            try
            {
                if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(code))
                {
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    var userConsulted = consultInformation.ConsultUserByUserName(userName);
                    if (userConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        if (PasswordChangeCodeDictionary.DoesPassWordCodeContaisKey(userName))
                        {
                            if (PasswordChangeCodeDictionary.GetSpecificCode(userName).Equals(code))
                            {
                                resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                                PasswordChangeCodeDictionary.RemoveTimerRegistry(userName);
                            }
                            else
                            {
                                resultToReturn = CodesDictionary.INVALID_OPERATION;
                            }
                        }
                        else
                        {
                            resultToReturn = CodesDictionary.ARGUMENT_NULL;
                        }
                    }
                    else
                    {
                        resultToReturn = CodesDictionary.NULL_PARAEMETER;
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
            return resultToReturn;
        }


        private string GenerateCodeForPassword()
        {
            int fourDigitsAleatoryNumber = AleatoryGenerator.GetAleatoryNumberWithRange(1000, 9999);
            char firstRandomCharacter = AleatoryGenerator.GetAleatoryCharacters('A', 'Z', 1);
            char secondRandomCharacter = AleatoryGenerator.GetAleatoryCharacters('A', 'Z', 1);
            return $"{firstRandomCharacter}{secondRandomCharacter}{fourDigitsAleatoryNumber:D4}";
        }

    }

    
}
