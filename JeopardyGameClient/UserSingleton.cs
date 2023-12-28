using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame
{
    public class UserSingleton
    {
        private static UserSingleton instanceOfUserSingleton;
        public int IdUser { get; set; }
        public String Name { get; set; }
        public String UserName { get; set; }
        public String Email { get; set; }
        public String Password { get; set; }
        public int IdPlayer { get; set; }
        public int GeneralPoints { get; set; }
        public int NoReports { get; set; }
        public int IdCurrentAvatar { get; set; }
        public int IdState { get; set; }
        public NotifyUserAvailabilityClient proxyForAvailability { get; set; }

        private UserSingleton() { }
        private UserSingleton(UserPOJO userSingleton, PlayerPOJO playerSingleton) 
        {
            IdUser = userSingleton.IdUser;
            Name = userSingleton.Name;
            UserName = userSingleton.UserName;
            Email = userSingleton.EmailAddress;
            Password = userSingleton.Password;
            IdPlayer = playerSingleton.IdPlayer;
            GeneralPoints = playerSingleton.GeneralPoints;
            NoReports = playerSingleton.NoReports;
            IdCurrentAvatar = playerSingleton.IdActualAvatar;
            IdState = playerSingleton.IdState;
        }

        public static UserSingleton GetMainUser()
        {
            if (instanceOfUserSingleton == null)
            {
                instanceOfUserSingleton = new UserSingleton();
            }
            return instanceOfUserSingleton;
        }

        public static UserSingleton GetMainUser(UserPOJO userSingleton, PlayerPOJO playerSingleton)
        {
            if (instanceOfUserSingleton == null)
            {
                instanceOfUserSingleton = new UserSingleton(userSingleton, playerSingleton);
            }
            return instanceOfUserSingleton;
        }

        public static void CleanSingleton()
        {
            instanceOfUserSingleton = null;
        }
        public void UpdateNameData(string newName)
        {
            this.Name = newName;
        }
        public void UpdateAvatarData (int newPhoto)
        {
            this.IdCurrentAvatar = newPhoto;
        }
    }
}
