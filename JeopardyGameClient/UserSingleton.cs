using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame
{
    public class UserSingleton
    {
        private static UserSingleton instance;
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

        private UserSingleton() { }
        private UserSingleton(int idUser, String name, String userName, String email, String password, 
            int idPlayer, int generalPoints, int noReports, int idCurrentAvatar, int idState) 
        {
            IdUser = idUser;
            Name = name;
            UserName = userName;
            Email = email;
            Password = password;
            IdPlayer = idPlayer;
            GeneralPoints = generalPoints;
            NoReports = noReports;
            IdCurrentAvatar = idCurrentAvatar;
            IdState = idState;
        }

        public static UserSingleton GetMainUser()
        {
            if (instance == null)
            {
                instance = new UserSingleton();
            }
            return instance;
        }

        public static UserSingleton GetMainUser(int idUser, String name, String userName, String email, String password,
            int idPlayer, int generalPoints, int noReports, int idCurrentAvatar, int idState)
        {
            if (instance == null)
            {
                instance = new UserSingleton(idUser,name,userName,email,password,idPlayer,generalPoints, noReports,idCurrentAvatar,idState );
            }
            return instance;
        }

    }
}
