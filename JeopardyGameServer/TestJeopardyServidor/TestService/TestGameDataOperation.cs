using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace TestJeopardyServidor.TestService
{
    public class TestGameDataOperation : IClassFixture<TestFixturesForDbUp>
    {

        private readonly TestFixturesForDbUp _fixture;
        public TestGameDataOperation(TestFixturesForDbUp fixtures)
        {
            _fixture = fixtures;
        }

        [Fact]
        public void TestSaveGameSucces()
        {
            Game game = new Game()
            {
                RoomCode = 00000,
                Host_IdHost = 2
            };
            var succes = GameDataOperation.SaveNewGameInDataBase(game);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestSaveGameUnsuscess()
        {
            Game game = new Game()
            {
                RoomCode = 1111111111,
                Host_IdHost = 1
            };
            var succes = GameDataOperation.SaveNewGameInDataBase(game);
            Assert.Equal(ExceptionDictionary.SAVE_CHANGES_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestSaveGameNUll()
        {
            Game game = null;
            var succes = GameDataOperation.SaveNewGameInDataBase(game);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestGetGameSucces()
        {
            Game game = new Game()
            {
                RoomCode = 222222,
                Host_IdHost = 2
            };
            GameDataOperation.SaveNewGameInDataBase(game);
            var succes = GameDataOperation.GetGameByRoomCode(game.RoomCode);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetGameUnsucces()
        {
            var succes = GameDataOperation.GetGameByRoomCode(1);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetGameNull()
        {
            var succes = GameDataOperation.GetGameByRoomCode(0);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }


        [Fact]
        public void TestGet10CategoriesSucces()
        {
            var succes = GameDataOperation.Get10Categories();
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetQuestionsSucces()
        {
            var categories = GameDataOperation.Get10Categories();
            var succes = GameDataOperation.GetQuestionsByCategory(categories.ObjectSaved);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetQuestionsUnsucess()
        {
            var categories = GameDataOperation.Get10Categories();
            var category = categories.ObjectSaved.First();
            categories.ObjectSaved.Remove(category);
            var succes = GameDataOperation.GetQuestionsByCategory(categories.ObjectSaved);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetQuestionsNull()
        {
            var succes = GameDataOperation.GetQuestionsByCategory(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestGetFinalQuestionSucces()
        {
            var succes = GameDataOperation.GetFinalQuestions();
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersSucces()
        {
            var categories = GameDataOperation.Get10Categories();
            var questions = GameDataOperation.GetQuestionsByCategory(categories.ObjectSaved);
            var succes = GameDataOperation.GetAwnsersOfQuestions(questions.ObjectSaved);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersUnsucces()
        {
            var categories = GameDataOperation.Get10Categories();
            var questions = GameDataOperation.GetQuestionsByCategory(categories.ObjectSaved);
            var question = questions.ObjectSaved.First();
            questions.ObjectSaved.Remove(question);     
            var succes = GameDataOperation.GetAwnsersOfQuestions(questions.ObjectSaved);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersNull()
        {
            var succes = GameDataOperation.GetAwnsersOfQuestions(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

        [Fact]
        public void TestSaveGamePlayerSucces()
        {
            User userTest = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            Game game = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            GameDataOperation.SaveNewGameInDataBase(game);
            var gameConsult = GameDataOperation.GetGameByRoomCode(game.RoomCode);
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = game.RoomCode,
                PlaceInGame = 10,
                Player_IdPlayer = playerSucces.ObjectSaved.IdPlayer,
                PointsInGame =0,
                Game = gameConsult.ObjectSaved
            };
            var succes = GameDataOperation.SaveGamePlayerInDataBase(player);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes);
        }

        [Fact]
        public void TestSaveGamePlayerUnsucces()
        {           
            Game game = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            GameDataOperation.SaveNewGameInDataBase(game);
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = game.RoomCode,
                PlaceInGame = 10,
                Player_IdPlayer = -1,
                PointsInGame = 0,
            };
            var succes = GameDataOperation.SaveGamePlayerInDataBase(player);
            Assert.Equal(ExceptionDictionary.ARGUMENT_NULL, succes);
        }

        [Fact]
        public void TestSaveGamePlayerNull()
        {
            var succes = GameDataOperation.SaveGamePlayerInDataBase(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes);
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
            var idUser = UserManagerDataOperation.SaveUserInDataBase(userTest);
            Player playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser.ObjectSaved.IdUser,
            };
            State state = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            var playerSucces = UserManagerDataOperation.SavePlayerInDataBase(userTest, state, playerTest);
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = 22222,
                PlaceInGame = 10,
                Player_IdPlayer = playerSucces.ObjectSaved.IdPlayer,
                PointsInGame = 69,
            };
            var succes = GameDataOperation.UpdatePlayersPoints(player);
            Assert.Equal(ExceptionDictionary.SUCCESFULL_EVENT, succes);
        }

        [Fact]
        public void TestUpdatePlayerPointsUnsucces()
        {
            GamePlayer player = new GamePlayer()
            {
                Game_RoomCode = 11111,
                PlaceInGame = 10,
                Player_IdPlayer = -1,
                PointsInGame = 0,
            };
            var succes = GameDataOperation.UpdatePlayersPoints(player);
            Assert.Equal(ExceptionDictionary.UNSUCCESFULL_EVENT, succes);
        }

        [Fact]
        public void TestUpdatePlayerPointsNull()
        {
            var succes = GameDataOperation.UpdatePlayersPoints(null);
            Assert.Equal(ExceptionDictionary.NULL_PARAEMETER, succes);
        }

        [Fact]
        public void TestGetHostSucess()
        {
            var succes = GameDataOperation.GetHostIds();
            Assert.Equal(3, succes.ObjectSaved.Count());
        }

    }
}
