using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using Xunit;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Collections.ObjectModel;
using System.Management.Automation;
using System.Xml.Linq;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;


namespace TestJeopardyServidor.TestService
{
    [CollectionDefinition("DatabaseCollection")]
    public class DatabaseCollection : ICollectionFixture<TestFixtureFoDbDown>
    {
    }

    [Collection("DatabaseCollection")]
    public class TestWithTheDataBaseDown 
    {
        private readonly TestFixtureFoDbDown _databaseFixture;
        private readonly int ID_USER1_BD = 22;
        private readonly int ID_PLAYER1_BD = 25;
        private readonly int ID_PLAYER2_BD = 26;
        private readonly int ID_STATE = 1;
        private readonly int ID_AVATAR = 1;
        private readonly string EXISTING_USERNAME = "tris";
        private readonly string EXISTING_EMAIL = "tris@gmial.com";

        public TestWithTheDataBaseDown(TestFixtureFoDbDown databaseFixture)
        {
            _databaseFixture = databaseFixture;
        }


        [Fact]
        public void TestSaveUserBbDown()
        {
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(_databaseFixture.userTest1);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, userSucces.CodeEvent);
        }

        [Fact]
        public void TestSavePlayerDbDown()
        {
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(_databaseFixture.userTest1, _databaseFixture.stateTest, _databaseFixture.playerTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestGetUserByIdDbDown()
        {
            var succes = UserManagerDataOperation.GetUserById(ID_USER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestGetUserByUserNameDbDown()
        {
            var succes = UserManagerDataOperation.GetUserByUserName(EXISTING_USERNAME);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatedPlayerReportedDbDown()
        {
            var reportedSucces = UserManagerDataOperation.UpdatePlayerReported(ID_PLAYER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, reportedSucces.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserDbDown()
        {
            var player = UserManagerDataOperation.GetPlayerByIdUser(ID_USER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerDbDown()
        {
            var player = UserManagerDataOperation.GetPlayerByIdPlayer(ID_PLAYER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, player.CodeEvent);
        }


        [Fact]
        public void TestGetStateByIdStateDbDown()
        {
            var stateSucces = UserManagerDataOperation.GetStateById(ID_STATE);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, stateSucces.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdDbDown()
        {
            var succes = UserManagerDataOperation.DeleteUserById(ID_USER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerDbDown()
        {
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(ID_PLAYER1_BD, ID_AVATAR);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationDbDown()
        {
            var succes = UserManagerDataOperation.UpdateUserName(ID_USER1_BD, "newName");
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetBestPlayersPointsDbDown()
        {
            var succes = UserManagerDataOperation.GetBestPlayersPoints();
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteAllGuestDbDown()
        {
            var succes = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestUpdateEmailUserIdDbDown()
        {
            var succes = UserManagerDataOperation.UpdateEmailUser(ID_USER1_BD, "newEmail@gmail.com");
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdDbDown()
        {
            var succes = UserManagerDataOperation.UpdatePasswordUser(EXISTING_USERNAME, "NewPassword");
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestConsultFriendDbDown()
        {
            var succes = FriendsManagerDataOperation.ConsultFriendsOfPlayer(_databaseFixture.playerTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetNotFriendsDbDown()
        {
            var succes = FriendsManagerDataOperation.GetNotFriendsPlayer(_databaseFixture.playerTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteFriendsRegisterDbDown()
        {
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(ID_PLAYER1_BD, ID_PLAYER2_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestAcceptFriendDbDown()
        {
            var succes = FriendsManagerDataOperation.AcceptFriendRequest(ID_PLAYER1_BD, ID_PLAYER2_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestSendFriendRequestDbDown()
        {
            var succes = FriendsManagerDataOperation.SendFriendRequest(ID_PLAYER1_BD, ID_PLAYER2_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestBanPlayerDbDown()
        {
            var succes = FriendsManagerDataOperation.BannerUser(ID_PLAYER1_BD);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }
                

        [Fact]
        public void TestValidateEmailExistanceDbDown()
        {
            var succes = LoginOperations.ValidateIfEmailExist(EXISTING_EMAIL);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateUserNameExistanceDbDown()
        {
            var succes = LoginOperations.ValidateIfUserNameExist(EXISTING_USERNAME);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestSaveGameDbDown()
        {
            var succes = GameDataOperation.SaveNewGameInDataBase(_databaseFixture.gameTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetGameDbDown()
        {
            var succes = GameDataOperation.GetGameByRoomCode(_databaseFixture.gameTest.RoomCode);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestGet6CategoriesDbDown()
        {
            var succes = GameDataOperation.Get6Categories();
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetQuestionsDbDown()
        {
             var succes = GameDataOperation.GetQuestionsByCategory(_databaseFixture.categories);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetFinalQuestionDbDown()
        {
            var succes = GameDataOperation.GetFinalQuestions();
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersDbDown()
        {
             var succes = GameDataOperation.GetAwnsersOfQuestions(_databaseFixture.questions);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestSaveGamePlayerDbDown()
        {
            var succes = GameDataOperation.SaveGamePlayerInDataBase(_databaseFixture.gamePlayerTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes);
        }

        [Fact]
        public void TestUpdatePlayerPointsSucces()
        {
            var succes = GameDataOperation.UpdatePlayersPoints(_databaseFixture.gamePlayerTest);
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes);
        }

        [Fact]
        public void TestGetHostDbDown()
        {
            var succes = GameDataOperation.GetHostIds();
            Assert.Equal(CodesDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

    }

}
