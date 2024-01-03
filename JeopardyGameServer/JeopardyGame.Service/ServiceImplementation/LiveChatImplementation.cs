using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.ServiceModel;
using static JeopardyGame.Service.DataDictionaries.ChatsDictionary;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class LiveChatImplementation : ILiveChat
    {
        private readonly int NULL_INT_VALUE = 0;
        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            GenericClass<bool> resultToReturn = new GenericClass<bool>();
            try
            {
                if (roomCode == NULL_INT_VALUE || idAdmin == NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                RegistryNewHistoricalOfMessages(roomCode, idAdmin);
                RegistryNewChatCallBack(idAdmin, roomCode, OperationContext.Current);
                resultToReturn.ObjectSaved = true;
                resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

        private void RegistryNewHistoricalOfMessages(int roomCode, int idAdmin)
        {
            HistoricalOfAllMessages messagesHistorical = new HistoricalOfAllMessages();
            messagesHistorical.idAdmin = idAdmin;
            ChatsDictionary.RegisterNewChatInDictionary(roomCode, messagesHistorical);
        }

        private void RegistryNewChatCallBack(int idAdmin, int roomCode, OperationContext context)
        {
            SpecificChannelCallBackChat specificChannelChat = new SpecificChannelCallBackChat();
            specificChannelChat.idUser = idAdmin;
            specificChannelChat.communicationChannelChat = context;
            ChannelsCallBackInActiveChats activeChannelsCallBackChat = new ChannelsCallBackInActiveChats();
            activeChannelsCallBackChat.idAdmin = idAdmin;
            activeChannelsCallBackChat.listOfChannelsCallBack.Add(specificChannelChat);
            ChatsDictionary.RegisterNewChannelCallbackChat(roomCode, activeChannelsCallBackChat);
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
           GenericClass<List<MessageChat>> resultToReturn = new GenericClass<List<MessageChat>>();
            try
            {
                if (roomCode <= NULL_INT_VALUE)
                {
                    return NullParametersHandler.HandleNullParametersService(resultToReturn);
                }
                HistoricalOfAllMessages messagesHistorical = ChatsDictionary.GetActiveChat(roomCode);
                if (messagesHistorical != null)
                {
                    resultToReturn.ObjectSaved = messagesHistorical.listOfMessages;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    RegisterNewChannelInChatChannelStorage(roomCode, idUser);
                }
                else
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }

       

        private void RegisterNewChannelInChatChannelStorage(int roomCode, int idUser)
        {

            try
            {
                SpecificChannelCallBackChat channelForChat = new SpecificChannelCallBackChat();
                channelForChat.idUser = idUser;
                channelForChat.communicationChannelChat = OperationContext.Current;
                ChannelsCallBackInActiveChats specificActiveInChannelChatStorage = ChatsDictionary.GetChannelCallBackChat(roomCode);
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
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        public int RenewLiveChatCallBack(int roomCode, int idUser)
        {
            int resultToReturn = ExceptionDictionary.UNSUCCESFULL_EVENT;
            try
            {
                if (roomCode != 0 && idUser != 0)
                {
                    ChatsDictionary.RenewLiveChatCallBack(roomCode, idUser, OperationContext.Current);
                    resultToReturn = ExceptionDictionary.SUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultToReturn;
        }
    }


    public partial class LiveChatOperationsImplementation : ILiveChatOperations
    {

        private readonly int NULL_INT_VALUE = 0;


        public void DeleteChat(int roomCode, int idUser)
        {
            HistoricalOfAllMessages messagesHistorical = ChatsDictionary.GetActiveChat(roomCode);
            if (roomCode != NULL_INT_VALUE && messagesHistorical != null && messagesHistorical.idAdmin == idUser)
            {
                ChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                DeleteChannelRegistries(roomCode);
            }
        }

        private void DeleteChannelRegistries(int roomCode)
        {
            if (roomCode != NULL_INT_VALUE)
            {
                ChatsDictionary.RemoveRegistryOfChannelCallBakcChatFromDictionary(roomCode);
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
                    HistoricalOfAllMessages messagesHistorical = ChatsDictionary.GetActiveChat(roomCode);
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
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

        private void NotifyUser(int roomCode, MessageChat messageToSend, bool success, int idSender)
        {
            if (success)
            {
                var chatChannel = ChatsDictionary.GetChannelCallBackChat(roomCode);
                foreach (var item in chatChannel.listOfChannelsCallBack)
                {
                    var channel = item.communicationChannelChat.GetCallbackChannel<ILiveChatCallBack>();
                    if (item.idUser != idSender)
                    {
                        try
                        {
                            GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                            resultToReturn.ObjectSaved = messageToSend;
                            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                            channel.ReceiveMessage(resultToReturn);
                        }
                        catch (CommunicationObjectFaultedException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (TimeoutException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (CommunicationException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                        catch (InvalidOperationException ex)
                        {
                            ChannelAdministrator.HandleCommunicationIssue(item.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                            ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                    }
                }
            }
        }
    }

}
