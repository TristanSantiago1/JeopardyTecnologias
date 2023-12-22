using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.ServiceImplementation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ChannelsAdministrator
{
    public static  class ChannelAdministrator
    {
        public static int VerifyUserIsStillActive(int idUser)
        {
            var channel = ActiveUsersDictionary.GetChannelCallBackActiveUser(idUser);
            if (channel != null)
            {
                try
                {
                    channel.GetCallbackChannel<INotifyUserAvailabilityCallBack>().VerifyPlayerAvailability();
                    return ExceptionDictionary.UNSUCCESFULL_EVENT;
                }
                catch (CommunicationException ex)
                {
                    KickUserFromDictionaries(idUser);
                    return ExceptionDictionary.SUCCESFULL_EVENT;
                }
            }
            KickUserFromDictionaries(idUser);
            return ExceptionDictionary.SUCCESFULL_EVENT;
        }

        public static void KickUserFromDictionaries(int idUser)
        {  
            NotifyUserIsNotAvailableImplementation notifyUser = new();
            GameActionsImplementation gameActions = new ();
            FriendManagerActionsImplementation friendsManager = new();
            LobbyActionsImplementation lobbyActions = new();

            notifyUser.PlayerIsNotAvailable(idUser);
            var lobbyList = GameLobbiesDictionary.GetActiveLobbiesList();
            int roomCode = lobbyList.FirstOrDefault(entry => entry.Value.listOfPlayerInLobby.Any(pl => pl.idUser == idUser)).Key;          
            gameActions.UnSubscribeFromGameCallBack(roomCode,idUser);  
            friendsManager.UnregisterFriendManagerUser(idUser);
            var lobby = GameLobbiesDictionary.GetSpecificActiveLobby(roomCode);
            if(lobby != null)
            {
                if (lobby.idAdmin == idUser)
                {
                    lobbyActions.DissolveLobby(roomCode, idUser);
                }
                else
                {
                    lobbyActions.LeaveLobby(roomCode, idUser);
                }
            }
        }


    }
}
