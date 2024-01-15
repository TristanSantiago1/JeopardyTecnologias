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

namespace TestJeopardyServidor.TestService
{
    public class TestDeleteFixture : IDisposable
    {
        public readonly User userTest1;
        public readonly Player playerTest;
        public readonly State stateTest;
        public int idUser;
        public int idPlayer;

        public TestDeleteFixture()
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

    public class TestDelete : IClassFixture<TestDeleteFixture>
    {
        private TestDeleteFixture _fixture;
        private readonly int ID_DOES_NOT_EXIST = 1;
        public TestDelete(TestDeleteFixture fixture) 
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestDeleteUserByIdSucces()
        {
            var actualResult = UserManagerDataOperation.DeleteUserById(_fixture.idUser);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteNotExistanceUser()
        {
            var actualResult = UserManagerDataOperation.DeleteUserById(ID_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteNullUser()
        {
            var actualResult = UserManagerDataOperation.DeleteUserById(0);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteAllGuestSucces()
        {
            var actualResult = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteWhenThereNoGuestSucces()
        {
            UserManagerDataOperation.DeleteAllGuestUsers();
            var actualResult = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

    }

}
