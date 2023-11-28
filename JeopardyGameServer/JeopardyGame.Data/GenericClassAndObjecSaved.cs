using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;


namespace JeopardyGame.Data
{
    [DataContract]
    [KnownType(typeof(GenericClass<int>))]
    [KnownType(typeof(GenericClass<FriendBasicInformation>))]
    [KnownType(typeof(GenericClass<PlayerInLobby>))]
    [KnownType(typeof(GenericClass<UserPOJO>))]
    [KnownType(typeof(GenericClass<PlayerPOJO>))]
    [KnownType(typeof(GenericClass<UserValidate>))]
    [KnownType(typeof(GenericClass<AvatarPojo>))]
    [KnownType(typeof(GenericClass<AvatarChoice>))]
    [KnownType(typeof(GenericClass<MessageChat>))]    
    public class GenericClass<T>
    {
        [DataMember]
        public T ObjectSaved { get; set; }

        [DataMember]
        public int CodeEvent { get; set; }
        public bool IsSuccess { get; set; }

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
   
    public struct FriendBasicInformation
    {
        public int IdUser { get; set; }
        public string UserName { get; set; }
        public int IdStatusAvailability { get; set; }
    }

    public struct MessageChat
    {
        public int IdUser { get; set;    }
        public string UserName { get; set; }
        public string MessageToSend { get; set; }
    }
    public struct PlayerInLobby
    {
        public int IdUser { get; set; }
        public int IdPlayer { get; set; }
        public string UserName { get; set; }
        public int NumberOfPlayerInLobby { get; set; }
        public int SideOfTeam { get; set; }
    }


    public class UserPOJO
    {
        public int IdUser { get; set; }
        public String UserName { get; set; }
        public String Name { get; set; }
        public String EmailAddress { get; set; }
        public String Password { get; set; }
    }
    public class PlayerPOJO
    {
        public int IdPlayer { get; set; }
        public int GeneralPoints { get; set; }
        public int NoReports { get; set; }
        public int IdUser { get; set; }
        public int IdState { get; set; }
        public int IdActualAvatar { get; set; }
    }

    public class UserValidate
    {
        public String UserName { get; set; }
        public String Password { get; set; }
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






