using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public class LobbyTeamsManagerImplementation : ILobbyTeamsManager
    {

        private readonly int NULL_INT_VALUE = 0;
        private readonly int TEAM_LEFT_SIDE = 1;
        private readonly int TEAM_RIGTH_SIDE = 2;
        private readonly int MAX_PLAYERS = 4;

        public void MakeTeams(int roomCode, int idUser, bool wannaTeam)
        {
            try
            {
                if (roomCode != NULL_INT_VALUE && idUser != NULL_INT_VALUE)
                {
                    var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                    if (lobby != null)
                    {
                        if (lobby.listOfPlayerInLobby.Count == MAX_PLAYERS && wannaTeam)
                        {
                            AssignTeamSide(lobby);
                        }
                        else
                        {
                            DissolveTeamsSides(lobby);
                        }
                        NotifyPlayersAboutTeams(lobby, idUser, wannaTeam);
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
        }

        private void AssignTeamSide(Lobby lobby)
        {
            foreach (var player in lobby.listOfPlayerInLobby)
            {
                if (player.numberOfPlayerInLobby <= 2)
                {
                    player.sideTeam = TEAM_LEFT_SIDE;
                }
                else
                {
                    player.sideTeam = TEAM_RIGTH_SIDE;
                }
            }
        }

        private void DissolveTeamsSides(Lobby lobby)
        {
            foreach (var item in lobby.listOfPlayerInLobby)
            {
                item.sideTeam = TEAM_LEFT_SIDE;
            }
        }

        private void NotifyPlayersAboutTeams(Lobby lobby, int idUserNotifying, bool wannaTeam)
        {
            foreach (var player in lobby.listOfPlayerInLobby)
            {
                try
                {
                    if (player.idUser != idUserNotifying)
                    {
                        player.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().MakeTeamsResponse(wannaTeam);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }

        }

        public void ChangePlayerSide(int roomCode, int idUserToChangeTeam, int newSideTeam)
        {
            if (roomCode != NULL_INT_VALUE && idUserToChangeTeam != NULL_INT_VALUE && newSideTeam != NULL_INT_VALUE)
            {
                var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);
                try
                {
                    if (lobby != null)
                    {
                        var player = lobby.listOfPlayerInLobby.Find(pl => pl.idUser == idUserToChangeTeam);
                        if (player != null)
                        {
                            player.sideTeam = newSideTeam;
                            NotifyPlayerChangedOfSide(roomCode, idUserToChangeTeam, lobby);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(lobby.idAdmin, ChannelAdministrator.LOBBY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }
        private void NotifyPlayerChangedOfSide(int roomCode, int idUser, Lobby lobby)
        {
            LobbyOperationImplementation lobbyActions = new LobbyOperationImplementation();
            GenericClass<List<PlayerInLobby>> playersInLobby = lobbyActions.GetAllCurrentPlayerInLobby(roomCode, idUser);
            if (playersInLobby.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                foreach (var player in lobby.listOfPlayerInLobby.Where(pla => lobby.idAdmin != pla.idUser && pla.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>() != null))
                {
                    try
                    {
                        player.lobbyCommunicationChannelCallback.GetCallbackChannel<ILobbyCallback>().UpdateTeamSide(playersInLobby);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(player.idUser, ChannelAdministrator.LOBBY_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                }
            }
        }
    }
}
