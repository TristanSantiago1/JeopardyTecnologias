using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using JeopardyGame.Data.DataAccess;
using Xunit;

namespace TestJeopardyServidor.TestService
{
    public class TestSavePlayerOperationsFixture : IDisposable
    {

        public readonly User userTest1;
        public readonly Player playerTest;
        public readonly State stateTest;
        public readonly State invalidStateTest;

        public TestSavePlayerOperationsFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            userTest1 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest1).ObjectSaved.IdUser;
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
            invalidStateTest = new State();
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



    public class TestSavePlayerOperations : IClassFixture<TestSavePlayerOperationsFixture>
    {
        private readonly TestSavePlayerOperationsFixture _fixture;


        public TestSavePlayerOperations(TestSavePlayerOperationsFixture fixtures)
        {
            _fixture = fixtures;
        }


        [Fact]
        public void TestSavePlayerSucces()
        {
            var actualResponse = UserManagerDataOperation.SavePlayerInDataBase(_fixture.userTest1, _fixture.stateTest, _fixture.playerTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestAvoidSavingPlayerWithInvalidParameters()
        {
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(_fixture.userTest1, _fixture.invalidStateTest, _fixture.playerTest);
            Assert.Equal(CodesDictionary.SAVE_CHANGES_ERROR, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestAvoidSavingPlayerWithNullValue()
        {
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(null,null,null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, playerSucces.CodeEvent);
        }


    }
}


