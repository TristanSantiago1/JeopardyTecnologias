using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using JeopardyGame.Data.DataAccess;
using System.Data.Entity;

namespace TestJeopardyServidor.TestService
{
    public class TestLoginFixture : IDisposable
    {
        public readonly User userTest1;
        public readonly Player playerTest;
        public readonly State stateTest;
        public int idUser;
        public int idPlayer;

        public TestLoginFixture() 
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            userTest1 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            idUser = UserManagerDataOperation.SaveUserInDataBase(userTest1).ObjectSaved.IdUser;
            playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser,
            };
            stateTest = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            idPlayer = UserManagerDataOperation.SavePlayerInDataBase(userTest1, stateTest, playerTest).ObjectSaved.IdPlayer;

        }

        public void Dispose()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGamePlayers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGames22222);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeletePlayers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteUsers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteStates);
                }
                catch (UpdateException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (DbUpdateException ex)
                {
                    ExceptionHandler.LogException(ex.GetBaseException(), CodesDictionary.FATAL_EXCEPTION);
                }
                catch (ArgumentNullException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (EntityException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (SqlException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (DbEntityValidationException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }
    }

    public class TestLogin : IClassFixture<TestLoginFixture>
    {
        private TestLoginFixture _fixture;
        private readonly string GOOD_PASSWORD = "passsword";
        private readonly string WRONG_PASSWORD = "wronngPassword";
        private readonly string EMAIL_EXIST = "userTest@gmail.com";
        private readonly string EMAIL_DOES_NOT_EXIST = "emailDOesnotExist@gmail.com";
        private readonly string EXISTING_USERNAME = "userNameTest";
        private readonly string NON_EXSITING_USERNAME = "newUserName";

        public TestLogin (TestLoginFixture fixture)
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestVerifyPassWordSucces()
        {           
            var actualResult = LoginOperations.VerifyPassword(GOOD_PASSWORD,GOOD_PASSWORD);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestVerifyPassWordUnsucces()
        {
            var actualResult = LoginOperations.VerifyPassword(GOOD_PASSWORD, WRONG_PASSWORD);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestVerifyPassWordNull()
        {
            var actualResult = LoginOperations.VerifyPassword(string.Empty, string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }


        [Fact]
        public void TestVerifyEmailExistWithNoExistanceEmail()
        {
            var actualResult = LoginOperations.ValidateIfEmailExist(EMAIL_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestVerifyEmailExistWithExistitngEmail()
        {
            var actualResult = LoginOperations.ValidateIfEmailExist(EMAIL_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }


        [Fact]
        public void TestVerifyEmailExistWithNullEmail()
        {
            var actualResult = LoginOperations.ValidateIfEmailExist(string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }
        
        [Fact]
        public void TestVerifyUserNameWithNotExistingUserName()
        {
            var actualResult = LoginOperations.ValidateIfUserNameExist(NON_EXSITING_USERNAME);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestVerifyUserNameWithExistingUserName()
        {
            var actualResult = LoginOperations.ValidateIfUserNameExist(EXISTING_USERNAME);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestVerifyUserNameWithNullUserName()
        {
            var actualResult = LoginOperations.ValidateIfUserNameExist(string.Empty);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }



    }


}
