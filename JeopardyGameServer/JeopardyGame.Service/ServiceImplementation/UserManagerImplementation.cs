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

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class UserManagerImplementation : IUserManager
    {
        private readonly int DEFAULT_INT_VALUE = 0;
        private readonly int NOT_BANNED_STATE = 1;
        private static Object lockObject = new Object();


        public GenericClass<int> SaveUser(UserPOJO userPojoNew, string codeEntered)
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
                    if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        PlayerPOJO playerToSave = new PlayerPOJO();
                        playerToSave.IdPlayer = DEFAULT_INT_VALUE;
                        playerToSave.GeneralPoints = DEFAULT_INT_VALUE;
                        playerToSave.NoReports = DEFAULT_INT_VALUE;
                        playerToSave.IdActualAvatar = DEFAULT_INT_VALUE;
                        playerToSave.IdUser = userSaved.ObjectSaved.IdUser;
                        playerToSave.IdState = NOT_BANNED_STATE;
                        int isPlayerSavedSuccessfully = SavePlayer(playerToSave);
                        if (isPlayerSavedSuccessfully == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            resultToReturn.ObjectSaved = userSaved.ObjectSaved.IdUser;
                            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
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
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }                                 
        }
        
        public int SavePlayer(PlayerPOJO newPlayer)
        {
            int responseOfOperation = DEFAULT_INT_VALUE;
            if (newPlayer == null)
            {
                return responseOfOperation;
            }           
            Player newPlayerAccount = InterpretersEntityPojo.UserInterpreter.FromPlayerPojoToPlayerEntity(newPlayer);
            GenericClassServer<User> userSaved = UserManagerDataOperation.GetUserById(newPlayer.IdUser);
            if(userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<State> defaultState = UserManagerDataOperation.GetStateById(newPlayer.IdState);
                if (defaultState.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
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


        public GenericClass<int> UpdateUserInformation(string editedName, string originalName)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                if (string.IsNullOrEmpty(editedName) || string.IsNullOrEmpty(originalName))
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                var updateInformation = UserManagerDataOperation.UpdateUserInformation(editedName, originalName);
                if (updateInformation.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updateInformation.ObjectSaved;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updateInformation.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

       
        public GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                var updatePhoto = UserManagerDataOperation.UpdatePhotoPlayer(idPlayer, imageId);
                if (updatePhoto.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<int> UpdateEmailUser(int idUser, string email)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            try
            {
                var updatePhoto = UserManagerDataOperation.UpdateEmailUser(idUser,email);
                if (updatePhoto.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = updatePhoto.ObjectSaved;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                }
                else
                {
                    resultToReturn.CodeEvent = updatePhoto.CodeEvent;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ConsultInformationImplementation consultInformation = new();
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(consultInformation.ConsultUserById(idUser).ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }
    }  
}

