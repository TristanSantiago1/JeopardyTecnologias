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
    public class TestConsultGameInformationFixture : IDisposable
    {
        public readonly List<Category> categoryTest;
        public readonly List<Category> invalidCategoryTest;
        public readonly List<Question> questionTest;
        public readonly List<Question> invalidQuestionTest;
        public readonly Game invalidGameTest;

        public TestConsultGameInformationFixture()
        {           
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            Game gameTest = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            GameDataOperation.SaveNewGameInDataBase(gameTest);
            categoryTest = GameDataOperation.Get6Categories().ObjectSaved;
            questionTest = GameDataOperation.GetQuestionsByCategory(categoryTest).ObjectSaved;
            var category = categoryTest.First();
            invalidCategoryTest = new List<Category>() { category};
            var question = questionTest.First();
            invalidQuestionTest = new List<Question> { question };
        }

        public void Dispose()
        {

            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGames22222);
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

    public class TestConsultGameInformation : IClassFixture<TestConsultGameInformationFixture>
    {
        private TestConsultGameInformationFixture _fixture;
        private readonly int ROOM_CODE = 22222;
        private readonly int NOT_EXIST_ROOM_CODE = 2;

        public TestConsultGameInformation(TestConsultGameInformationFixture fixture)
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestGetGameSucces()
        {
            var actualResult = GameDataOperation.GetGameByRoomCode(ROOM_CODE);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestGetNotExistanceGame()
        {
            var actualResult = GameDataOperation.GetGameByRoomCode(NOT_EXIST_ROOM_CODE);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestGet6CategoriesSucces()
        {
            var actualResult = GameDataOperation.Get6Categories();
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.Equal(6,actualResult.ObjectSaved.Count);
        }

        [Fact]
        public void TestGetQuestionSucess()
        {
            var actualResult = GameDataOperation.GetQuestionsByCategory(_fixture.categoryTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.Equal(actualResult.ObjectSaved.Count, 19);
        }

        [Fact]
        public void TestGetQuestionIncompleteCategories()
        {
            var actualResult = GameDataOperation.GetQuestionsByCategory(_fixture.invalidCategoryTest);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.NotEqual(actualResult.ObjectSaved.Count,19);
        }

        [Fact]
        public void TestGetNullQuestions()
        {
            var actualResult = GameDataOperation.GetQuestionsByCategory(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }


        [Fact]
        public void TestGetFinalQuestionSucces()
        {
            var actualResult = GameDataOperation.GetFinalQuestions();
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.Equal(1, actualResult.ObjectSaved.CategoryIdCategory);
        }

        [Fact]
        public void TestGetAnswersSucces()
        {
            var actualResult = GameDataOperation.GetAwnsersOfQuestions(_fixture.questionTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult.CodeEvent);
            Assert.Equal(76, actualResult.ObjectSaved.Count);
        }

        [Fact]
        public void TestGetAnswersUnsucces()
        {
            var actualResult = GameDataOperation.GetAwnsersOfQuestions(_fixture.invalidQuestionTest);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult.CodeEvent);
        }

        [Fact]
        public void TestGetAnswersNull()
        {
            var actualResult = GameDataOperation.GetAwnsersOfQuestions(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult.CodeEvent);
        }

        [Fact]
        public void TestGetHostSucess()
        {
            var succes = GameDataOperation.GetHostIds();
            Assert.Equal(3, succes.ObjectSaved.Count());
        }

    }


}
