using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.ServiceModel;
using static JeopardyGame.Service.DataDictionaries.LobbyChatsDictionary;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class LiveChatServiceImplementation : ILiveChatService
    {
        private readonly int NULL_INT_VALUE = 0;
        private static readonly Object objectLock = new();


        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            GenericClass<bool> resultToReturn = new GenericClass<bool>();
            lock (objectLock)
            {
                try
                {
                    if (roomCode == NULL_INT_VALUE || idAdmin == NULL_INT_VALUE)
                    {
                        return NullParametersHandler.HandleNullParametersService(resultToReturn);
                    }
                    RegistryNewHistoricalOfMessages(roomCode, idAdmin);
                    RegistryNewChatCallBack(idAdmin, roomCode, OperationContext.Current);
                    resultToReturn.ObjectSaved = true;
                    resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }

        private void RegistryNewHistoricalOfMessages(int roomCode, int idAdmin)
        {
            HistoricalOfAllMessages messagesHistorical = new HistoricalOfAllMessages();
            messagesHistorical.idAdmin = idAdmin;
            LobbyChatsDictionary.RegisterNewChatInDictionary(roomCode, messagesHistorical);
        }

        private void RegistryNewChatCallBack(int idAdmin, int roomCode, OperationContext context)
        {
            SpecificChannelCallBackChat specificChannelChat = new SpecificChannelCallBackChat();
            specificChannelChat.idUser = idAdmin;
            specificChannelChat.communicationChannelChat = context;
            ChannelsCallBackInActiveChats activeChannelsCallBackChat = new ChannelsCallBackInActiveChats();
            activeChannelsCallBackChat.idAdmin = idAdmin;
            activeChannelsCallBackChat.listOfChannelsCallBack.Add(specificChannelChat);
            LobbyChatsDictionary.RegisterNewChannelCallbackChat(roomCode, activeChannelsCallBackChat);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
            lock (objectLock)
            {
                GenericClass<List<MessageChat>> resultToReturn = new GenericClass<List<MessageChat>>();
                try
                {
                    if (roomCode <= NULL_INT_VALUE)
                    {
                        return NullParametersHandler.HandleNullParametersService(resultToReturn);
                    }
                    HistoricalOfAllMessages messagesHistorical = LobbyChatsDictionary.GetActiveChat(roomCode);
                    if (messagesHistorical != null)
                    {
                        resultToReturn.ObjectSaved = messagesHistorical.listOfMessages;
                        resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        RegisterNewChannelInChatChannelStorage(roomCode, idUser);
                    }
                    else
                    {
                        resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }
        }

       

        private void RegisterNewChannelInChatChannelStorage(int roomCode, int idUser)
        {

            try
            {
                SpecificChannelCallBackChat channelForChat = new SpecificChannelCallBackChat();
                channelForChat.idUser = idUser;
                channelForChat.communicationChannelChat = OperationContext.Current;
                ChannelsCallBackInActiveChats specificActiveInChannelChatStorage = LobbyChatsDictionary.GetChannelCallBackChat(roomCode);
                bool isNotSaved = true;
                foreach (var item in specificActiveInChannelChatStorage.listOfChannelsCallBack)
                {
                    if (item.idUser == idUser)
                    {
                        isNotSaved = false;
                        break;
                    }
                }
                if (isNotSaved)
                {
                    specificActiveInChannelChatStorage.listOfChannelsCallBack.Add(channelForChat);
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
        }

        public int RenewLiveChatCallBack(int roomCode, int idUser)
        {
            lock (objectLock)
            {
                int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                try
                {
                    if (roomCode != 0 && idUser != 0)
                    {
                        LobbyChatsDictionary.RenewLiveChatCallBack(roomCode, idUser, OperationContext.Current);
                        resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                return resultToReturn;
            }
        }
    }


    public partial class LiveChatOperationsImplementation : ILiveChatOperations
    {

        private readonly int NULL_INT_VALUE = 0;

        private static readonly Object objectLock = new();

        public void DeleteChat(int roomCode, int idUser)
        {
            lock (objectLock)
            {
                HistoricalOfAllMessages messagesHistorical = LobbyChatsDictionary.GetActiveChat(roomCode);
                if (roomCode != NULL_INT_VALUE && messagesHistorical != null && messagesHistorical.idAdmin == idUser)
                {
                    LobbyChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                    DeleteChannelRegistries(roomCode);
                }
            }
        }

        private void DeleteChannelRegistries(int roomCode)
        {
            if (roomCode != NULL_INT_VALUE)
            {
                LobbyChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
            }
        }

        public void SendMessage(int idUser, int roomCode, string userName, string messageToSend)
        {
            try
            {
                if (idUser <= NULL_INT_VALUE || roomCode <= NULL_INT_VALUE || string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(messageToSend))
                {
                    NotifyUser(roomCode, new MessageChat(), false, idUser);
                }
                else
                {
                    HistoricalOfAllMessages messagesHistorical = LobbyChatsDictionary.GetActiveChat(roomCode);
                    if (messagesHistorical != null)
                    {
                        MessageChat messageInTheChat = new MessageChat();
                        messageInTheChat.IdUser = idUser;
                        messageInTheChat.UserName = userName;
                        messageInTheChat.MessageToSend = messageToSend;
                        messagesHistorical.listOfMessages.Add(messageInTheChat);
                        NotifyUser(roomCode, messageInTheChat, true, idUser);
                    }
                    else
                    {
                        NotifyUser(roomCode, new MessageChat(), false, idUser);
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyUser(int roomCode, MessageChat messageToSend, bool success, int idSender)
        {
            if (success)
            {
                var chatChannel = LobbyChatsDictionary.GetChannelCallBackChat(roomCode);
                foreach (var item in chatChannel.listOfChannelsCallBack.Where(chat => chat.idUser != idSender))
                {
                    try
                    {
                        GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                        resultToReturn.ObjectSaved = messageToSend;
                        resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        item.communicationChannelChat.GetCallbackChannel<ILiveChatCallBack>().ReceiveMessage(resultToReturn);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    
                }
            }
        }
    }

}
