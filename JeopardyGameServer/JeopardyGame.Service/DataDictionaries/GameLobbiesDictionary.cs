using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class GameLobbiesDictionary
    {        
        private static Dictionary<int, Lobby> activeLobbiesDictionary = new Dictionary<int, Lobby>();
        public static void RegisterNewLobby(int roomCode, Lobby newLobby)
        {
            if (!activeLobbiesDictionary.ContainsKey(roomCode))
            {
                activeLobbiesDictionary.Add(roomCode, newLobby);
            }
        }
        public static Lobby GetSpecificActiveLobby(int roomCode)
        {
            foreach (var item in activeLobbiesDictionary)
            {
                if (item.Key == roomCode)
                {
                    return item.Value;
                }
            }
            return null;
        }
        public static void RemoveRegistryOfLobbyFromDictionary(int roomCode)
        {
            if (activeLobbiesDictionary.ContainsKey(roomCode))
            {
                activeLobbiesDictionary.Remove(roomCode);
            }
        }
        public static Dictionary<int, Lobby> GetActiveLobbiesList()
        {
            return activeLobbiesDictionary;
        }

    }
    public class Lobby
    {
        public int idAdmin { get; set; }
        public List<PlayerOnLobbyList> listOfPlayerInLobby { get; set; }

        public Lobby()
        {
            listOfPlayerInLobby = new List<PlayerOnLobbyList>();
        }
    }
    public class PlayerOnLobbyList()
    {
        public int idUser { get; set; }
        public int idPlayer { get; set; }
        public String userName { get; set; }
        public int numberOfPlayerInLobby { get; set; }
        public int sideTeam { get; set; }
        public OperationContext lobbyCommunicationChannelCallback { get; set;}        
    }
}
