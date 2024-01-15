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
using System.Numerics;

namespace TestJeopardyServidor.TestService
{
    public class TestGamePlayersFixture : IDisposable
    {
        public GamePlayer gamePlayerTest;
        public GamePlayer invalidGamePlayer;
        private int ID_PLAYER = 25;

        public TestGamePlayersFixture() 
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            Game gameTest = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            GameDataOperation.SaveNewGameInDataBase(gameTest);
            gamePlayerTest = new GamePlayer()
            {
                Game_RoomCode = gameTest.RoomCode,
                PlaceInGame = 1,
                Player_IdPlayer = ID_PLAYER,
                PointsInGame = 10,
                Game = gameTest
            };
            invalidGamePlayer = new GamePlayer()
            {
                Game_RoomCode = 000000,
                PlaceInGame = 10,
                Player_IdPlayer = 1,
                PointsInGame = 0,
                Game = new Game()
            };
        }

        public void Dispose()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGamePlayers);
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


    public class TestGamePlayers : IClassFixture<TestGamePlayersFixture>
    {
        private TestGamePlayersFixture _fixture;
        public TestGamePlayers(TestGamePlayersFixture fixture)
        {
            _fixture = fixture;
        }

        [Fact]
        public void TestSaveGamePlayerSucces()
        {
            var actualResult = GameDataOperation.SaveGamePlayerInDataBase(_fixture.gamePlayerTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult);
        }

        [Fact]
        public void TestSaveNotExistanceGamePlayer()
        {
            var actualResult = GameDataOperation.SaveGamePlayerInDataBase(_fixture.invalidGamePlayer);
            Assert.Equal(CodesDictionary.SAVE_CHANGES_ERROR, actualResult);
        }

        [Fact]
        public void TestSaveNullGamePlayer()
        {
            var actualResult = GameDataOperation.SaveGamePlayerInDataBase(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult);
        }

        [Fact]
        public void TestUpdatePlayerPointsSucces()
        {            
            var actualResult = GameDataOperation.UpdatePlayersPoints(_fixture.gamePlayerTest);
            Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResult);
        }

        [Fact]
        public void TestUpdateNotExistancePlayerPoints()
        {
            var actualResult = GameDataOperation.UpdatePlayersPoints(_fixture.invalidGamePlayer);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResult);
        }

        [Fact]
        public void TestUpdateNullPlayerPoints()
        {
            var actualResult = GameDataOperation.UpdatePlayersPoints(null);
            Assert.Equal(CodesDictionary.NULL_PARAEMETER, actualResult);
        }

    }


}
