using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JeopardyGame.Data.Exceptions;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using Xunit;
using System.Security.Cryptography.X509Certificates;

namespace TestJeopardyServidor.TestService
{
    public class TestUpdateUserPlayerFixture : IDisposable
    {
        public readonly User userTest1;
        public readonly Player playerTest;
        public readonly State stateTest;
        public readonly State invalidStateTest;
        public readonly int idUserTest;
        public readonly int idPlayerTest;

        public TestUpdateUserPlayerFixture()
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
            UserManagerDataOperation.SavePlayerInDataBase(userTest1, stateTest, playerTest);
            invalidStateTest = new State();
        }

        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            using (var transaction = contextBD.Database.BeginTransaction())
            {
                try
                {
                   
                        transaction.Rollback();
                 
                }
                catch (Exception ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }
    }

    public class TestUpdateUserPlayerOperations : IClassFixture<TestUpdateUserPlayerFixture>
    {
        private readonly TestUpdateUserPlayerFixture _fixture;
         private readonly int ID_USER_TO_UPDATE = 22;
        private readonly int ID_PLAYER_TO_UPDATE = 25;
        private readonly int ID_THAT_DOES_NOT_EXIST = 1;

        private readonly string USERNAME_USER_TO_RECOVER = "tris";
        private readonly string USERNAME_DOES_NOT_EXIST = "ThisDoesntExist";
        private readonly int ID_STATE = 1;
        private readonly int NOT_EXISTANCE_ID_STATE = 10;

        public TestUpdateUserPlayerOperations(TestUpdateUserPlayerFixture fixtures)
        {
            _fixture = fixtures;
        }

        [Fact]
        public void TestUpdatedPlayerReportedSucces()
        {
            using (var context = new JeopardyDBContainer())
            {
                var actualResult = UserManagerDataOperation.UpdatePlayerReported(ID_PLAYER_TO_UPDATE);
                Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            }
        }

        [Fact]
        public void TestUpdatedNotExistancePlayerReported()
        {
            var actualResult = UserManagerDataOperation.UpdatePlayerReported(ID_THAT_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }


    }



}
