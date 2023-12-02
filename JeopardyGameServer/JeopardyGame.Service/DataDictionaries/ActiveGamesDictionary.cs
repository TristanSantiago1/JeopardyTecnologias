using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class ActiveGamesDictionary
    {

        private static Dictionary<int, List<PlayerPlaying>> gamesBeenPlayingDictionary = new Dictionary<int, List<PlayerPlaying>>();


        public static void RegisterNewGameIndDictionary(int roomCode, List<PlayerPlaying> newActiveGame)
        {

            if (!gamesBeenPlayingDictionary.ContainsKey(roomCode))
            {
                gamesBeenPlayingDictionary.Add(roomCode, newActiveGame);
            }
        }

        public static List<PlayerPlaying> GetSpecificActiveGame(int roomCode)
        {
            foreach (var item in gamesBeenPlayingDictionary)
            {
                if (item.Key == roomCode)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryOfGameFromDictionary(int roomCode)
        {
            if (gamesBeenPlayingDictionary.ContainsKey(roomCode))
            {
                gamesBeenPlayingDictionary.Remove(roomCode);
            }
        }

        public static Dictionary<int, List<PlayerPlaying>> GetActiveGamesList()
        {
            return gamesBeenPlayingDictionary;
        }  

        public class PlayerPlaying
        {

            public int IdUser { get; set; }
            public int IdPlayer { get; set; }
            public String UserName { get; set; }
            public int NumberOfPlayerInGame { get; set; }
            public int SideTeam { get; set; }
            public int TurnOfPlayer { get; set; }
            public int FinalPoints { get; set; }
            public bool DidBet { get; set; }
            public bool DidAnswerLastQuestion { get; set; }
            public int IdAvatar { get; set; }
            public OperationContext gameCallbackChannel { get; set; }
            
        }


    }
}
