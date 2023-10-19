using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterpretersEntityPojo
{
    public class UserInterpreter
    {
        public static User FromUserPojoToUserEntity(UserPOJO userPojo)
        { 
            User userEntity = new User();
            userEntity.IdUser = userPojo.IdUser;
            userEntity.UserName = userPojo.UserName;
            userEntity.Password = userPojo.Password;    
            userEntity.Name = userPojo.Name;
            userEntity.EmailAddress = userPojo.EmailAddress;
            return userEntity;
        }

        public static UserPOJO FromUserEntityToUserPojo(User user)
        {
            UserPOJO userPOJO = new UserPOJO();
            userPOJO.IdUser = user.IdUser;
            userPOJO.Name = user.Name;
            userPOJO.EmailAddress = user.EmailAddress;  
            userPOJO.Password = user.Password;
            userPOJO.UserName = user.UserName;
            return userPOJO;
        }

        public static PlayerPOJO FromPlayerEntityToPlayerPojo(Player player)
        {
            PlayerPOJO playerPOJO = new PlayerPOJO();
            playerPOJO.IdPlayer = player.IdPlayer;
            playerPOJO.GeneralPoints = (int) player.GeneralPoints;
            playerPOJO.NoReports = (int) player.NoReports;
            playerPOJO.IdActualAvatar =(int) player.IdAvatarActual;
            playerPOJO.NoReports = (int) player.NoReports;
            playerPOJO.IdState = (int) player.State_idState;
            playerPOJO.IdUser = player.User_IdUser;
            return playerPOJO;
        }

        public static Player FromPlayerPojoToPlyerEntity(PlayerPOJO playerPojo)
        {
            Data.DataAccess.UserManagerDataOperation dataAccess = new Data.DataAccess.UserManagerDataOperation();
            Player player = new Player();
            player.IdPlayer = playerPojo.IdPlayer;
            player.GeneralPoints = playerPojo.GeneralPoints;
            player.NoReports = playerPojo.NoReports;
            player.IdAvatarActual = playerPojo.IdActualAvatar;
            player.User_IdUser = playerPojo.IdUser;
            player.State_idState = playerPojo.IdState;
            player.User =  dataAccess.GetUserById(playerPojo.IdUser);
            player.State = dataAccess.GetStateById(playerPojo.IdState);
            return player;
        } 
    }
}
