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
    public class TestGameCreationFixture : IDisposable
    {
        public readonly Game gameTest;
        public readonly Game invalidGameTest;
        public TestGameCreationFixture()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            gameTest = new Game()
            {
                RoomCode = 00000,
                Host_IdHost = 2
            };
            invalidGameTest = new Game()
            {
                RoomCode = 1111111111,
                Host_IdHost = 1
            };

        }

        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGames00000);
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
    public class TestGame : IClassFixture<TestGameCreationFixture>
    {
        private TestGameCreationFixture _fixture;
        public TestGame(TestGameCreationFixture fixture) 
        { 
            _fixture = fixture;
        }

        [Fact]
        public void TestSaveGameSucess()
        {
            var succes = GameDataOperation.SaveNewGameInDataBase(_fixture.gameTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, succes.CodeEvent);
        }

        [Fact]
        public void TestTrySaveInvalidGame()
        {
            var succes = GameDataOperation.SaveNewGameInDataBase(_fixture.invalidGameTest);
            Assert.Equal(CodesDictionary.SAVE_CHANGES_ERROR, succes.CodeEvent);
        }

        [Fact]
        public void TestTrySaveNullGame()
        {
            var succes = GameDataOperation.SaveNewGameInDataBase(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, succes.CodeEvent);
        }

    }

    
}
