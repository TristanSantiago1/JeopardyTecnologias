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
            if (idPlayer == 0) return null;
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO playerConsulted = new PlayerPOJO();
            playerConsulted = InterpretersEntityPojo.UserInterpreter.FromPlayerEntityToPlayerPojo(dataAcces.GetPlayerByIdPlayer(idPlayer));
            if (playerConsulted == null) return null;          
            return playerConsulted;
        }

        public  PlayerPOJO ConsultPlayerByIdUser(int idUser)
        {
            if (idUser == 0) { return null; }
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO playerConsulted = new PlayerPOJO();
            playerConsulted = InterpretersEntityPojo.UserInterpreter.FromPlayerEntityToPlayerPojo(dataAcces.GetPlayerByIdUser(idUser));
            if (playerConsulted == null)  return null;    
            return playerConsulted;
        }

        public  UserPOJO ConsultUserById(int idUser)
        {
            if (idUser == 0) { return null; }
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserById(idUser));
            if(userConsulted == null) return null;
            return userConsulted;
        }

        public  UserPOJO ConsultUserByIdPlayer(int idPlayer)
        {
            if (idPlayer == 0) { return null; }
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            PlayerPOJO player = ConsultPlayerById(idPlayer);
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserById(player.IdUser));
            if (userConsulted == null) return null;  
            return userConsulted;
        }

        public UserPOJO ConsultUserByUserName(string userName)
        {
            if(userName == null) { return null; }   
            Data.DataAccess.UserManagerDataOperation dataAcces = new Data.DataAccess.UserManagerDataOperation();
            UserPOJO userConsulted = new UserPOJO();
            userConsulted = InterpretersEntityPojo.UserInterpreter.FromUserEntityToUserPojo(dataAcces.GetUserByUserName (userName));
            if (userConsulted == null) return null;
            return userConsulted;
        }
    }
}
