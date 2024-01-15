using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
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

namespace TestJeopardyServidor.TestService
{
    public class TestFriendInvitationFixture : IDisposable
    {
        public readonly Player notExistancePlayerTest;

        public TestFriendInvitationFixture() 
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                { 
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteFrienship5354);
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


    public class TestFriendInvitation : IClassFixture<TestFriendInvitationFixture>
    {
        TestFriendInvitationFixture _fixture;
        private readonly int ID_PLAYER1 = 53;
        private readonly int ID_PLAYER2 = 54;
        private readonly int ID__NOT_EXISTANCE_PLAYER1 = 1;
        private readonly int ID_NOT_EXISTANCE_PLAYER2 = 2;
        private readonly int ID_FRIEND_REQUEST_STATE = 1;
        private readonly int ID_FRIEND_STATE = 2;

        public TestFriendInvitation(TestFriendInvitationFixture fixture)
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestSendFriendsRequestSucces()
        {
            var actualResult = FriendsManagerDataOperation.SendFriendRequest(ID_PLAYER1, ID_PLAYER2);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestSendRequestNotExistanceFriends()
        {
            var actualResult = FriendsManagerDataOperation.SendFriendRequest(ID__NOT_EXISTANCE_PLAYER1,ID_NOT_EXISTANCE_PLAYER2);
            Assert.Equal(CodesDictionary.SAVE_CHANGES_ERROR, actualResult.CodeEvent);
        }

        [Fact]
        public void TestAcceptFriendsRequestSucces()
        {
            FriendsManagerDataOperation.SendFriendRequest(ID_PLAYER1, ID_PLAYER2);
            var actualResult = FriendsManagerDataOperation.AcceptFriendRequest(ID_PLAYER1, ID_PLAYER2);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestAcceptNotExistanceFriendsRequestSucces()
        {
            var actualResult = FriendsManagerDataOperation.AcceptFriendRequest(ID__NOT_EXISTANCE_PLAYER1, ID_NOT_EXISTANCE_PLAYER2);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteFriendSucces()
        {
            FriendsManagerDataOperation.SendFriendRequest(ID_PLAYER1, ID_PLAYER2);
            FriendsManagerDataOperation.AcceptFriendRequest(ID_PLAYER1, ID_PLAYER2);
            var actualResult = FriendsManagerDataOperation.DeleteFriendsRegister(ID_PLAYER1, ID_PLAYER2);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestDeleteNotExistanceFriend()
        {
            var actualResult = FriendsManagerDataOperation.DeleteFriendsRegister(ID__NOT_EXISTANCE_PLAYER1, ID_NOT_EXISTANCE_PLAYER2);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }




    }

}
