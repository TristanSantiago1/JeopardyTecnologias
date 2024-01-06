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
        public TestWithTheDataBaseDown(TestFixtureFoDbDown databaseFixture)
        {
            _databaseFixture = databaseFixture;
        }


        [Fact]
        public void TestSaveUserBbDown()
        {
            User userTest = new User()
            {                
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };
            var userSucces = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, userSucces.CodeEvent);
        }

        [Fact]
        public void TestSavePlayerDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, playerSucces.CodeEvent);
        }

        [Fact]
        public void TestGetUserByIdDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };
            var succes = UserManagerDataOperation.GetUserById(userTest.IdUser);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestGetUserByUserNameDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "user@gmail.com",
                Name = "",
                Password = "userTestPassword",
                UserName = "userNameTest",
            };
            var succes = UserManagerDataOperation.GetUserByUserName(userTest.UserName);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatedPlayerReportedDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            var reportedSucces = UserManagerDataOperation.UpdatePlayerReported(playerTest.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, reportedSucces.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdUserDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var player = UserManagerDataOperation.GetPlayerByIdUser(userTest.IdUser);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, player.CodeEvent);
        }

        [Fact]
        public void TestGetPlayerByIdPlayerDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            var player = UserManagerDataOperation.GetPlayerByIdPlayer(playerTest.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, player.CodeEvent);
        }


        [Fact]
        public void TestGetStateByIdStateDbDown()
        {
            var stateSucces = UserManagerDataOperation.GetStateById(1);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, stateSucces.CodeEvent);
        }

        [Fact]
        public void TestDeleteUserByIdSucces()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var succes = UserManagerDataOperation.DeleteUserById(userTest.IdUser);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePhotoPlayerDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            var succes = UserManagerDataOperation.UpdatePhotoPlayer(playerTest.IdPlayer, 1);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdateUserInformationDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var succes = UserManagerDataOperation.UpdateUserInformation(userTest.IdUser, " ");
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetBestPlayersPointsDbDown()
        {
            var succes = UserManagerDataOperation.GetBestPlayersPoints();
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestDleteAllGuestDbDown()
        {
            var succes = UserManagerDataOperation.DeleteAllGuestUsers();
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestUpdateEmailUserIdDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var succes = UserManagerDataOperation.UpdateEmailUser(userTest.IdUser, "newEmail@gmail.com");
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestUpdatePasswordUserIdDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userTestPass"
            };
            var succes = UserManagerDataOperation.UpdatePasswordUser("userTestPass", "NewPassword");
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestConsultFriendDbDown()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer =22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            var succes = FriendsManagerDataOperation.ConsultFriendsOfPlayer(playerTest);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGet20NotFriendsDbDown()
        {
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 22,
            };
            var succes = FriendsManagerDataOperation.Get20NotFriendsPlayer(playerTest);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestDeleteFriendsRegisterDbDown()
        {
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 22,
            };
            Player playerTest2 = new Player()
            {
                IdPlayer = 23,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 23,
            };
            var succes = FriendsManagerDataOperation.DeleteFriendsRegister(playerTest.IdPlayer, playerTest2.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestAcceptFriendDbDown()
        {
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 22,
            };
            Player playerTest2 = new Player()
            {
                IdPlayer = 23,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 23,
            };
            var succes = FriendsManagerDataOperation.AcceptFriendRequest(playerTest.IdPlayer, playerTest2.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestSendFriendRequestDbDown()
        {
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 22,
            };
            Player playerTest2 = new Player()
            {
                IdPlayer = 23,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 23,
            };
            var succes = FriendsManagerDataOperation.SendFriendRequest(playerTest.IdPlayer, playerTest2.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestBanPlayerDbDown()
        {
            Player playerTest = new Player()
            {
                IdPlayer = 22,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = 22,
            };
            var succes = FriendsManagerDataOperation.BannerUser(playerTest.IdPlayer);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestVerifyPassWordDbDown()
        {
            User userTest = new User()
            {
                IdUser = 22,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            string passwordEntered = "Password";
            var succes = LoginOperations.VerifyPassword(userTest.Password, passwordEntered);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateEmailExistanceDbDown()
        {
            string emailEntered = "elailThatDoesntExist@gmail.com";
            var succes = LoginOperations.ValidateIfEmailExist(emailEntered);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestValidateUserNameExistanceDbDown()
        {
            string userName = "wachiturro";
            var succes = LoginOperations.ValidateIfUserNameExist(userName);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestSaveGameDbDown()
        {
            Game game = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            var succes = GameDataOperation.SaveNewGameInDataBase(game);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetGameDbDown()
        {
            Game game = new Game()
            {
                RoomCode = 222222,
                Host_IdHost = 2
            };
            var succes = GameDataOperation.GetGameByRoomCode(game.RoomCode);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }


        [Fact]
        public void TestGet10CategoriesDbDown()
        {
            var succes = GameDataOperation.Get10Categories();
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetQuestionsDbDown()
        {
            List<Category> categories = new List<Category>(){new Category() { IdCategory = 1, EnglishCategoryDescription="Biology", SpanishCategoryDescription = "Biologia"} };
            var succes = GameDataOperation.GetQuestionsByCategory(categories);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetFinalQuestionDbDown()
        {
            var succes = GameDataOperation.GetFinalQuestions();
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersDbDown()
        {
            List<Question> questions = new List<Question>() {new Question() { CategoryIdCategory= 1, EnglishQuestionDescription= "Whats", SpanishQuestionDescription = "que", IdQuestion = 1, RigthAwnser = "1", ValueWorth=300} };
            var succes = GameDataOperation.GetAwnsersOfQuestions(questions);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestSaveGamePlayerDbDown()
        {
            User userTest = new User()
            {
                IdUser = 1,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 1,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            Game game = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = game.RoomCode,
                PlaceInGame = 10,
                Player_IdPlayer = playerTest.IdPlayer,
                PointsInGame = 0,
                Game = game
            };
            var succes = GameDataOperation.SaveGamePlayerInDataBase(player);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes);
        }

        [Fact]
        public void TestUpdatePlayerPointsSucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = userTest.IdUser,
            };
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = 22222,
                PlaceInGame = 10,
                Player_IdPlayer = playerTest.IdPlayer,
                PointsInGame = 69,
            };
            var succes = GameDataOperation.UpdatePlayersPoints(player);
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes);
        }

        [Fact]
        public void TestGetHostDbDown()
        {
            var succes = GameDataOperation.GetHostIds();
            Assert.Equal(ExceptionDictionary.ENTITY_ERROR, succes.CodeEvent);
        }

    }

}
