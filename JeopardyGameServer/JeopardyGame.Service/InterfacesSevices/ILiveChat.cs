using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract(CallbackContract = typeof(ILiveChatCallBack))]
    public interface ILiveChat
    {
        [OperationContract(IsOneWay = true)]
       public void SendMessage(int idUser, int room, String userName, String message);

        [OperationContract]
        public GenericClass<List<MessageChat>> GetAllMessages(int room, int idUser);

        [OperationContract(IsOneWay = true)]
        public void DeleteChat(int roomCode, int idUser);

        [OperationContract(IsOneWay = true)]
        public void CreateChatForLobby(int roomCode, int idAdmin);

    }

    public interface ILiveChatCallBack
    {
        [OperationContract]
        public void ReciveMessage(GenericClass<MessageChat> message);
    }

}
