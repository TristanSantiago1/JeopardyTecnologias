using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class LobbyCodeAuthentication : ILobbyCodeAuthentication
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int ROOMCODE_IS_FULL = -1;
        private readonly int ROOMCODE_DOES_NOT_EXIST = 0;
        private readonly int SUCCESFUL = 1;
        private readonly int MAX_PLAYERS = 4;
        private static Object lockObject = new Object();


        public GenericClass<int> VerifyRoomCodeExist(int roomCode, int idUser)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            lock (lockObject)
            {
                try
                {
                    if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE)
                    {
                        return NullParametersHandler.HandleNullParametersService(resultToReturn);
                    }
                    var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        if (lobby.listOfPlayerInLobby.Count < MAX_PLAYERS)
                        {
                            resultToReturn.ObjectSaved = SUCCESFUL;
                            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultToReturn.ObjectSaved = ROOMCODE_IS_FULL;
                            resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                        }
                    }
                    else
                    {
                        resultToReturn.ObjectSaved = ROOMCODE_DOES_NOT_EXIST;
                        resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
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
            }
            return resultToReturn;
        }

    }
}
