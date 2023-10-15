using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    public interface IConsultInformation
    {
        [OperationContract]
        UserPOJO ConsultUserById(int idUser);
        [OperationContract]
        UserPOJO ConsultUserByIdPlayer(int idPlayer);
        [OperationContract]
        PlayerPOJO ConsultPlayerById(int idPlayer);
        [OperationContract]
        PlayerPOJO ConsultPlayerByIdUser(int idUser);
    }
}
