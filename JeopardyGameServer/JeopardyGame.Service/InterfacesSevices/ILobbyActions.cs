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
        int CreateNewLobby(int RoomCode, int idUser);

        [OperationContract]
        List<PlayerInLobby> GetAllCurrentPlayerInLobby(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void DissolveLobby(int RoomCode,int idUser);

        [OperationContract]
        int joinLobby(int roomCode, int idUser);

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
        public void UpdateJoinedPlayerResponse(List<PlayerInLobby> playersInTheLobby);       

        [OperationContract]
        public void MakeTeamsResponse(bool teamUp);       

        [OperationContract]
        public void UpdateTeamSide(List<PlayerInLobby> playersInTheLobby);

        [OperationContract]
        public void DissolvingLobby();
    }

    [DataContract]
    public struct PlayerInLobby
    {
        private int idUser;
        private int idPlayer;
        private string userName;
        private int numPlayer;
        private int side;

        [DataMember]
        public int IdUser { get { return idUser; } set { idUser = value; } }
        [DataMember] 
        public int IdPlayer { get { return idPlayer; } set { idPlayer = value; } }
        [DataMember]
        public string UserName { get { return userName; } set { userName = value; } }
        [DataMember]
        public int NumPlayers { get {  return numPlayer; } set { numPlayer = value; } }
        [DataMember]
        public int Side { get { return side; } set { side = value; } }
    }

}
