using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{

    [ServiceContract(CallbackContract = typeof(ILobbyActionsCallback))]
    public  interface ILobbyActions
    {
        [OperationContract]
        GenericClass<int> CreateNewLobby(int RoomCode, int idUser);

        [OperationContract]
        GenericClass<List<PlayerInLobby>> GetAllCurrentPlayerInLobby(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void DissolveLobby(int RoomCode,int idUser);

        [OperationContract]
        GenericClass<int> joinLobby(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void NotifyPlayerInlobby(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void leaveLobby(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void ChangePlayerSide(int RoomCode, int idUser, int side);

        [OperationContract(IsOneWay = true)]
        void EliminatePlayerFromMatch(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        public void MakeTeams(int roomCode, int idUser, bool wannaTeam);
    }

    public interface ILobbyActionsCallback
    {
        [OperationContract]
        public void UpdateJoinedPlayerResponse(GenericClass<List<PlayerInLobby>> playersInTheLobby);       

        [OperationContract]
        public void MakeTeamsResponse(bool teamUp);       

        [OperationContract]
        public void UpdateTeamSide(GenericClass<List<PlayerInLobby>> playersInTheLobby);

        [OperationContract]
        public void DissolvingLobby();
    }

  

}
