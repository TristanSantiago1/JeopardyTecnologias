using JeopardyGame.Data.DataAccess;
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

namespace TestJeopardyServidor.TestService
{
    public  class TestGetUserPlayersFixture : IDisposable
    {
        public TestGetUserPlayersFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
        }

        public void Dispose()
        {
            
        }

    }

    public class TestGetUserPlayers : IClassFixture<TestGetUserPlayersFixture>
    {
        private readonly TestGetUserPlayersFixture _fixture;
        private readonly int ID_USER_TO_RECOVER = 22;
        private readonly int ID_PLAYER_TO_RECOVER = 25;
        private readonly int ID_THAT_DOES_NOT_EXIST = 1;
        private readonly string USERNAME_USER_TO_RECOVER = "tris";
        private readonly string USERNAME_DOES_NOT_EXIST = "ThisDoesntExist";
        private readonly int ID_STATE = 1;
        private readonly int NOT_EXISTANCE_ID_STATE = 10;

        public TestGetUserPlayers(TestGetUserPlayersFixture fixtures)
        {
            _fixture = fixtures;
        }


        [Fact]
        public void TestGetPlayerByIDSucces()
        {
            var actualResponse = UserManagerDataOperation.GetUserById(ID_USER_TO_RECOVER);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetNotEistanceUserById()
        {
            var actualResponse = UserManagerDataOperation.GetUserById(ID_THAT_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetUserByUserNameSucces()
        {
            var actualResponse = UserManagerDataOperation.GetUserByUserName(USERNAME_USER_TO_RECOVER);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetNotEistanceUserByUserName()
        {
            var actualResponse = UserManagerDataOperation.GetUserByUserName(USERNAME_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserSucces()
        {
            var actualResponse = UserManagerDataOperation.GetPlayerByIdUser(ID_USER_TO_RECOVER);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetNotExistancePlayerByIdUser()
        {
            var actualResponse = UserManagerDataOperation.GetPlayerByIdUser(ID_THAT_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerSucces()
        {
            var actualResponse = UserManagerDataOperation.GetPlayerByIdUser(ID_PLAYER_TO_RECOVER);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetNotExistancePlayerByIdPlayer()
        {
            var actualResponse = UserManagerDataOperation.GetPlayerByIdUser(ID_THAT_DOES_NOT_EXIST);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetStateByIdState()
        {
            var actualResponse = UserManagerDataOperation.GetStateById(ID_STATE);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetNotExistanceStateByIdState()
        {
            var actualResponse = UserManagerDataOperation.GetStateById(NOT_EXISTANCE_ID_STATE);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

        [Fact]
        public void TestGetBestPlayersPointsSucces()
        {
            var actualResponse = UserManagerDataOperation.GetBestPlayersPoints();
            Assert.Equal(10, actualResponse.ObjectSaved.Count);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

    }

}
