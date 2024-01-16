using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class LobbyChatsDictionary
    {
        private static Dictionary<int, HistoricalOfAllMessages> activeLobbyChatsDictionary = new Dictionary<int, HistoricalOfAllMessages>();

        public static void RegisterNewChatInDictionary(int roomCode, HistoricalOfAllMessages newChat)
        {
            if (roomCode != 0 && newChat != null && !activeLobbyChatsDictionary.ContainsKey(roomCode))
            {
                activeLobbyChatsDictionary.Add(roomCode, newChat);
            }
        }
        public static HistoricalOfAllMessages GetActiveChat(int roomCode)
        {
            if (roomCode != 0) 
            {
                foreach (var activeLobby in activeLobbyChatsDictionary)
                {
                    if (activeLobby.Key == roomCode)
                    {
                        return activeLobby.Value;
                    }
                }
            }
            return null;
        }
        public static void RemoveRegistryOfActiveChatFromDictionary(int roomCode)
        {            
            if (roomCode != 0 && activeLobbyChatsDictionary.ContainsKey(roomCode))
            {
                activeLobbyChatsDictionary.Remove(roomCode);
            }
        }


        public static  Dictionary<int, HistoricalOfAllMessages> GetActiveChatList()
        {
            return activeLobbyChatsDictionary;
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




        private static Dictionary<int, ChannelsCallBackInActiveChats> lobbyChatsCallBacksDictionary = new Dictionary<int, ChannelsCallBackInActiveChats>();

        public static void RegisterNewChannelCallbackChat(int roomCode, ChannelsCallBackInActiveChats newChannel)
        {
            if (roomCode != 0 && newChannel != null && !lobbyChatsCallBacksDictionary.ContainsKey(roomCode))
            {
                lobbyChatsCallBacksDictionary.Add(roomCode, newChannel);
            }
        }
        public static ChannelsCallBackInActiveChats GetChannelCallBackChat(int roomCode)
        {
            if (roomCode != 0)
            {
                foreach (var lobbyCallBack in lobbyChatsCallBacksDictionary)
                {
                    if (lobbyCallBack.Key == roomCode)
                    {
                        return lobbyCallBack.Value;
                    }
                }
            }
            return null;
        }
        public static void RemoveRegistryOfChannelCallBakcChatFromDictionary(int roomCode)
        {
            if (roomCode != 0 && lobbyChatsCallBacksDictionary.ContainsKey(roomCode))
            {
                lobbyChatsCallBacksDictionary.Remove(roomCode);
            }
        }

        public static void RenewLiveChatCallBack(int roomCode, int idUser, OperationContext channel)
        {
            if (roomCode != 0 && idUser != 0 && channel != null && lobbyChatsCallBacksDictionary.ContainsKey(roomCode))
            {
                var listChannels = lobbyChatsCallBacksDictionary[roomCode];
                if(listChannels != null && listChannels.listOfChannelsCallBack.Exists(user => user.idUser == idUser))
                {
                    var chatOfPlayer = listChannels.listOfChannelsCallBack.Find(user => user.idUser == idUser);
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
