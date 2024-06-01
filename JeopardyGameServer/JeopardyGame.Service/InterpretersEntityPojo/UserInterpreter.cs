using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterpretersEntityPojo
{
    public static class UserInterpreter
    {
        public static User FromUserPojoToUserEntity(UserPojo userPojo)
        {
            if (userPojo == null)
            {
                return null;
            }            
            User userEntity = new User();
            userEntity.IdUser = userPojo.IdUser;
            userEntity.UserName = userPojo.UserName;
            userEntity.Password = userPojo.Password;    
            userEntity.Name = userPojo.Name;
            userEntity.EmailAddress = userPojo.EmailAddress;
            userEntity.TwitterUserName = userPojo.TwitterUserName;
            return userEntity;
        }

        public static UserPojo FromUserEntityToUserPojo(User user)
        {
            if (user == null)
            {
                return null;
            }
            UserPojo userPOJO = new UserPojo();
            userPOJO.IdUser = user.IdUser;
            userPOJO.Name = user.Name;
            userPOJO.EmailAddress = user.EmailAddress;  
            userPOJO.Password = user.Password;
            userPOJO.UserName = user.UserName;
            userPOJO.TwitterUserName = user.TwitterUserName;
            return userPOJO;
        }

        public static PlayerPojo FromPlayerEntityToPlayerPojo(Player player)
        {
            if (player == null)
            {
                return null;
            }
            PlayerPojo playerPOJO = new PlayerPojo();
            playerPOJO.IdPlayer = player.IdPlayer;
            playerPOJO.GeneralPoints = (int) player.GeneralPoints;
            playerPOJO.NoReports = (int) player.NoReports;
            playerPOJO.IdActualAvatar =(int) player.IdAvatarActual;
            playerPOJO.NoReports = (int) player.NoReports;
            playerPOJO.IdState = (int) player.State_idState;
            playerPOJO.IdUser = player.User_IdUser;
            return playerPOJO;
        }

        public static Player FromPlayerPojoToPlayerEntity(PlayerPojo playerPojo)
        {
            if (playerPojo == null)
            {
                return null;
            }       
            Player player = new Player();
            player.IdPlayer = playerPojo.IdPlayer;
            player.GeneralPoints = playerPojo.GeneralPoints;
            player.NoReports = playerPojo.NoReports;
            player.IdAvatarActual = playerPojo.IdActualAvatar;
            player.User_IdUser = playerPojo.IdUser;
            player.State_idState = playerPojo.IdState;
            player.User =  UserManagerDataOperation.GetUserById(playerPojo.IdUser).ObjectSaved;
            player.State = UserManagerDataOperation.GetStateById(playerPojo.IdState).ObjectSaved;
            if (player.User == null || player.State == null)
            {
                return null;
            }
            return player;
        } 
    }
}
