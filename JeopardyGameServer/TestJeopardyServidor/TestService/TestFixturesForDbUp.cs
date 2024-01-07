using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;

namespace TestJeopardyServidor.TestService
{
    public  class TestFixturesForDbUp : IDisposable
    {

        public TestFixturesForDbUp()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
        }

        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                try
                {
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGamePlayers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGames00000);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteGames22222);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeletePlayers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteUsers);
                    contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteStates);
                }
                catch (UpdateException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (DbUpdateException ex)
                {
                    ExceptionHandler.LogException(ex.GetBaseException(), ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (ArgumentNullException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (EntityException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (SqlException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (DbEntityValidationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }


    }
}
