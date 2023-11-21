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

namespace JeopardyGame.Data.Exceptions
{
    public static class ExceptionHandler
    {
        public static void LogException(Exception exception, String Category)
        {
            string logMessage = $"[{DateTime.Now}] Type: {Category}\n Exception: {exception.Message} \nStackTrace: {exception.StackTrace}\n";
            SeriLogConfig logConfig = new SeriLogConfig();  
            File.AppendAllText(logConfig.getPath(), logMessage);
        }

        public static GenericClassServer<T> HandleExceptionDataAccesLevel<T>(GenericClassServer<T> resultException, Exception exception)
        {
            resultException.ObjectSaved = default;
            if (exception is InvalidOperationException)
            {
                resultException.CodeEvent = ExceptionDictionary.INVALID_OPERATION;
                return resultException;
            }
            if (exception is ArgumentNullException)
            {
                resultException.CodeEvent = ExceptionDictionary.SAVE_CHANGES_ERROR;
                return resultException;
            }
            if (exception is DbUpdateException)
            {
                resultException.CodeEvent = ExceptionDictionary.SAVE_CHANGES_ERROR;
                return resultException;
            }
            if (exception is EntityException)
            {
                resultException.CodeEvent = ExceptionDictionary.ENTITY_ERROR;
                return resultException;
            }
            if (exception is SqlException)
            {
                resultException.CodeEvent = ExceptionDictionary.SQL_ERROR;
                return resultException;
            }           
            if (exception is FormatException)
            {
                resultException.CodeEvent = ExceptionDictionary.FORMMAT_EXCEPTION;
                return resultException;
            }
            if(exception is RankException)
            {
                resultException.CodeEvent = ExceptionDictionary.RANK_EXCEPTION;
                return resultException;
            }
            if (exception is Exception)
            {
                resultException.CodeEvent = ExceptionDictionary.UNKOWN_EXCEPTION_OCURRED;
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
            resultWithNull.CodeEvent = ExceptionDictionary.NULL_PARAEMETER;
            return resultWithNull;
        }

        public static GenericClass<T> HandleNullParametersService<T>(GenericClass<T> resultWithNull)
        {
            resultWithNull.ObjectSaved = default;
            resultWithNull.CodeEvent = ExceptionDictionary.NULL_PARAEMETER;
            return resultWithNull;
        }
    }

    
}
