using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using JeopardyGame.Data.Exceptions;
using System.Data.SqlClient;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Threading;

namespace JeopardyGame.Data.Exceptions
{
    public static class ExceptionHandler
    {
        public static void LogException(Exception exception, String Category)
        {
            if(exception.InnerException != null)
            {
                exception = exception.InnerException;
            }
            string logMessage = $"[{DateTime.Now}] Type: {Category}\n Exception: {exception.Data + "\n"+ exception.Message} \nStackTrace: {exception.StackTrace}\n";
            SeriLogConfig logConfig = new SeriLogConfig();
            const int MAX_TRIES = 3;
            int retryCount = 0;
            bool success = false;
            while (!success && retryCount < MAX_TRIES)
            {
                try
                {
                    File.AppendAllText(logConfig.getPath(), logMessage);
                    success = true;
                }
                catch (IOException)
                {
                    Thread.Sleep(1000);
                    retryCount++;
                }
            }
        }

        public static GenericClassServer<T> HandleExceptionDataAccesLevel<T>(GenericClassServer<T> resultException, Exception exception)
        {
            resultException.ObjectSaved = default;
            if (exception is InvalidOperationException)
            {
                resultException.CodeEvent = CodesDictionary.INVALID_OPERATION;
                return resultException;
            }
            if (exception is ArgumentNullException)
            {
                resultException.CodeEvent = CodesDictionary.SAVE_CHANGES_ERROR;
                return resultException;
            }
            if (exception is DbUpdateException)
            {
                resultException.CodeEvent = CodesDictionary.SAVE_CHANGES_ERROR;
                return resultException;
            }
            if (exception is EntityException)
            {
                resultException.CodeEvent = CodesDictionary.ENTITY_ERROR;
                return resultException;
            }
            if (exception is SqlException)
            {
                resultException.CodeEvent = CodesDictionary.SQL_ERROR;
                return resultException;
            }           
            if (exception is FormatException)
            {
                resultException.CodeEvent = CodesDictionary.FORMMAT_EXCEPTION;
                return resultException;
            }
            if(exception is RankException)
            {
                resultException.CodeEvent = CodesDictionary.RANK_EXCEPTION;
                return resultException;
            }
            if(exception is DbEntityValidationException)
            {
                resultException.CodeEvent = CodesDictionary.ENTITY_VALIDATION;
                return resultException;
            }
            if (exception != null)
            {
                resultException.CodeEvent = CodesDictionary.UNKOWN_EXCEPTION_OCURRED;
                return resultException;
            }
            return resultException;
        }

    }


    public static class NullParametersHandler
    {
        public static GenericClassServer<T> HandleNullParametersDataBase<T>(GenericClassServer<T> resultWithNull)
        {
            resultWithNull.ObjectSaved = default;
            resultWithNull.CodeEvent = CodesDictionary.NULL_PARAEMETER;
            return resultWithNull;
        }

        public static GenericClass<T> HandleNullParametersService<T>(GenericClass<T> resultWithNull)
        {
            resultWithNull.ObjectSaved = default;
            resultWithNull.CodeEvent = CodesDictionary.NULL_PARAEMETER;
            return resultWithNull;
        }

        internal static GenericClass<T> HandleNullParametersDataBase<T>(GenericClass<T> resultOfOperation)
        {
            throw new NotImplementedException();
        }
    }

    
}
