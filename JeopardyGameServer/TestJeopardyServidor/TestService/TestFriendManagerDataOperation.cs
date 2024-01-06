using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace TestJeopardyServidor.TestService
{
    public class TestFriendManagerDataOperation : IClassFixture<TestFixturesForDbUp>
    {
        private readonly TestFixturesForDbUp _fixture;
        public TestFriendManagerDataOperation(TestFixturesForDbUp fixtures)
        {
            _fixture = fixtures;
        }

      

        [Fact]
        public void TestConsultFriendSucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerSucces.ObjectSaved);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestConsultFriendNull()
        {           
            var succes = FriendsManagerDataOperation.ConsultFriendsOfPlayer(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestGet20NotFriendsSucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = FriendsManagerDataOperation.Get20NotFriendsPlayer(playerSucces.ObjectSaved);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestConsult20NotFriendNull()
        {
            var succes = FriendsManagerDataOperation.Get20NotFriendsPlayer(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }   

        [Fact]
        public void TestDeleteFriendsRegister()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            User userTest2 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser2 = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest2 = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state2 = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces2 = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            FriendsManagerDataOperation.SendFriendRequest(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            FriendsManagerDataOperation.AcceptFriendRequest(playerSucces2.ObjectSaved.IdPlayer, playerSucces.ObjectSaved.IdPlayer);
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteFriendsRgeisterUnsucces()
        {
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(-1, -1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteFriendsRgeisterNull()
        {
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(0,0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestAcceptFriendsRegister()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            User userTest2 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser2 = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest2 = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state2 = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces2 = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            FriendsManagerDataOperation.SendFriendRequest(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            var succes = FriendsManagerDataOperation.AcceptFriendRequest(playerSucces2.ObjectSaved.IdPlayer, playerSucces.ObjectSaved.IdPlayer);
            FriendsManagerDataOperation.DeleteFriendsRegister(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestAcceptFriendsRgeisterUnsucces()
        {
            var succes = FriendsManagerDataOperation.AcceptFriendRequest(-1, -1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestAcceptFriendsRgeisterNull()
        {
            var succes = FriendsManagerDataOperation.AcceptFriendRequest(0,0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestSendFriendsRegister()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            User userTest2 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser2 = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest2 = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state2 = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces2 = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = FriendsManagerDataOperation.SendFriendRequest(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            FriendsManagerDataOperation.AcceptFriendRequest(playerSucces2.ObjectSaved.IdPlayer, playerSucces.ObjectSaved.IdPlayer);
            FriendsManagerDataOperation.DeleteFriendsRegister(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestSenFriendsRgeisterUnsucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            User userTest2 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser2 = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest2 = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state2 = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces2 = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            FriendsManagerDataOperation.SendFriendRequest(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            var succes = FriendsManagerDataOperation.SendFriendRequest(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            FriendsManagerDataOperation.DeleteFriendsRegister(playerSucces.ObjectSaved.IdPlayer, playerSucces2.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestSentFriendsRgeisterNull()
        {
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(0,0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestBanFriendRegister()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);            
            var succes = FriendsManagerDataOperation.BannerUser(playerSucces.ObjectSaved.IdPlayer);           
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestBanUserUnsicces()
        {
            var succes = FriendsManagerDataOperation.BannerUser(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestBanUserNull()
        {
            var succes = FriendsManagerDataOperation.BannerUser(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }


    }
}
