using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;


namespace JeopardyGame.Data
{
    [DataContract]
    [KnownType(typeof(GenericClass<int>))]
    [KnownType(typeof(GenericClass<FriendInfo>))]
    [KnownType(typeof(GenericClass<PlayerInLobby>))]
    [KnownType(typeof(GenericClass<UserPOJO>))]
    [KnownType(typeof(GenericClass<PlayerPOJO>))]
    [KnownType(typeof(GenericClass<UserValidate>))]
    [KnownType(typeof(GenericClass<AvatarPojo>))]
    [KnownType(typeof(GenericClass<AvatarChoice>))]
    public class GenericClass<T>
    {
        [DataMember]
        public T ObjectSaved { get; set; }

        [DataMember]
        public int CodeEvent { get; set; }

        public GenericClass()
        {
            
        }
    }

    public class GenericClassServer<T>
    {       
        public T ObjectSaved { get; set; }
               
        public int CodeEvent { get; set; }

        public GenericClassServer()
        {

        }
    }


    //[DataContract]
    //public struct FriendInfo
    //{
    //    private int idUser;
    //    private string userName;
    //    private int idStatus;

    //    [DataMember]
    //    public int IdUser { get { return idUser; } set { idUser = value; } }
    //    [DataMember]
    //    public string UserName { get { return userName; } set { userName = value; } }
    //    [DataMember]
    //    public int IdStatus { get { return idStatus; } set { idStatus = value; } }
    //}

    //[DataContract]
    //public struct PlayerInLobby
    //{
    //    private int idUser;
    //    private int idPlayer;
    //    private string userName;
    //    private int numPlayer;
    //    private int side;

    //    [DataMember]
    //    public int IdUser { get { return idUser; } set { idUser = value; } }
    //    [DataMember]
    //    public int IdPlayer { get { return idPlayer; } set { idPlayer = value; } }
    //    [DataMember]
    //    public string UserName { get { return userName; } set { userName = value; } }
    //    [DataMember]
    //    public int NumPlayers { get { return numPlayer; } set { numPlayer = value; } }
    //    [DataMember]
    //    public int Side { get { return side; } set { side = value; } }
    //}

    //[DataContract]
    //public class UserPOJO
    //{
    //    private int idUser;
    //    private String name;
    //    private String userName;
    //    private String emailAddress;
    //    private String password;

    //    [DataMember]
    //    public int IdUser { get { return idUser; } set { idUser = value; } }
    //    [DataMember]
    //    public String UserName { get { return userName; } set { userName = value; } }
    //    [DataMember]
    //    public String Name { get { return name; } set { name = value; } }
    //    [DataMember]
    //    public String EmailAddress { get { return emailAddress; } set { emailAddress = value; } }
    //    [DataMember]
    //    public String Password { get { return password; } set { password = value; } }
    //}

    //[DataContract]
    //public class PlayerPOJO
    //{
    //    private int idPlayer;
    //    private int generalPoints;
    //    private int noReports;
    //    private int idUser;
    //    private int idState;
    //    private int idActualAvatar;

    //    [DataMember]
    //    public int IdPlayer { get { return idPlayer; } set { idPlayer = value; } }
    //    [DataMember]
    //    public int GeneralPoints { get { return generalPoints; } set { generalPoints = value; } }
    //    [DataMember]
    //    public int NoReports { get { return noReports; } set { noReports = value; } }
    //    [DataMember]
    //    public int IdUser { get { return idUser; } set { idUser = value; } }
    //    [DataMember]
    //    public int IdState { get { return idState; } set { idState = value; } }
    //    [DataMember]
    //    public int IdActualAvatar { get { return idActualAvatar; } set { idActualAvatar = value; } }
    //}

    //[DataContract]
    //public class UserValidate
    //{
    //    private String userName;
    //    private String password;

    //    [DataMember]
    //    public String UserName { get { return userName; } set { userName = value; } }
    //    [DataMember]
    //    public String Password { get { return password; } set { password = value; } }

    //}
    //[DataContract]
    //public class AvatarPojo
    //{
    //    public int Id { get; set; }
    //    public string AvatarName { get; set; }
    //    public byte[] ImageData { get; set; }
    //}

    //[DataContract]
    //public class AvatarChoice
    //{
    //    [DataMember]
    //    public int IdAvatar { get; set; }

    //    [DataMember]
    //    public int idPlayer { get; set; }
    //}
    public struct FriendInfo
    {
        private int idUser;
        private string userName;
        private int idStatus;

        public int IdUser { get { return idUser; } set { idUser = value; } }

        public string UserName { get { return userName; } set { userName = value; } }

        public int IdStatus { get { return idStatus; } set { idStatus = value; } }
    }


    public struct PlayerInLobby
    {
        private int idUser;
        private int idPlayer;
        private string userName;
        private int numPlayer;
        private int side;


        public int IdUser { get { return idUser; } set { idUser = value; } }

        public int IdPlayer { get { return idPlayer; } set { idPlayer = value; } }

        public string UserName { get { return userName; } set { userName = value; } }

        public int NumPlayers { get { return numPlayer; } set { numPlayer = value; } }

        public int Side { get { return side; } set { side = value; } }
    }


    public class UserPOJO
    {
        private int idUser;
        private String name;
        private String userName;
        private String emailAddress;
        private String password;


        public int IdUser { get { return idUser; } set { idUser = value; } }

        public String UserName { get { return userName; } set { userName = value; } }

        public String Name { get { return name; } set { name = value; } }

        public String EmailAddress { get { return emailAddress; } set { emailAddress = value; } }

        public String Password { get { return password; } set { password = value; } }
    }


    public class PlayerPOJO
    {
        private int idPlayer;
        private int generalPoints;
        private int noReports;
        private int idUser;
        private int idState;
        private int idActualAvatar;


        public int IdPlayer { get { return idPlayer; } set { idPlayer = value; } }

        public int GeneralPoints { get { return generalPoints; } set { generalPoints = value; } }

        public int NoReports { get { return noReports; } set { noReports = value; } }

        public int IdUser { get { return idUser; } set { idUser = value; } }

        public int IdState { get { return idState; } set { idState = value; } }

        public int IdActualAvatar { get { return idActualAvatar; } set { idActualAvatar = value; } }
    }


    public class UserValidate
    {
        private String userName;
        private String password;


        public String UserName { get { return userName; } set { userName = value; } }

        public String Password { get { return password; } set { password = value; } }

    }

    public class AvatarPojo
    {
        public int Id { get; set; }
        public string AvatarName { get; set; }
        public byte[] ImageData { get; set; }
    }


    public class AvatarChoice
    {

        public int IdAvatar { get; set; }


        public int idPlayer { get; set; }
    }

}






