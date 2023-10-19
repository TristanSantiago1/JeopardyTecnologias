using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ConsultInfoImple : IConsultInformation
    {
        public  PlayerPOJO ConsultPlayerById(int idPlayer)
        {
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO playerConsulted = new PlayerPOJO();
            playerConsulted = InterpretersEntityPojo.UserInterpreter.FromPlayerEntityToPlayerPojo(dataAcces.GetPlayerByIdPlayer(idPlayer));
            return playerConsulted;
        }

        public  PlayerPOJO ConsultPlayerByIdUser(int idUser)
        {
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO playerConsulted = new PlayerPOJO();
            playerConsulted = InterpretersEntityPojo.UserInterpreter.FromPlayerEntityToPlayerPojo(dataAcces.GetPlayerByIdUser(idUser));
            return playerConsulted;
        }

        public  UserPOJO ConsultUserById(int idUser)
        {
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserById(idUser));
            return userConsulted;
        }

        public  UserPOJO ConsultUserByIdPlayer(int idPlayer)
        {
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO player = ConsultPlayerById(idPlayer);
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserById(player.IdUser));
            return userConsulted;
        }

        public UserPOJO ConsultUserByUserName(string userName)
        {
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserByUserName (userName));
            return userConsulted;
        }
    }
}
