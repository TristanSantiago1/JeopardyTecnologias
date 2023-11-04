using JeopardyGame.Data;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Security.Policy;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class LobbyActionsImple : ILobbyActions
    {
        private const int INVALID_PARAMETRES = -1;
        private const int IS_NULL = 0;
        private const int SUCCESFUL = 1;
        public int CreateNewLobby(int roomCode, int idUser)
        {
            if (roomCode == 0 || idUser == 0) { return INVALID_PARAMETRES; }
            var lobby = GameLobbies.GetLobby(roomCode);
            if (lobby == null)
            {
                ConsultInfoImple consultInfoImple = new ConsultInfoImple();
                UserPOJO userPojo = consultInfoImple.ConsultUserById(idUser);
                PlayerPOJO playerPojo = consultInfoImple.ConsultPlayerByIdUser(idUser);
                PlayerOnLobbyList leader = new PlayerOnLobbyList();
                leader.idUser = idUser;
                leader.idPlayer = playerPojo.IdPlayer;
                leader.username = userPojo.UserName;
                leader.numPlayer = 1;
                leader.side = 1;
                leader.comunicationChannelLobby = OperationContext.Current;
                Lobby newLobby = new Lobby();
                newLobby.idAdmin = idUser;
                newLobby.listOfPlayerInLobby.Add(leader);
                GameLobbies.RegisterNewLobby(roomCode,newLobby);
                return SUCCESFUL;
            }
            return INVALID_PARAMETRES;
        } 
        
        public int joinLobby(int roomCode, int idUser)
        {
            int MAX_PLAYERS = 4;
            if (roomCode == 0 || idUser == 0) { return INVALID_PARAMETRES; }
            var lobby = GameLobbies.GetLobby(roomCode);
            if (lobby != null)
            {
                if (lobby.listOfPlayerInLobby.Count < MAX_PLAYERS)
                {
                    ConsultInfoImple consultInfoImple = new ConsultInfoImple();
                    UserPOJO userPojo = consultInfoImple.ConsultUserById(idUser);
                    PlayerPOJO playerPojo = consultInfoImple.ConsultPlayerByIdUser(idUser);
                    PlayerOnLobbyList playerJoining = new PlayerOnLobbyList();
                    playerJoining.idUser = idUser;
                    playerJoining.idPlayer = playerPojo.IdPlayer;
                    playerJoining.username = userPojo.UserName;
                    playerJoining.numPlayer = GetNumOfPlayer(lobby);
                    playerJoining.side = 1;
                    playerJoining.comunicationChannelLobby = OperationContext.Current;                    
                    lobby.listOfPlayerInLobby.Add(playerJoining);
                    return SUCCESFUL;
                }
                return IS_NULL;                
            }
            return INVALID_PARAMETRES;
        }

        public void NotifyPlayerInlobby(int roomCode, int idUser)
        {
            if (roomCode != 0 || idUser != 0)
            {
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUser)
                        {
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUser, lobby);
                            break;
                        }
                    }
                }
            }
        }

        public List<PlayerInLobby> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            if (roomCode != 0 && idUserRequesting != 0)
            {               
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    List <PlayerInLobby> playerInLobbies = new List <PlayerInLobby>();
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        PlayerInLobby playerIn = new();
                        playerIn.IdUser = item.idUser;
                        playerIn.IdPlayer = item.idPlayer;
                        playerIn.UserName = item.username;
                        playerIn.NumPlayers = item.numPlayer;
                        playerIn.Side = item.side;
                        playerInLobbies.Add(playerIn);                        
                    }
                    return playerInLobbies;
                }
            }
            return null;
        }

        public void leaveLobby(int roomCode, int idUser)
        {            
            if (roomCode != 0 && idUser != 0)
            {
                int idPlayer = 0, numPlayer = 0;
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUser)
                        {
                            idPlayer = item.idPlayer;
                            numPlayer = item.numPlayer;
                            lobby.listOfPlayerInLobby.Remove(item);
                            RearrangePositions(lobby, item.numPlayer);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUser, lobby);
                            break;
                        }
                    }                                                                       
                }
            }           
        }

        private int GetNumOfPlayer(Lobby lobby)
        {
            int position = lobby.listOfPlayerInLobby.Count + 1;
            return position;
        }

        private void NotifyPlayerJoiningOrLeavingLobby(int roomCode, int idUser, Lobby lobby)
        {
            List<PlayerInLobby> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                var channel = item.comunicationChannelLobby.GetCallbackChannel<ILobbyActionsCallback>();
                if (channel != null && idUser != item.idUser)
                {
                    channel.UpdateJoinedPlayerResponse(playersLobby);
                }
            }            
        }   

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int side)
        {            
            if (roomCode != 0 && idUserToChangeTeam != 0 && side != 0)
            {                
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUserToChangeTeam)
                        {
                            item.side = side;
                            NotifyPlayerChangedOfSide(roomCode, idUserToChangeTeam, lobby);
                            break;
                        }
                    }
                }
            }
        }
        private void NotifyPlayerChangedOfSide(int roomCode, int idUser, Lobby lobby)
        {
            List<PlayerInLobby> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                var channel = item.comunicationChannelLobby.GetCallbackChannel<ILobbyActionsCallback>();
                if (channel != null && lobby.idAdmin != item.idUser)
                {
                    channel.UpdateTeamSide(playersLobby);
                }
            }
        }

        public void DissolveLobby(int roomCode, int idUser)
        {
            if (roomCode != 0 && idUser != 0)
            {
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUser && item.numPlayer  == 1)
                        {
                           lobby.listOfPlayerInLobby.Remove(item);
                           NotifyClosingLobby(lobby);
                            break;
                        }
                    }
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        lobby.listOfPlayerInLobby.Remove(item);
                    }
                }
            }
        }

        private void NotifyClosingLobby(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                var channel = item.comunicationChannelLobby.GetCallbackChannel<ILobbyActionsCallback>();
                if (channel != null )
                {
                    channel.DissolvingLobby();
                }
            }
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUserToEliminate)
        {
            if (roomCode != 0 && idUserToEliminate != 0)
            {
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUserToEliminate)
                        {
                            lobby.listOfPlayerInLobby.Remove(item);
                            RearrangePositions(lobby, item.numPlayer);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUserToEliminate, lobby);                            
                            item.comunicationChannelLobby.GetCallbackChannel<ILobbyActionsCallback>().UpdateJoinedPlayerResponse(GetAllCurrentPlayerInLobby(roomCode, idUserToEliminate));                           
                            break;
                        }
                    }
                }
            }
        } 

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            if (roomCode != 0 && idUser != 0)
            {
                var lobby = GameLobbies.GetLobby(roomCode);
                if (lobby != null)
                {
                    bool teamUp = true;
                    if(lobby.listOfPlayerInLobby.Count == 4 && wannaTeam)
                    {
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {
                            if (item.side != 1)
                            {
                                teamUp = false;
                                break;
                            }                           
                        }
                       
                    }
                    if (teamUp)
                    {
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {
                            if (item.idUser != idUser)
                            {
                                item.comunicationChannelLobby.GetCallbackChannel<ILobbyActionsCallback>().MakeTeamsResponse(teamUp);
                            }
                        }
                    }
                }
            }
        }

        private void RearrangePositions(Lobby lobby, int eliminatedPosition)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                if (item.numPlayer > eliminatedPosition)
                {
                    item.numPlayer--;
                }
            }
        }

    }
}
