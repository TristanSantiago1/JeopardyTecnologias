using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
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
    internal class LobbyActionsImplementation : ILobbyActions
    {
        private readonly int NULL_INT_VALUE = 0;
        private readonly int ROOMCODE_IS_FULL = -2;
        private readonly int ROOMCODE_ALREADY_EXIST = -1;
        private readonly int ROOMCODE_DOES_NOT_EXIST= 0;        
        private readonly int SUCCESFUL = 1;
        private readonly int LEADER_POSITION_IN_LOBBY = 1;
        private readonly int TEAM_LEFT_SIDE = 1;
        private readonly int TEAM_RIGTH_SIDE = 2;
        private readonly int MAX_PLAYERS = 4;
        public GenericClass<int> CreateNewLobby(int roomCode, int idUser)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE) 
            {
                NullParametersHandler.HandleNullParametersService(resultToReturn); 
            }
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            if (lobby == null)
            {
                ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                GenericClass<UserPOJO> userConsulted = consultInformation.ConsultUserById(idUser);
                if (userConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    GenericClass<PlayerPOJO> playerConsulted = consultInformation.ConsultPlayerByIdUser(idUser);
                    if (playerConsulted.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        PlayerOnLobbyList leader = new PlayerOnLobbyList();
                        leader.idUser = idUser;
                        leader.idPlayer = playerConsulted.ObjectSaved.IdPlayer;
                        leader.userName = userConsulted.ObjectSaved.UserName;
                        leader.numberOfPlayerInLobby = LEADER_POSITION_IN_LOBBY;
                        leader.sideTeam = TEAM_LEFT_SIDE;
                        leader.lobbyCommunicationChannelCallback = OperationContext.Current;
                        Lobby newLobby = new Lobby();
                        newLobby.idAdmin = idUser;
                        newLobby.listOfPlayerInLobby.Add(leader);
                        GameLobbiesDictionary.RegisterNewLobby(roomCode, newLobby);                      
                        resultToReturn.ObjectSaved = SUCCESFUL;
                        resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else 
                    { 
                        resultToReturn.CodeEvent = playerConsulted.CodeEvent; 
                    }
                }
                else
                { 
                    resultToReturn.CodeEvent = userConsulted.CodeEvent;
                }
            }
            else 
            { 
                resultToReturn.ObjectSaved = ROOMCODE_ALREADY_EXIST; 
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT; 
            }
            return resultToReturn;
        } 
        
        public GenericClass<int> JoinLobby(int roomCode, int idUser)
        {            
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (roomCode == NULL_INT_VALUE || idUser == NULL_INT_VALUE) 
            { 
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            if (lobby != null)
            {
                if (lobby.listOfPlayerInLobby.Count < MAX_PLAYERS)
                {
                    ConsultInformationImplementation consultInformation = new ConsultInformationImplementation();
                    GenericClass<UserPOJO> userPojo = consultInformation.ConsultUserById(idUser);
                    if (userPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT) 
                    {
                        GenericClass<PlayerPOJO> playerPojo = consultInformation.ConsultPlayerByIdUser(idUser);
                        if (playerPojo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            PlayerOnLobbyList playerJoining = new PlayerOnLobbyList();
                            playerJoining.idUser = idUser;
                            playerJoining.idPlayer = playerPojo.ObjectSaved.IdPlayer;
                            playerJoining.userName = userPojo.ObjectSaved.UserName;
                            playerJoining.numberOfPlayerInLobby = GetNumOfPlayer(lobby);
                            playerJoining.sideTeam = TEAM_LEFT_SIDE;
                            playerJoining.lobbyCommunicationChannelCallback = OperationContext.Current;
                            lobby.listOfPlayerInLobby.Add(playerJoining);
                            resultToReturn.ObjectSaved = SUCCESFUL;
                            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else 
                        {
                            resultToReturn.CodeEvent = playerPojo.CodeEvent; 
                        }
                    }
                    else 
                    { 
                        resultToReturn.CodeEvent = userPojo.CodeEvent;
                    }
                }
                else 
                { 
                    resultToReturn.ObjectSaved = ROOMCODE_IS_FULL; 
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT; 
                }             
            }
            else 
            {
                resultToReturn.ObjectSaved = ROOMCODE_DOES_NOT_EXIST;
                resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
            }
            return resultToReturn;
        }

        private int GetNumOfPlayer(Lobby lobby)
        {
            int position = lobby.listOfPlayerInLobby.Count + 1;
            return position;
        }

        public void NotifyPlayerInLobby(int roomCode, int idUser)
        {
            if (roomCode != NULL_INT_VALUE || idUser != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
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

        public GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUserRequesting)
        {
            GenericClass<List<PlayerInLobby>> resultToReturn = new GenericClass<List<PlayerInLobby>>();
            if (roomCode != NULL_INT_VALUE && idUserRequesting != NULL_INT_VALUE)
            {               
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    List <PlayerInLobby> playerInLobbies = new List <PlayerInLobby>();
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        PlayerInLobby playerIn = new();
                        playerIn.IdUser = item.idUser;
                        playerIn.IdPlayer = item.idPlayer;
                        playerIn.UserName = item.userName;
                        playerIn.NumberOfPlayerInLobby = item.numberOfPlayerInLobby;
                        playerIn.SideOfTeam = item.sideTeam;
                        playerInLobbies.Add(playerIn);                        
                    }
                    resultToReturn.ObjectSaved = playerInLobbies;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;                    
                }
                else 
                { 
                    resultToReturn.ObjectSaved = null; 
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT; 
                }
            }
            else 
            { 
                resultToReturn = NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            return resultToReturn;
        }

        public void LeaveLobby(int roomCode, int idUser)
        {            
            if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE && idUser != 0)
            {
                int idPlayer = NULL_INT_VALUE, numberOfPlayerInLobby = NULL_INT_VALUE;
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUser)
                        {
                            idPlayer = item.idPlayer;
                            numberOfPlayerInLobby = item.numberOfPlayerInLobby;
                            lobby.listOfPlayerInLobby.Remove(item);
                            RearrangePositions(lobby, item.numberOfPlayerInLobby);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUser, lobby);
                            break;
                        }
                    }                                                                       
                }
            }           
        }

     
        private void NotifyPlayerJoiningOrLeavingLobby(int roomCode, int idUser, Lobby lobby)
        {
            GenericClass<List<PlayerInLobby>> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);
            if (playersLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                    if (channel != null && idUser != item.idUser)
                    {
                        channel.UpdateJoinedPlayerResponse(playersLobby);
                    }
                }
            }                   
        }   

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {            
            if (roomCode != NULL_INT_VALUE && idUserToChangeTeam != NULL_INT_VALUE && newSideTeam != NULL_INT_VALUE)
            {                
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUserToChangeTeam)
                        {
                            item.sideTeam = newSideTeam;
                            NotifyPlayerChangedOfSide(roomCode, idUserToChangeTeam, lobby);
                            break;
                        }
                    }
                }
            }
        }
        private void NotifyPlayerChangedOfSide(int roomCode, int idUser, Lobby lobby)
        {
            GenericClass<List<PlayerInLobby>> playersLobby = GetAllCurrentPlayerInLobby(roomCode, idUser);
            if (playersLobby.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                foreach (var item in lobby.listOfPlayerInLobby)
                {
                    var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                    if (channel != null && lobby.idAdmin != item.idUser)
                    {
                        channel.UpdateTeamSide(playersLobby);
                    }
                }
            }          
        }

        public void DissolveLobby(int roomCode, int idUser)
        {
            if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUser && item.numberOfPlayerInLobby  == LEADER_POSITION_IN_LOBBY)
                        {
                           lobby.listOfPlayerInLobby.Remove(item);
                           NotifyClosingLobby(lobby);
                           foreach (var leftPlayer in lobby.listOfPlayerInLobby)
                           {
                               lobby.listOfPlayerInLobby.Remove(leftPlayer);
                           }
                           break;
                        }
                    }                   
                }
            }
        }

        private void NotifyClosingLobby(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                var channel = item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>();
                if (channel != null )
                {
                    channel.DissolvingLobby();
                }
            }
        }

        public void EliminatePlayerFromMatch(int roomCode, int idUserToEliminate)
        {
            if (roomCode != NULL_INT_VALUE && idUserToEliminate != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {
                    foreach (var item in lobby.listOfPlayerInLobby)
                    {
                        if (item.idUser == idUserToEliminate)
                        {
                            lobby.listOfPlayerInLobby.Remove(item);
                            RearrangePositions(lobby, item.numberOfPlayerInLobby);
                            NotifyPlayerJoiningOrLeavingLobby(roomCode, idUserToEliminate, lobby);                            
                            item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().UpdateJoinedPlayerResponse(GetAllCurrentPlayerInLobby(roomCode, idUserToEliminate));                           
                            break;
                        }
                    }
                }
            }
        }

        private void RearrangePositions(Lobby lobby, int eliminatedPosition)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                if (item.numberOfPlayerInLobby > eliminatedPosition)
                {
                    item.numberOfPlayerInLobby--;
                }
            }
        }

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE)
            {
                var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                if (lobby != null)
                {                    
                    if(lobby.listOfPlayerInLobby.Count == MAX_PLAYERS && wannaTeam)
                    {
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {
                            if (item.numberOfPlayerInLobby <= 2)
                            {
                                item.sideTeam = TEAM_LEFT_SIDE;                                ;
                                break;
                            }
                            else
                            {
                                item.sideTeam = TEAM_RIGTH_SIDE;                               
                                break;
                            }                                                    
                        }             
                    }
                    else
                    {
                        foreach (var item in lobby.listOfPlayerInLobby)
                        {                           
                            item.sideTeam = TEAM_LEFT_SIDE;                            
                        }
                    }
                    NotifyPlayersAboutTeams(lobby, idUser, wannaTeam);
                }
            }
        }

        private void NotifyPlayersAboutTeams(Lobby lobby, int idUserNotifying, bool wannaTeam)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                if (item.idUser != idUserNotifying)
                {
                    item.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyActionsCallback>().MakeTeamsResponse(wannaTeam);
                }
            }
        }       

    }
}
