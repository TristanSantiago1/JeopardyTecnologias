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

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class LoginVerificationImplementation : ILogInVerification
    {
        private readonly int DEFAULT_INT_VALUE = 0;
        private readonly int SUCCESFULL_EVENT = 1;
        private readonly int UNSUCCESFULL_EVENT = 0;

        public GenericClass<int> ValidateCredentials(UserValidate newUserValidate)
        {
            var userConsulted = UserManagerDataOperation.GetUserByUserName(newUserValidate.UserName);
            GenericClass<int> responseServer = new GenericClass<int>();
            if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                try
                {
                    GenericClassServer<bool> isPasswordValid = LoginOperations.VerifyPassword(newUserValidate.Password, userConsulted.ObjectSaved.Password);
                    if (isPasswordValid.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || isPasswordValid.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                    {
                        if (isPasswordValid.ObjectSaved)
                        {
                            responseServer.ObjectSaved = SUCCESFULL_EVENT;
                            responseServer.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;

                        }
                        else
                        {
                            responseServer.ObjectSaved = UNSUCCESFULL_EVENT;
                            responseServer.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                        }
                    }
                    else
                    {
                        responseServer.CodeEvent = isPasswordValid.CodeEvent;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    responseServer.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    responseServer.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    responseServer.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(userConsulted.ObjectSaved.IdUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
            else
            {
                responseServer.CodeEvent = userConsulted.CodeEvent;
            }            
            return responseServer;
        }

        public int ValidateThereIsOnlyOneAActiveAccount(int idUser)
        {
            try
            {
                if (idUser != DEFAULT_INT_VALUE)
                {
                    var savedChannel = ActiveUsersDictionary.GetChannelCallBackActiveUser(idUser);
                    if (savedChannel == null)
                    {
                        return ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        var isNotActive = ChannelAdministrator.VerifyUserIsStillActive(idUser);
                        if (isNotActive == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            ChannelAdministrator.KickUserFromDictionaries(idUser);
                        }
                        return isNotActive;
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                return ExceptionDictionary.UNSUCCESFULL_EVENT;
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                return ExceptionDictionary.UNSUCCESFULL_EVENT;
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
                return ExceptionDictionary.UNSUCCESFULL_EVENT;
            }
            return ExceptionDictionary.NULL_PARAEMETER;
        }



    }
}
