using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract(CallbackContract = typeof(ILiveChatCallBack))]
    public interface ILiveChatService
    {
        [OperationContract]
        GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin);

        [OperationContract]
        GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser);

        [OperationContract]
        int RenewLiveChatCallBack(int roomCode, int idUser);
    }

    [ServiceContract]
    public interface ILiveChatOperations
    {
        [OperationContract(IsOneWay = true)]
        void SendMessage(int idUser, int roomCode, String userName, String messageToSend);
       

        [OperationContract(IsOneWay = true)]
        void DeleteChat(int roomCode, int idUser);
    }

    [ServiceContract]
    public interface ILiveChatCallBack
    {
        [OperationContract]
        void ReceiveMessage(GenericClass<MessageChat> message);
    }

}
