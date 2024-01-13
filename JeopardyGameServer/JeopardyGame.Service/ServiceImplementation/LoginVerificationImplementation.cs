using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using JeopardyGame.Service.DataDictionaries;
using System.Data.Entity;
using System.Xml.Linq;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class LoginVerificationImplementation : ILogInVerification
    {
        private readonly int SUCCESFULL_EVENT = 1;
        private readonly int UNSUCCESFULL_EVENT = 0;

        public GenericClass<int> ValidateCredentials(UserValidate newUserValidate)
        {
            var userConsulted = UserManagerDataOperation.GetUserByUserName(newUserValidate.UserName);
            GenericClass<int> responseServer = new GenericClass<int>()
            {
                ObjectSaved = UNSUCCESFULL_EVENT,
                CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT
             };
            if (userConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                try
                {
                    GenericClassServer<bool> isPasswordValid = LoginOperations.VerifyPassword(newUserValidate.Password, userConsulted.ObjectSaved.Password);
                    if (isPasswordValid.CodeEvent == CodesDictionary.SUCCESFULL_EVENT || isPasswordValid.CodeEvent == CodesDictionary.UNSUCCESFULL_EVENT)
                    {
                        if (isPasswordValid.ObjectSaved)
                        {
                            responseServer.ObjectSaved = SUCCESFULL_EVENT;
                            responseServer.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;

                        }
                    }
                    else
                    {
                        responseServer.CodeEvent = isPasswordValid.CodeEvent;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    responseServer.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    responseServer.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    responseServer.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    responseServer.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
            else
            {
                responseServer.CodeEvent = userConsulted.CodeEvent;
            }            
            return responseServer;
        }

        public int ValidateThereIsOnlyOneAActiveAccount(string userName)
        {
            try
            {
                if (!string.IsNullOrEmpty(userName))
                {
                    var savedChannel = LivingClientsDictionary.GetClient(userName);
                    if (savedChannel == null)
                    {
                        return CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        var isNotActive = ChannelAdministrator.VerifyUserIsStillActive(userName);
                        if (isNotActive == CodesDictionary.SUCCESFULL_EVENT)
                        {
                            ChannelAdministrator.KickUserFromDictionaries(GetIdClient(userName));
                        }
                        return isNotActive;
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                
                ChannelAdministrator.HandleCommunicationIssue(GetIdClient(userName), ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                return CodesDictionary.UNSUCCESFULL_EVENT;
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(GetIdClient(userName), ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                return CodesDictionary.UNSUCCESFULL_EVENT;
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(GetIdClient(userName), ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                return CodesDictionary.UNSUCCESFULL_EVENT;
            }
            catch (InvalidOperationException ex)
            {                
                ChannelAdministrator.HandleCommunicationIssue(GetIdClient(userName), ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                return CodesDictionary.UNSUCCESFULL_EVENT;
            }
            return CodesDictionary.NULL_PARAEMETER;
        }

        private int GetIdClient(string userName)
        {
            ConsultInformationImplementation consultInformationImplementation = new();
            int idUser = consultInformationImplementation.ConsultUserByUserName(userName).ObjectSaved.IdUser;
            return idUser;
        }



    }
}
