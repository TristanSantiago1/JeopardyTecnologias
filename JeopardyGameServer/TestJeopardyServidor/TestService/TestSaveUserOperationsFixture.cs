using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using Xunit;
using JeopardyGame.Data.DataAccess;

namespace TestJeopardyServidor.TestService
{
    public class TestSaveUserOperationsFixture : IDisposable
    {

        public readonly User userTest1;
        public readonly User invalidUserTest;

        public TestSaveUserOperationsFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            userTest1 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "UsE1Te1t;="
            };
            invalidUserTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "UsE1Te1t;=",
                UserName = "userNameWithMoreThan15CharacteresTest"
            };
        }

        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
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



    public class TestSaveUserOperations : IClassFixture<TestSaveUserOperationsFixture>
    {
        private readonly TestSaveUserOperationsFixture _fixture;
        

        public TestSaveUserOperations(TestSaveUserOperationsFixture fixtures)
        {
            _fixture = fixtures;           
        }


        [Fact]
        public void TestSaveUserSucces()
        {
            var actualResponse = UserManagerDataOperation.SaveUserInDataBase(_fixture.userTest1);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestAvoidSavingUserWithInvalidUserName()
        {
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(_fixture.invalidUserTest);
            Assert.Equal(CodesDictionary.ENTITY_VALIDATION, userSucces.CodeEvent);
        }

        [Fact]
        public void TestAvoidSavingUserWithNullValue()
        {
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, userSucces.CodeEvent);
        }

    }

}
