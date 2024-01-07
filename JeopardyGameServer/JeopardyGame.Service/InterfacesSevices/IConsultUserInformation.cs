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
        GenericClass<UserPojo> ConsultUserById(int idUser);
        [OperationContract]
        GenericClass<UserPojo> ConsultUserByIdPlayer(int idPlayer);
        [OperationContract]
        GenericClass<PlayerPojo> ConsultPlayerById(int idPlayer);
        [OperationContract]
        GenericClass<PlayerPojo> ConsultPlayerByIdUser(int idUser);
        [OperationContract]
        GenericClass<UserPojo> ConsultUserByUserName(String userName);
        [OperationContract]
        GenericClass<List<PlayerInfo>> GetPlayersInformation(int idUserConsulting);
    }
}
