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
using JeopardyGame.Data.DataAccess;
using Xunit;

namespace TestJeopardyServidor.TestService
{
    public class TestConsultFriendsFixture : IDisposable
    {
        public readonly Player playerTestWithFriends;
        public readonly Player playerTestWitOutFriends;
        public readonly Player notExistancePlayerTest;
        private readonly int ID_PPLAYER_WITH_FRIENDS_TO_RECOVER = 25;
        private readonly int ID_PPLAYER_WITHOUT_FRIENDS_TO_RECOVER = 57;

        public TestConsultFriendsFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    playerTestWithFriends = UserManagerDataOperation.GetPlayerByIdPlayer(ID_PPLAYER_WITH_FRIENDS_TO_RECOVER).ObjectSaved;
                    playerTestWitOutFriends = UserManagerDataOperation.GetPlayerByIdPlayer(ID_PPLAYER_WITHOUT_FRIENDS_TO_RECOVER).ObjectSaved;
                    notExistancePlayerTest = new Player()
                    {
                        IdPlayer = 1,
                        GeneralPoints = 0,
                        IdAvatarActual = 0,
                        NoReports = 0,
                        State_idState = 3,
                    };                        
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

        public void Dispose()
        {
            
        }

    }

    public class TestConsultFreinds : IClassFixture<TestConsultFriendsFixture>
    {
        private TestConsultFriendsFixture _fixture;
        public TestConsultFreinds(TestConsultFriendsFixture fixture) 
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestGetFriendsOfUserWithFriendsSucces()
        {
            var actualResult = FriendsManagerDataOperation.ConsultFriendsOfPlayer(_fixture.playerTestWithFriends);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.True(actualResult.ObjectSaved.Count > 0);
        }

        [Fact]
        public void TestGetFriendsOfUserWithOutFriendsSucces()
        {
            var actualResult = FriendsManagerDataOperation.ConsultFriendsOfPlayer(_fixture.playerTestWitOutFriends);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.True(actualResult.ObjectSaved.Count == 0);
        }

        [Fact]
        public void TestGetFriendsOfNotExistanceUser()
        {
            var actualResult = FriendsManagerDataOperation.ConsultFriendsOfPlayer(_fixture.notExistancePlayerTest);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestConsultFriendsWithNullUser()
        {
            var actualResult = FriendsManagerDataOperation.ConsultFriendsOfPlayer(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }

        [Fact]
        public void TestGet20NotFriendsSucces()
        {
            var succes = FriendsManagerDataOperation.GetNotFriendsPlayer(_fixture.playerTestWitOutFriends);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
            Assert.True(succes.ObjectSaved.Count > 0);
        }

        [Fact]
        public void TestGet20NotFriendsNotExistanceUser()
        {
            var succes = FriendsManagerDataOperation.GetNotFriendsPlayer(_fixture.notExistancePlayerTest);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestConsult20NotFriendNull()
        {
            var succes = FriendsManagerDataOperation.GetNotFriendsPlayer(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }




    }

}
