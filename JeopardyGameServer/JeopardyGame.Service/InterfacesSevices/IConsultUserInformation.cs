using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using static JeopardyGame.Service.InterfacesServices.IUserManager;

namespace JeopardyGame.Service.InterfacesServices
{
    [ServiceContract]
    public interface IConsultUserInformation
    {
        [OperationContract]
        GenericClass<UserPOJO> ConsultUserById(int idUser);
        [OperationContract]
        GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer);
        [OperationContract]
        GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer);
        [OperationContract]
        GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser);
        [OperationContract]
        GenericClass<UserPOJO> ConsultUserByUserName(String userName);
        [OperationContract]
        List<PlayerInfo> GetPlayersInfo();
    }
}
