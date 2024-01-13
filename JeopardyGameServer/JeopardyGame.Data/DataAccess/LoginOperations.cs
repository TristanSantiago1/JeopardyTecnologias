using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.DataAccess
{
    public static class LoginOperations
    {
        private static readonly int NULL_INT_VALUE = 0;
        private static readonly int VALUE_EXIST = 0;
        private static readonly int VALUE_NOT_EXIST = 1;
        public static GenericClassServer<bool> VerifyPassword(string passwordEntered, string hashedPassword)
        {
            GenericClassServer<bool> resultOfOperation = new GenericClassServer<bool>();
            if (passwordEntered.Length == NULL_INT_VALUE || hashedPassword.Length == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            if (passwordEntered.Equals(hashedPassword))
            {
                resultOfOperation.ObjectSaved = true;
                resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
            }
            else
            {
                resultOfOperation.ObjectSaved = false;
                resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
            }       
            return resultOfOperation;
        }

        public static GenericClassServer<int> ValidateIfEmailExist(String email)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(email))
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    bool exist = contextBD.Users.Any(user => user.EmailAddress == email);
                    if (!exist)
                    {
                        resultOfOperation.ObjectSaved = VALUE_NOT_EXIST;
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        resultOfOperation.ObjectSaved = VALUE_EXIST;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (DbEntityValidationException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;
        }

        public static GenericClassServer<int> ValidateIfUserNameExist(String userName)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    bool exist = contextBD.Users.Any(user => user.UserName == userName);
                    if (!exist)
                    {
                        resultOfOperation.ObjectSaved = VALUE_NOT_EXIST;
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        resultOfOperation.ObjectSaved = VALUE_EXIST;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (DbEntityValidationException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;
        }

    }
}
