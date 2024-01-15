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
using System.Data.Entity;

namespace TestJeopardyServidor.TestService
{
    public class TestUpdateUserPlayerFixture : IDisposable
    {
        

        public TestUpdateUserPlayerFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            
        }

        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.RestorePlayer25);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.RestoreUser22);
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

    public class TestUpdateUserPlayerOperations : IClassFixture<TestUpdateUserPlayerFixture>
    {
        private readonly TestUpdateUserPlayerFixture _fixture;
         private readonly int ID_USER_TO_UPDATE = 22;
        private readonly int ID_PLAYER_TO_UPDATE = 25;
        private readonly int ID_IMAGE_TO_UPDATE = 1;
        private readonly int ID_THAT_DOES_NOT_EXIST = 1;
        private readonly string NEW_NAME = "newName";
        private readonly string NEW_EMAIL = "newEmail@gmail.com";
        private readonly string NEW_PASSWORD = "newpassword";
        private readonly string USERNAME_USER_TO_RECOVER = "tris";
        private readonly string USERNAME_DOES_NOT_EXIST = "ThisDoesntExist";

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

        [Fact]
        public void TestUpdatedPhotoPlayerSucces()
        {
            var actualResult = UserManagerDataOperation.UpdatePhotoPlayer(ID_PLAYER_TO_UPDATE, ID_IMAGE_TO_UPDATE);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdatedPhotoNotExistancePlayer()
        {
            var actualResult = UserManagerDataOperation.UpdatePhotoPlayer(ID_THAT_DOES_NOT_EXIST, ID_IMAGE_TO_UPDATE);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdatedNameUserSucces()
        {
            var actualResult = UserManagerDataOperation.UpdateUserName(ID_USER_TO_UPDATE, NEW_NAME);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdatedNamenNotExistanceUser()
        {
            var actualResult = UserManagerDataOperation.UpdateUserName(ID_THAT_DOES_NOT_EXIST, NEW_NAME);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmailUserSucces()
        {
            var actualResult = UserManagerDataOperation.UpdateEmailUser(ID_USER_TO_UPDATE, NEW_EMAIL);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdateEmaiNotExistancelUser()
        {
            var actualResult = UserManagerDataOperation.UpdateEmailUser(ID_THAT_DOES_NOT_EXIST, NEW_EMAIL);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserSucces()
        {
            var actualResult = UserManagerDataOperation.UpdatePasswordUser(USERNAME_USER_TO_RECOVER, NEW_PASSWORD);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordNotExistanceUser()
        {
            var actualResult = UserManagerDataOperation.UpdatePasswordUser(USERNAME_DOES_NOT_EXIST, NEW_PASSWORD);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestBanFriednSuccess()
        {
            var actualResult = FriendsManagerDataOperation.BannerUser(ID_USER_TO_UPDATE);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestBanNotExistanceFriend()
        {
            var actualResult = FriendsManagerDataOperation.BannerUser(ID_THAT_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }


    }



}
