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
        public void TestSaveUserSucces()
        {
            User userTest = new User()
            {
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, userSucces.CodeEvent);
        }

        [Fact]
        public void TestSaveUserInvalidValuess()
        {
            User userTest = new User()
            {
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNamsssssssssssssssssssssssssssssssssssssssssssssssssssssssseTest",
            };
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Assert.Equal(ExceptionDictionary.ENTITY_VALIDATION, userSucces.CodeEvent);
        }

        [Fact]
        public void TestSaveUserNullValues()
        {
            User userTest = null;
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, userSucces.CodeEvent);
        }

        [Fact]
        public void TestSavePlayerSucces()
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestSavePlayerInvalidValues()
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
                State_idState = 30
            };
            State state = new State()
            {
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            Assert.Equal(ExceptionDictionary.SAVE_CHANGES_ERROR, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestSavePlayerNullValues()
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
            Player playerTest = null;
            State state = new State()
            {
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestGetUserByIdSucces()
        {
            User userTest = new User()
            {
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };            
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            var succes = UserManagerDataOperation.GetUserById(userSucces.ObjectSaved.IdUser);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetUserByIdInvalidValue()
        {
            var succes = UserManagerDataOperation.GetUserById(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetUserByIdNullValue()
        {
            var succes = UserManagerDataOperation.GetUserById(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestGetUserByUserNameSucces()
        {
            User userTest = new User()
            {
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            var succes = UserManagerDataOperation.GetUserByUserName(userSucces.ObjectSaved.UserName);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetUserByUserNameInvalidValue()
        {
            var succes = UserManagerDataOperation.GetUserByUserName("Ññññññ");
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetUserByUserNameNullValue()
        {
            var succes = UserManagerDataOperation.GetUserByUserName(string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatedPlayerReportedSucces()
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
            var reportedSucces = UserManagerDataOperation.UpdatePlayerReported(playerSucces.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, reportedSucces.CodeEvent);
        }

      

        [Fact]
        public void TestUpdatedPlayerReportedInvalidValues()
        {
            var reportedSucces = UserManagerDataOperation.UpdatePlayerReported(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, reportedSucces.CodeEvent);
        }


        [Fact]
        public void TestUpdatedPlayerReportedNullValues()
        {
            var reportedSucces = UserManagerDataOperation.UpdatePlayerReported(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, reportedSucces.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserSucces()
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
            var player = UserManagerDataOperation.GetPlayerByIdUser(idUser.ObjectSaved.IdUser);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserUnsusccesful()
        {
            var player = UserManagerDataOperation.GetPlayerByIdUser(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserNullValue()
        {
            var player = UserManagerDataOperation.GetPlayerByIdUser(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerSucces()
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
            var player = UserManagerDataOperation.GetPlayerByIdPlayer(playerSucces.ObjectSaved.IdPlayer);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerUnsucces()
        {
            var player = UserManagerDataOperation.GetPlayerByIdPlayer(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerNull()
        {
            var player = UserManagerDataOperation.GetPlayerByIdPlayer(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, player.CodeEvent);
        }

        [Fact]
        public void TestGetStateByIdState()
        {
            var stateSucces = UserManagerDataOperation.GetStateById(1);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, stateSucces.CodeEvent);
        }

        [Fact]
        public void TestGetStateByIdStateUnsucces()
        {
            var stateSucces = UserManagerDataOperation.GetStateById(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, stateSucces.CodeEvent);
        }

        [Fact]
        public void TestGetStateByIdStateNull()
        {
            var stateSucces = UserManagerDataOperation.GetStateById(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, stateSucces.CodeEvent);
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdUnSucces()
        {
            var succes = UserManagerDataOperation.DeleteUserById(-1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdNull()
        {
            var succes = UserManagerDataOperation.DeleteUserById(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerUNSucces()
        {
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(-1, 1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerNUll()
        {
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(0, 1);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationUNSucces()
        {
            var succes = UserManagerDataOperation.UpdateUserInformation(-1, " ");
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationNulls()
        {
            var succes = UserManagerDataOperation.UpdateUserInformation(0, string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }


        [Fact]
        public void TestGetBestPlayersPointsSucces()
        {
            var succes = UserManagerDataOperation.GetBestPlayersPoints();
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestDleteAllGuestSucces()
        {
            var succes = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmailUserIdUNSucces()
        {
            var succes = UserManagerDataOperation.UpdateEmailUser(-1, "newEmail@gmail.com");
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmailUserIdNull()
        {
            var succes = UserManagerDataOperation.UpdateEmailUser(0, string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
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
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdUNSucces()
        {
            var succes = UserManagerDataOperation.UpdatePasswordUser("NO EXIST", "newEmail@gmail.com");
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdNull()
        {
            var succes = UserManagerDataOperation.UpdatePasswordUser(string.Empty, string.Empty);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }
    }
}
