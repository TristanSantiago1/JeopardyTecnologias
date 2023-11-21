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
    public interface ILiveChat
    {
        [OperationContract(IsOneWay = true)]
        void SendMessage(int idUser, int roomCode, String userName, String messageToSend);

        [OperationContract]
        GenericClass<List<MessageChat>> GetAllMessages(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        void DeleteChat(int roomCode, int idUser);

        [OperationContract]
        GenericClass<bool> CreateChatForLobby(int roomCode, int idAdmin);

    }

    [ServiceContract]
    public interface ILiveChatCallBack
    {
        [OperationContract]
        void ReceiveMessage(GenericClass<MessageChat> message);
    }

}
