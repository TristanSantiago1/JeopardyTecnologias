using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class ChatsDictionary
    {
        private static Dictionary<int, HistoricalOfAllMessages> activeChats = new Dictionary<int, HistoricalOfAllMessages>();

        public static void RegisterNewChatInDictionary(int roomCode, HistoricalOfAllMessages newChat)
        {
            if (!activeChats.ContainsKey(roomCode))
            {
                activeChats.Add(roomCode, newChat);
            }
        }
        public static HistoricalOfAllMessages GetActiveChat(int roomCode)
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
        public static void RemoveRegistryOfActiveChatFromDictionary(int roomCode)
        {
            if (activeChats.ContainsKey(roomCode))
            {
                activeChats.Remove(roomCode);
            }
        }
        public static  Dictionary<int, HistoricalOfAllMessages> GetActiveChatList()
        {
            return activeChats;
        }
        private static Dictionary<int, ChannelsCallBackInActiveChats> channelsCallBackDictionary = new Dictionary<int, ChannelsCallBackInActiveChats>();

        public static void RegisterNewChannelCallbackChat(int roomCode, ChannelsCallBackInActiveChats newChannel)
        {
            if (!channelsCallBackDictionary.ContainsKey(roomCode))
            {
                channelsCallBackDictionary.Add(roomCode, newChannel);
            }
        }
        public static ChannelsCallBackInActiveChats GetChannelCallBackChat(int roomCode)
        {
            foreach (var item in channelsCallBackDictionary)
            {
                if (item.Key == roomCode)
                {
                    return item.Value;
                }
            }
            return null;
        }
        public static void RemoveRegistryOfChannelCallBakcChatFromDictionary(int roomCode)
        {
            if (channelsCallBackDictionary.ContainsKey(roomCode))
            {
                channelsCallBackDictionary.Remove(roomCode);
            }
        }
    }
    public class HistoricalOfAllMessages
    {
        public int idAdmin { get; set; }
        public List<MessageChat> listOfMessages { get; set; }

        public HistoricalOfAllMessages()
        {
            listOfMessages = new List<MessageChat>();
        }
    }
    public class ChannelsCallBackInActiveChats
    {
        public int idAdmin { get; set; }
        public List<SpecificChannelCallBackChat> listOfChannelsCallBack { get; set; }

        public ChannelsCallBackInActiveChats()
        {
            listOfChannelsCallBack = new List<SpecificChannelCallBackChat>();
        }
    }
    public class SpecificChannelCallBackChat
    {
        public int idUser { get; set; }
        public OperationContext communicationChannelChat { get; set; }       
    }
}
