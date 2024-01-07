using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class ActiveGamesDictionary
    {
        private static Dictionary<int, List<PlayerPlayingInGame>> gamesBeenPlayingDictionary = new Dictionary<int, List<PlayerPlayingInGame>>();
        public static void RegisterNewGameIndDictionary(int roomCode, List<PlayerPlayingInGame> newActiveGame)
        {
            if (roomCode != 0 && newActiveGame != null && !gamesBeenPlayingDictionary.ContainsKey(roomCode)) 
            {                
                gamesBeenPlayingDictionary.Add(roomCode, newActiveGame);               
            }
        }

        public static List<PlayerPlayingInGame> GetSpecificActiveGame(int roomCode)
        {
            if (roomCode != 0)
            {
                foreach (var item in gamesBeenPlayingDictionary)
                {
                    if (item.Key == roomCode)
                    {
                        return item.Value;
                    }
                }
            }            
            return null;
        }

        public static void RemoveRegistryOfGameFromDictionary(int roomCode)
        {
            if (roomCode != 0 && gamesBeenPlayingDictionary.ContainsKey(roomCode)) 
            {
                gamesBeenPlayingDictionary.Remove(roomCode);                
            }
        }

        public static void RenewGameCallBack(int roomCode, int idUser, OperationContext channel)
        {
            if (roomCode != 0 && idUser != 0 && channel != null && gamesBeenPlayingDictionary.ContainsKey(roomCode))
            {
                var listOfPlayer = gamesBeenPlayingDictionary[roomCode];
                if(listOfPlayer.Exists(pl => pl.IdUser == idUser))
                {
                    var player = listOfPlayer.Find(pl => pl.IdUser == idUser);
                    if(player != null)
                    {
                        player.gameCallbackChannel = channel;
                    }
                }
            }
        }

        public static Dictionary<int, List<PlayerPlayingInGame>> GetActiveGamesList()
        {
            return gamesBeenPlayingDictionary;
        }  

        public static void RearrangeTurnsForTeams(int roomCode)
        {
            if (roomCode != 0)
            {
                foreach (var item in gamesBeenPlayingDictionary)
                {
                    if (item.Key == roomCode)
                    {
                        var team1 = item.Value.Where(pl => pl.SideTeam == 1).ToList();
                        var team2 = item.Value.Where(pl => pl.SideTeam == 2).ToList();
                        team1[0].TurnOfPlayer = 1;
                        team1[1].TurnOfPlayer = 3;
                        team2[0].TurnOfPlayer = 2;
                        team2[1].TurnOfPlayer = 4;
                    }
                }
            }
        }

        public class PlayerPlayingInGame
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
