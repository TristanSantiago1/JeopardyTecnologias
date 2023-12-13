using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Runtime.Remoting.Contexts;
using System.Security.Cryptography;
using System.ServiceModel.Dispatcher;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;
using ExceptionHandler = JeopardyGame.Data.Exceptions.ExceptionHandler;

namespace JeopardyGame.Data.DataAccess
{
    public static class UserManagerDataOperation
    {
        private static readonly int NULL_INT_VALUE = 0;
        private static readonly int USER_NOT_FOUND = -1;
        private static readonly int OPERATION_DONE = 1;
        public static GenericClassServer<User> SaveUserInDataBase(User user)
        {
            GenericClassServer<User> resultOfOperation  = new GenericClassServer<User>();
            if (user == null)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var newUser = contextBD.Users.Add(user);
                    int resultEvent = contextBD.SaveChanges();
                    if (resultEvent != NULL_INT_VALUE)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = newUser;                                      
                }
            }
            catch(DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }                    
            return resultOfOperation; 
        }


        public static GenericClassServer<Player> SavePlayerInDataBase(User userSaved, State defaultState, Player newPlayer)
        {
            GenericClassServer<Player> resultOfOperation = new GenericClassServer<Player>();
            if (userSaved == null || defaultState == null || newPlayer == null)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    contextBD.Users.Attach(userSaved);
                    contextBD.States.Attach(defaultState);
                    newPlayer.User = userSaved;
                    newPlayer.State = defaultState;
                    var newPlayerSaved = contextBD.Players.Add(newPlayer);
                    int resultEvent = contextBD.SaveChanges();
                    if (resultEvent != NULL_INT_VALUE)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = newPlayerSaved;                   
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }       
            return resultOfOperation;
        }

        public static GenericClassServer<User> GetUserById(int idUser)
        {
            GenericClassServer<User> resultOfOperation = new GenericClassServer<User>();
            if (idUser == 0)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var userConsulted = contextBD.Users.Find(idUser);
                    if (userConsulted != null)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = userConsulted;                    
                }
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }         
            return resultOfOperation;
        }
        public static GenericClassServer<User> GetUserByUserName(String userName)
        {
            GenericClassServer<User> resultOfOperation = new GenericClassServer<User>();
            if (userName == null) 
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation); 
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var user = contextBD.Users.FirstOrDefault(u => u.UserName == userName);
                    if(user != null)
                    {                        
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = user;
                }
            }
            catch(ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            } 
            return resultOfOperation;
        }

        public static GenericClassServer<int> UpdatePlayer(int idPlayerReported)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (idPlayerReported == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var player = GetPlayerByIdPlayer(idPlayerReported).ObjectSaved;
                    if (player != null)
                    {
                        player.NoReports++;
                        contextBD.Entry(player).State = EntityState.Modified;
                        int resultUpdate = contextBD.SaveChanges();
                        if (resultUpdate != NULL_INT_VALUE)
                        {                            
                            resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = resultUpdate;
                    }
                    else
                    {
                        resultOfOperation.ObjectSaved = default;
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }                                    
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch(DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }         
            return resultOfOperation;
        }


        public static GenericClassServer<Player> GetPlayerByIdUser(int idUser)
        {
            GenericClassServer<Player> resultOfOperation = new GenericClassServer<Player>();
            if (idUser == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var playerConsulted = contextBD.Players.FirstOrDefault(player => player.User_IdUser == idUser);
                    if (playerConsulted != null)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = playerConsulted;
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }   
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;

        }
        public static GenericClassServer<Player> GetPlayerByIdPlayer(int idPlayer)
        {
            GenericClassServer<Player> resultOfOperation = new GenericClassServer<Player>();
            if (idPlayer == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var playerConsulted = contextBD.Players.FirstOrDefault(player => player.IdPlayer == idPlayer);
                    if (playerConsulted != null)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = playerConsulted;                    
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;

        }

        public static GenericClassServer<State> GetStateById(int idSatate)
        {
            GenericClassServer<State> resultOfOperation = new GenericClassServer<State>();
            if (idSatate == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var stateConsulted = contextBD.States.Find(idSatate);
                    if (stateConsulted != null)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = stateConsulted;                    
                }
            }
            catch (InvalidOperationException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;
        }

        public static void DeleteUserById(int idUser)
        {
            if (idUser != NULL_INT_VALUE)
            {
                try
                {
                    using (var contextBD = new JeopardyDBContainer())
                    {
                        var userConsulted = contextBD.Users.Find(idUser);
                        if (userConsulted != null)
                        {
                            contextBD.Users.Remove(userConsulted);
                        }                        
                    }
                }
                catch (SqlException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (EntityException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }          
        }

        public static GenericClassServer<int> UpdatePhotoPlayer (int idPlayer, int imageId)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var player = contextBD.Players.FirstOrDefault(p => p.IdPlayer == idPlayer);
                    if (player != null)
                    {
                        player.IdAvatarActual = imageId;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent == 0)
                        {
                            resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;
        }
        public static GenericClassServer<int> UpdateUserInformation(string editedName, string originalName) 
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(editedName) || string.IsNullOrEmpty(originalName))
            { 
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation); 
            }           
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var userToUpdate = contextBD.Users.FirstOrDefault(u => u.Name == originalName);
                    if (userToUpdate != null)
                    {
                        userToUpdate.Name = editedName;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent == 0)
                        {
                            resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;                        
                    }
                    else
                    {
                        resultOfOperation.ObjectSaved = USER_NOT_FOUND;
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }                   
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return resultOfOperation;
        }
        
    }

 }
    


