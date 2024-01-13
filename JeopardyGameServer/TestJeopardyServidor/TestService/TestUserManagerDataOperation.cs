using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using Xunit;

namespace TestJeopardyServidor.TestService
{
    public class TestUserManagerDataOperation : IClassFixture<TestFixturesForDbUp>
    {

        private readonly TestFixturesForDbUp _fixture;

        public TestUserManagerDataOperation(TestFixturesForDbUp fixtures)
        {
            _fixture = fixtures;
        }      

       

     



        


       
      

   


        [Fact]
        public void TestDeleteUserByIdSucces()
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
            var succes = UserManagerDataOperation.DeleteUserById(idUser.ObjectSaved.IdUser);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdUnSucces()
        {
            var succes = UserManagerDataOperation.DeleteUserById(-1);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdNull()
        {
            var succes = UserManagerDataOperation.DeleteUserById(0);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerSucces()
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
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(playerSucces.ObjectSaved.IdPlayer,1);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerUNSucces()
        {
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(-1, 1);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerNUll()
        {
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(0, 1);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationSucces()
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
            var succes = UserManagerDataOperation.UpdateUserInformation(idUser.ObjectSaved.IdUser, " ");
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationUNSucces()
        {
            var succes = UserManagerDataOperation.UpdateUserInformation(-1, " ");
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationNulls()
        {
            var succes = UserManagerDataOperation.UpdateUserInformation(0, string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }


       

        [Fact]
        public void TestDleteAllGuestSucces()
        {
            var succes = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }


        [Fact]
        public void TestUpdateEmailUserIdSucces()
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
            var succes = UserManagerDataOperation.UpdateEmailUser(idUser.ObjectSaved.IdUser, "newEmail@gmail.com");
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmailUserIdUNSucces()
        {
            var succes = UserManagerDataOperation.UpdateEmailUser(-1, "newEmail@gmail.com");
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmailUserIdNull()
        {
            var succes = UserManagerDataOperation.UpdateEmailUser(0, string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdSucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userTestPass"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            var succes = UserManagerDataOperation.UpdatePasswordUser("userTestPass", "NewPassword");
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdUNSucces()
        {
            var succes = UserManagerDataOperation.UpdatePasswordUser("NO EXIST", "newEmail@gmail.com");
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdNull()
        {
            var succes = UserManagerDataOperation.UpdatePasswordUser(string.Empty, string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }
    }
}
