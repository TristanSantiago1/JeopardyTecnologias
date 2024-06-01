using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.Helpers;
using System.ServiceModel;
using static System.Net.Mime.MediaTypeNames;
using JeopardyGame.Service.DataDictionaries;
using System.Data.Entity;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class UserManagerImplementation : IUserManager
    {
        private readonly int DEFAULT_INT_VALUE = 0;
        private readonly int NOT_BANNED_STATE = 1;
        private static readonly Object lockObject = new Object();


        public GenericClass<int> SaveUser(UserPojo userPojoNew, string codeEntered)
        {
            lock (lockObject)
            {
                GenericClass<int> resultToReturn = new GenericClass<int>();
                try
                {
                    if (userPojoNew == null)
                    {
                        return NullParametersHandler.HandleNullParametersService(resultToReturn);
                    }
                    userPojoNew.IdUser = DEFAULT_INT_VALUE;
                    User newUser = InterpretersEntityPojo.UserInterpreter.FromUserPojoToUserEntity(userPojoNew);
                    GenericClassServer<User> userSaved = UserManagerDataOperation.SaveUserInDataBase(newUser);
                    if (userSaved.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        PlayerPojo playerToSave = new PlayerPojo();
                        playerToSave.IdPlayer = DEFAULT_INT_VALUE;
                        playerToSave.GeneralPoints = DEFAULT_INT_VALUE;
                        playerToSave.NoReports = DEFAULT_INT_VALUE;
                        playerToSave.IdActualAvatar = DEFAULT_INT_VALUE;
                        playerToSave.IdUser = userSaved.ObjectSaved.IdUser;
                        playerToSave.IdState = NOT_BANNED_STATE;
                        int isPlayerSavedSuccessfully = SavePlayer(playerToSave);
                        if (isPlayerSavedSuccessfully == CodesDictionary.SUCCESFULL_EVENT)
                        {
                            resultToReturn.ObjectSaved = userSaved.ObjectSaved.IdUser;
                            resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                            EmailConfirmationDictionary.RemoveRegistryOfUserFromDictionary(codeEntered);
                        }
                        else
                        {
                            UserManagerDataOperation.DeleteUserById(userSaved.ObjectSaved.IdUser);
                            resultToReturn.CodeEvent = isPlayerSavedSuccessfully;
                        }
                    }
                    else
                    {
                        resultToReturn.CodeEvent = userSaved.CodeEvent;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }                                 
        }
        
        public int SavePlayer(PlayerPojo newPlayer)
        {
            int responseOfOperation = DEFAULT_INT_VALUE;
            if (newPlayer == null)
            {
                return responseOfOperation;
            }           
            Player newPlayerAccount = InterpretersEntityPojo.UserInterpreter.FromPlayerPojoToPlayerEntity(newPlayer);
            GenericClassServer<User> userSaved = UserManagerDataOperation.GetUserById(newPlayer.IdUser);
            if(userSaved.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<State> defaultState = UserManagerDataOperation.GetStateById(newPlayer.IdState);
                if (defaultState.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    GenericClassServer<Player> playerSaved = UserManagerDataOperation.SavePlayerInDataBase(userSaved.ObjectSaved, defaultState.ObjectSaved, newPlayerAccount);
                    responseOfOperation = playerSaved.CodeEvent;
                }
                else 
                { 
                    responseOfOperation = defaultState.CodeEvent; 
                }
            }
            else 
            {
                responseOfOperation = userSaved.CodeEvent; 
            }
            return responseOfOperation;           
        }


        public GenericClass<int> UpdateUserInformation(int idUser, string editedName)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                if (string.IsNullOrEmpty(editedName))
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                var updateInformation = UserManagerDataOperation.UpdateUserName(idUser, editedName);
                if (updateInformation.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updateInformation.ObjectSaved;
                    resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updateInformation.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

       
        public GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                var updatePhoto = UserManagerDataOperation.UpdatePhotoPlayer(idPlayer, imageId);
                if (updatePhoto.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<int> UpdateEmailUser(int idUser, string email)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                var updatePhoto = UserManagerDataOperation.UpdateEmailUser(idUser,email);
                if (updatePhoto.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<int> UpdatePasswordUser(string userName, string password)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>()
            {
                CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT,
              
            };
            try
            {
                var updatePhoto = UserManagerDataOperation.UpdatePasswordUser(userName, password);
                if (updatePhoto.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
               ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<int> SaveUpdateTwitterUserName(int idUser, string twitterUserName)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>()
            {
                CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT,

            };
            try
            {
                var twitterExist = UserManagerDataOperation.ValidateIfTwitterAlredadyExist(twitterUserName);
                if (twitterExist.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    var updatePhoto = UserManagerDataOperation.SaveUpdateTwitterUserName(idUser, twitterUserName);
                    if (updatePhoto.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                        resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                        resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                    }
                }
                else
                {
                    resultToReturn.ObjectSaved = twitterExist.ObjectSaved;
                    resultToReturn.CodeEvent = twitterExist.CodeEvent;
                }
               
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }
    }  
}

