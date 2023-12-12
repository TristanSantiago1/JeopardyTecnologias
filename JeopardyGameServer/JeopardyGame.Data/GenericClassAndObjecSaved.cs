using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Security.Policy;
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
        public string EmailAddress { get; set; }
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

    [DataContract]
    public class QuestionCardInformation
    {
        [DataMember]
        public int IdQuestionCard { get; set; }
        [DataMember]
        public CategoryPOJO CategoryOfQuestion { get; set; }
        [DataMember]
        public QuestionPOJO SpecificQuestionDetails{ get; set; }
        [DataMember]
        public AnswerPOJO RightAnswer { get; set; }
        [DataMember]
        public AnswerPOJO WrongOptionOne { get; set; }
        [DataMember]
        public AnswerPOJO WrongOptionTwo { get; set; }
        [DataMember]
        public AnswerPOJO WrongOptionThree { get; set; }
        [DataMember]
        public int NumberOfRound { get; set; }        
    }

    public class QuestionPOJO
    {
        public int IdQuestion { get; set; }
        public string SpanishQuestionDescription { get; set; }
        public string EnglishQuestionDescription { get; set; }
        public int IdCategoryBelong { get; set; }
        public int IdAnswerOfQuestion { get; set; }
        public int ValueWorth { get; set; }
    }

    public class AnswerPOJO
    {
        public int IdAnswer { get; set; }
        public string SpanishAnswerDescription { get; set; }
        public string EnglishAnswerDescription { get; set; }
        public int IdCategory { get; set; }
    }

    public class CategoryPOJO
    {
        public int IdCategory { get; set; }
        public string SpanishCategoryDescription { get; set; }
        public string EnglishCategoryDescription { get; set; }
    }

    [DataContract]
    public class PlayerInGameDataContract
    {
        [DataMember]
        public int IdUser { get; set; }
        [DataMember]
        public int IdPlayer { get; set; }
        [DataMember]
        public int FinalPosition { get; set; }
        [DataMember]
        public String UserName { get; set; }
        [DataMember]
        public int SideTeam { get; set; }
        [DataMember]
        public int TurnOfPlayer { get; set; }
        [DataMember]
        public int IdAvatar { get; set; }
        [DataMember]
        public int CurrentPointsOfRound { get; set; }
    }


    [DataContract]
    public class CurrentQuestionToShowContract
    {
        [DataMember]
        public int IdQuestion { get; set; }
        [DataMember]
        public int IdFirstAnswer { get; set; }
        [DataMember]
        public int IdSecondAnswer { get; set; }
        [DataMember]
        public int IdThirdAnswer { get; set; }
        [DataMember]
        public int IdFourthAnswer { get; set; }
    }


}




