using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.ServiceModel;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ConsultInformationImplementation : IConsultUserInformation
    {
        private readonly int NULL_INT_VALUE = 0;
        public GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer)
        {
            GenericClass<PlayerPOJO> resultToReturn = new GenericClass<PlayerPOJO>();
            try
            {
                if (idPlayer == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                GenericClassServer<Player> playerConsultedByIdPlayer = Data.DataAccess.UserManagerDataOperation.GetPlayerByIdPlayer(idPlayer);
                resultToReturn.ObjectSaved = UserInterpreter.FromPlayerEntityToPlayerPojo(playerConsultedByIdPlayer.ObjectSaved);
                resultToReturn.CodeEvent = playerConsultedByIdPlayer.CodeEvent;
               
            }
            catch (CommunicationObjectFaultedException ex)
            {
                int idUser = ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser;
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                int idUser = ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser;
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION); 
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                int idUser = ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser;
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                int idUser = ConsultUserByIdPlayer(idPlayer).ObjectSaved.IdUser;
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser)
        {
            GenericClass<PlayerPOJO> resultToReturn = new GenericClass<PlayerPOJO>();
            try
            {
                if (idUser == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                GenericClassServer<Player> playerConsultedByIdUser = Data.DataAccess.UserManagerDataOperation.GetPlayerByIdUser(idUser);
                resultToReturn.ObjectSaved = UserInterpreter.FromPlayerEntityToPlayerPojo(playerConsultedByIdUser.ObjectSaved);
                resultToReturn.CodeEvent = playerConsultedByIdUser.CodeEvent;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<UserPOJO> ConsultUserById(int idUser)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            try
            {
                if (idUser == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                GenericClassServer<User> userConsultedByIdUser = Data.DataAccess.UserManagerDataOperation.GetUserById(idUser);
                resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsultedByIdUser.ObjectSaved);
                resultToReturn.CodeEvent = userConsultedByIdUser.CodeEvent;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            try
            {
                if (idPlayer == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                PlayerPOJO player = ConsultPlayerById(idPlayer).ObjectSaved;
                GenericClassServer<User> userConsultedByIdPlayer = Data.DataAccess.UserManagerDataOperation.GetUserById(player.IdUser);
                resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsultedByIdPlayer.ObjectSaved);
                resultToReturn.CodeEvent = userConsultedByIdPlayer.CodeEvent;

            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }


        public GenericClass<UserPOJO> ConsultUserByUserName(string userName)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            try
            {            
                if (string.IsNullOrEmpty(userName))
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                GenericClassServer<User> userConsultedByUserName = Data.DataAccess.UserManagerDataOperation.GetUserByUserName(userName);
                resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsultedByUserName.ObjectSaved);
                resultToReturn.CodeEvent = userConsultedByUserName.CodeEvent;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(resultToReturn.ObjectSaved.IdUser, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        public GenericClass<List<PlayerInfo>> GetPlayersInformation(int idUserConsulting)
        {
            GenericClass<List<PlayerInfo>> resultToReturn = new GenericClass<List<PlayerInfo>>();
            try
            {
                GenericClassServer<List<PlayerInfo>> bestPlayers = Data.DataAccess.UserManagerDataOperation.GetBestPlayersPoints();
                resultToReturn.ObjectSaved = bestPlayers.ObjectSaved;
                resultToReturn.CodeEvent = bestPlayers.CodeEvent;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserConsulting, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserConsulting, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserConsulting, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUserConsulting, ChannelAdministrator.GENERIC_COMMUNICATION_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

    }
}
