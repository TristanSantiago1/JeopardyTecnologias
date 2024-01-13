using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{

    [ServiceContract(CallbackContract = typeof(IIChatForTeamsCallBack))]
    public interface IChatForTeamsService
    {       
        [OperationContract(IsOneWay = true)]
        void RegisterForTeamChat(int idUser);

        [OperationContract]
        int RenewTeamChatCallBack(int idUser);
    }


    [ServiceContract]
    public interface IChatForTeamsOperations
    {
        [OperationContract(IsOneWay = true)]
        void SendMessageTeam(int idUser, int idTeamMate, String userName, String messageToSend);

        [OperationContract(IsOneWay = true)]
        void UnregisterFromTeamChat(int idUser);
    }


    [ServiceContract]
    public interface IIChatForTeamsCallBack
    {
        [OperationContract]
        void ReceiveMessageTeamChat(GenericClass<MessageChat> message);
    }
}
