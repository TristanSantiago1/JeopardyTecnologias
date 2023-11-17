using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public class Chats
    {
        private static Dictionary<int, MessagesHistoric> activeChats = new Dictionary<int, MessagesHistoric>();

        public static void RegisterNewChat(int roomCode, MessagesHistoric newChat)
        {
            if (!activeChats.ContainsKey(roomCode))
            {
                activeChats.Add(roomCode, newChat);
            }
        }

        public static MessagesHistoric GetChat(int roomCode)
        {
            foreach (var item in activeChats)
            {
                if (item.Key == roomCode)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryFromDictionary(int roomCode)
        {
            if (activeChats.ContainsKey(roomCode))
            {
                activeChats.Remove(roomCode);
            }
        }

        public static  Dictionary<int, MessagesHistoric> GetActiveChatList()
        {
            return activeChats;
        }

        private static Dictionary<int, ChatComunicationChannels> activeChatsChannels = new Dictionary<int, ChatComunicationChannels>();

        public static void RegisterNewChatChannel(int roomCode, ChatComunicationChannels newChannel)
        {
            if (!activeChatsChannels.ContainsKey(roomCode))
            {
                activeChatsChannels.Add(roomCode, newChannel);
            }
        }

        public static ChatComunicationChannels GetChatChannel(int roomCode)
        {
            foreach (var item in activeChatsChannels)
            {
                if (item.Key == roomCode)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryFromDictionaryChannel(int roomCode)
        {
            if (activeChatsChannels.ContainsKey(roomCode))
            {
                activeChatsChannels.Remove(roomCode);
            }
        }
    }

    public class MessagesHistoric
    {
        public int idAdmin { get; set; }
        public List<MessageChat> listOfMessages { get; set; }

        public MessagesHistoric()
        {
            listOfMessages = new List<MessageChat>();
        }
    }

    public class ChatComunicationChannels
    {
        public int idAdmin { get; set; }
        public List<ComunicationChannelChat> channelChats { get; set; }

        public ChatComunicationChannels()
        {
            channelChats = new List<ComunicationChannelChat>();
        }
    }


    public class ComunicationChannelChat
    {
        public int idUser { get; set; }
        public OperationContext comunicationChannelChat { get; set; }       
    }

}
