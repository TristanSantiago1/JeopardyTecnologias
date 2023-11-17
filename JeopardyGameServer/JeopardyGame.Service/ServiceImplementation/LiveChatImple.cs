using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class LiveChatImple : ILiveChat
    {
        public void CreateChatForLobby(int roomCode, int idAdmin)
        {
            MessagesHistoric messagesHistoric = new MessagesHistoric();
            messagesHistoric.idAdmin = idAdmin; 
            Chats.RegisterNewChat(roomCode, messagesHistoric);   
            ComunicationChannelChat channelChat = new ComunicationChannelChat();
            channelChat.idUser = idAdmin;
            channelChat.comunicationChannelChat = OperationContext.Current;
            ChatComunicationChannels chatComunicationChannels = new ChatComunicationChannels();
            chatComunicationChannels.idAdmin = idAdmin;
            chatComunicationChannels.channelChats.Add(channelChat);
            Chats.RegisterNewChatChannel(roomCode,chatComunicationChannels);
        }
        public GenericClass<List<MessageChat>> GetAllMessages(int room, int idUser)
        {
           GenericClass<List<MessageChat>> resultToReturn = new GenericClass<List<MessageChat>>();
           if (room <= 0){ return NullParametersHandler.HandleNullParametersService(resultToReturn); }
            MessagesHistoric messagesHistoric = new MessagesHistoric();
            messagesHistoric = Chats.GetChat(room);
            if (messagesHistoric != null)
            {
                resultToReturn.ObjectSaved = messagesHistoric.listOfMessages;
                resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                RegisterChannel(room, idUser);
            }
            else
            {
                resultToReturn.CodeEvent = ExceptionDiccionary.UNSUCCESFULL_EVENT;
            }
            return resultToReturn;
        }

        public void DeleteChat(int roomCode, int idUser)
        {
            if(roomCode != 0 && idUser == Chats.GetChat(roomCode).idAdmin)
            {
                Chats.RemoveRegistryFromDictionary(roomCode);
            }
        }

        private void RegisterChannel(int roomCode, int idUser)
        {
            ComunicationChannelChat channelChat = new ComunicationChannelChat();
            channelChat.idUser = idUser;
            channelChat.comunicationChannelChat = OperationContext.Current;            
            ChatComunicationChannels chatComunicationChannels = Chats.GetChatChannel(roomCode);
            bool save = true;
            foreach (var item in chatComunicationChannels.channelChats)
            {
                if (item.idUser == idUser)
                {
                    save = false;
                }
            }
            if (save)
            {
                chatComunicationChannels.channelChats.Add(channelChat);
            }                      
        }

        public void DelteChannel(int roomCode, int idUser)
        {           
            if (roomCode != 0)
            {
                Chats.RemoveRegistryFromDictionary(roomCode);   
            }         
        }

        public void SendMessage(int idUser, int room, string userName, string message)
        {
            if (idUser <= 0 || room <= 0 || string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(message))
            {
                NotifyUser(room, new MessageChat(), false, idUser);
            }
            else
            {                
                MessagesHistoric messagesHistoric = new MessagesHistoric();
                messagesHistoric = Chats.GetChat(room);
                if (messagesHistoric != null)
                {
                    MessageChat messageChat = new MessageChat();
                    messageChat.IdUser = idUser;
                    messageChat.UserName = userName;
                    messageChat.Message = message;
                    messagesHistoric.listOfMessages.Add(messageChat);
                    NotifyUser(room, messageChat, true, idUser);
                }
                else
                {
                    NotifyUser(room, new MessageChat(), false, idUser);
                }
            }
        }

        private void NotifyUser(int roomCode, MessageChat messageToSend, bool succes, int idSender)
        {
            if (succes)
            {
                var chatChannel = Chats.GetChatChannel(roomCode);
                foreach (var item in chatChannel.channelChats)
                {
                    var channel = item.comunicationChannelChat.GetCallbackChannel<ILiveChatCallBack>();
                    if (item.idUser != idSender)
                    {
                        GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                        resultToReturn.ObjectSaved = messageToSend;
                        resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                        channel.ReciveMessage(resultToReturn);
                    }
                }
            }
            else
            {
                
            }

        }


    }
}
