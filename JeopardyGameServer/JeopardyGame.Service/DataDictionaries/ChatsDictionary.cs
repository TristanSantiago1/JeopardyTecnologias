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
            if (roomCode != 0 && newChat != null && !activeChats.ContainsKey(roomCode))
            {
                activeChats.Add(roomCode, newChat);
            }
        }
        public static HistoricalOfAllMessages GetActiveChat(int roomCode)
        {
            if (roomCode != 0) 
            {
                foreach (var item in activeChats)
                {
                    if (item.Key == roomCode)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }
        public static void RemoveRegistryOfActiveChatFromDictionary(int roomCode)
        {            
            if (roomCode != 0 && activeChats.ContainsKey(roomCode))
            {
                activeChats.Remove(roomCode);
            }
        }


        public static  Dictionary<int, HistoricalOfAllMessages> GetActiveChatList()
        {
            return activeChats;
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




        private static Dictionary<int, ChannelsCallBackInActiveChats> channelsCallBackDictionary = new Dictionary<int, ChannelsCallBackInActiveChats>();

        public static void RegisterNewChannelCallbackChat(int roomCode, ChannelsCallBackInActiveChats newChannel)
        {
            if (roomCode != 0 && newChannel != null && !channelsCallBackDictionary.ContainsKey(roomCode))
            {
                channelsCallBackDictionary.Add(roomCode, newChannel);
            }
        }
        public static ChannelsCallBackInActiveChats GetChannelCallBackChat(int roomCode)
        {
            if (roomCode != 0)
            {
                foreach (var item in channelsCallBackDictionary)
                {
                    if (item.Key == roomCode)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }
        public static void RemoveRegistryOfChannelCallBakcChatFromDictionary(int roomCode)
        {
            if (roomCode != 0 && channelsCallBackDictionary.ContainsKey(roomCode))
            {
                channelsCallBackDictionary.Remove(roomCode);
            }
        }

        public static void RenewLiveChatCallBack(int roomCode, int idUser, OperationContext channel)
        {
            if (roomCode != 0 && idUser != 0 && channel != null && channelsCallBackDictionary.ContainsKey(roomCode))
            {
                var listChannels = channelsCallBackDictionary[roomCode];
                if(listChannels != null && listChannels.listOfChannelsCallBack.Exists(pl => pl.idUser == idUser))
                {
                    var chatOfPlayer = listChannels.listOfChannelsCallBack.Find(pl => pl.idUser == idUser);
                    if(chatOfPlayer != null)
                    {
                        chatOfPlayer.communicationChannelChat = channel;
                    }
                }
            }      
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
