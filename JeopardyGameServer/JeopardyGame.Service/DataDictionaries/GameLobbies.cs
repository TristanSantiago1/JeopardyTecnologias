using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public class GameLobbies
    {        
        private static Dictionary<int, Lobby> activeLobbies = new Dictionary<int, Lobby>();


        public static void RegisterNewLobby(int roomCode, Lobby newLobby)
        {

            if (!activeLobbies.ContainsKey(roomCode))
            {
                activeLobbies.Add(roomCode, newLobby);
            }
        }

        public static Lobby GetLobby(int roomCode)
        {
            foreach (var item in activeLobbies)
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
            if (activeLobbies.ContainsKey(roomCode))
            {
                activeLobbies.Remove(roomCode);
            }
        }

        public Dictionary<int, Lobby> GetActiveLobbiesList()
        {
            return activeLobbies;
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
        public String username { get; set; }
        public int numPlayer { get; set; }
        public int side { get; set; }
        public OperationContext comunicationChannelLobby { get; set;}        
    }

}
