using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    internal interface IUserManager
    {    
        [OperationContract]
        int SaveUser(UserPOJO userPojoNew);
        [OperationContract]
        int SavePlayer(int IdUserSaved, PlayerPOJO playerPojoNew);
    }

        [DataContract]
        public class UserPOJO
        {
            private int idUser;
            private String name;
            private String userName;
            private String emailAddress;
            private String password;
            [DataMember]
            public int IdUser { get { return idUser; } set { idUser = value; } }
            [DataMember]
            public String UserName { get { return userName; } set { userName = value; } }
            [DataMember]
            public String Name { get { return name; } set { name = value; } }
            [DataMember]
            public String EmailAddress { get { return emailAddress; } set { emailAddress = value; } }
            [DataMember]
            public String Password { get { return password; } set { password = value; } }
        }
        [DataContract]
        public class PlayerPOJO
        {
            private int idPlayer;
            private int generalPoints;
            private int noReports;
            private int idUser;
            [DataMember]
            public int IdPlayer { get { return idUser; } set { idUser = value; } }
            [DataMember]
            public int GeneralPoints { get { return generalPoints; } set { generalPoints = value; } }
            [DataMember]
            public int NoReports { get { return noReports; } set { noReports = value; } }
            [DataMember]
            public int IdUser { get { return idUser; } set { idUser = value; } }
        }
    
}
