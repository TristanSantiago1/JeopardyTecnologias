using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
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
    public partial class LiveChatImplementation : ILiveChat
    {

        private readonly int NULL_INT_VALUE = 0;

        public GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin)
        {
            GenericClass<bool> resultToReturn = new GenericClass<bool>();
            if (roomCode == NULL_INT_VALUE || idAdmin == NULL_INT_VALUE) 
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            HistoricalOfAllMessages messagesHistorical = new HistoricalOfAllMessages();
            messagesHistorical.idAdmin = idAdmin; 
            ChatsDictionary.RegisterNewChatInDictionary(roomCode, messagesHistorical);   
            SpecificChannelCallBackChat channelChat = new SpecificChannelCallBackChat();
            channelChat.idUser = idAdmin;
            channelChat.communicationChannelChat = OperationContext.Current;
            ChannelsCallBackInActiveChats activeChannelsCallBackChat = new ChannelsCallBackInActiveChats();
            activeChannelsCallBackChat.idAdmin = idAdmin;
            activeChannelsCallBackChat.listOfChannelsCallBack.Add(channelChat);
            ChatsDictionary.RegisterNewChannelCallbackChat(roomCode,activeChannelsCallBackChat);
            resultToReturn.ObjectSaved = true;
            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
            return resultToReturn;
        }

        public GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser)
        {
           GenericClass<List<MessageChat>> resultToReturn = new GenericClass<List<MessageChat>>();
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
            return resultToReturn;
        }

        public void DeleteChat(int roomCode, int idUser)
        {
            HistoricalOfAllMessages messagesHistorical = ChatsDictionary.GetActiveChat(roomCode);
            if (roomCode != NULL_INT_VALUE && messagesHistorical != null && messagesHistorical.idAdmin == idUser)
            {
                ChatsDictionary.RemoveRegistryOfActiveChatFromDictionary(roomCode);
                DeleteChannelRegistries(roomCode);
            }
        }

        private void RegisterNewChannelInChatChannelStorage(int roomCode, int idUser)
        {
            SpecificChannelCallBackChat channelChat = new SpecificChannelCallBackChat();
            channelChat.idUser = idUser;
            channelChat.communicationChannelChat = OperationContext.Current;            
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
                specificActiveInChannelChatStorage.listOfChannelsCallBack.Add(channelChat);
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
            if (idUser <=  NULL_INT_VALUE || roomCode <= NULL_INT_VALUE || string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(messageToSend))
            {
                NotifyUser(roomCode, new MessageChat(), false, idUser);
            }
            else
            {
                HistoricalOfAllMessages messagesHistorical = ChatsDictionary.GetActiveChat(roomCode);
                if (messagesHistorical != null)
                {
                    MessageChat messageChat = new MessageChat();
                    messageChat.IdUser = idUser;
                    messageChat.UserName = userName;
                    messageChat.MessageToSend = messageToSend;
                    messagesHistorical.listOfMessages.Add(messageChat);
                    NotifyUser(roomCode, messageChat, true, idUser);
                }
                else
                {
                    NotifyUser(roomCode, new MessageChat(), false, idUser);
                }
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
                        GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                        resultToReturn.ObjectSaved = messageToSend;
                        resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        channel.ReceiveMessage(resultToReturn);
                    }
                }
            }
        }


    }
}
