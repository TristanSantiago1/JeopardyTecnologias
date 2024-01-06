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
    public class TestLoginOperations : IClassFixture<TestFixturesForDbUp>
    {
        private readonly TestFixturesForDbUp _fixture;
        public TestLoginOperations(TestFixturesForDbUp fixtures)
        {
            _fixture = fixtures;
        }


        [Fact]
        public void TestVerifyPassWordSucces()
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
            string passwordEntered = "PasswordTest";
            UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = LoginOperations.VerifyPassword(idUser.ObjectSaved.Password, passwordEntered);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestVerifyPassWordUnsucces()
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
            string passwordEntered = "badPasssword";
            UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = LoginOperations.VerifyPassword(idUser.ObjectSaved.Password, passwordEntered);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestVerifyPassWordNull()
        {
            var succes = LoginOperations.VerifyPassword(string.Empty, string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateEmailExistSucces()
        {
            string emailEntered = "elailThatDoesntExist@gmail.com";
            var succes = LoginOperations.ValidateIfEmailExist(emailEntered);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateEmailExistUnucces()
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
            string emailEntered = "userTest@gmail.com";
            UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            var succes = LoginOperations.ValidateIfEmailExist(emailEntered);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateEmailExistNull()
        {
            var succes = LoginOperations.ValidateIfEmailExist(string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateUserNameExistanceSucces()
        {
            string userName = "wachiturro";
            var succes = LoginOperations.ValidateIfUserNameExist(userName);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateUserNameExistanceUnsucces()
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
            string userName = "userNameTest";
            var succes = LoginOperations.ValidateIfUserNameExist(userName);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateUserNameExistanceNull()
        {
            var succes = LoginOperations.ValidateIfUserNameExist(string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }
    }
}
