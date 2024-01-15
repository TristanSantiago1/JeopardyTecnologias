using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Numerics;
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
            GenericClassServer<User> resultOfOperation = new GenericClassServer<User>();
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = newUser;
                }
            }
            catch (DbUpdateException ex)
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
            catch(DbEntityValidationException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = newPlayerSaved;
                }
            }
            catch (DbUpdateException ex)
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = userConsulted;
                }
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
        public static GenericClassServer<User> GetUserByUserName(String userName)
        {
            GenericClassServer<User> resultOfOperation = new GenericClassServer<User>();
            if (string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var user = contextBD.Users.FirstOrDefault(u => u.UserName == userName);
                    if (user != null)
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = user;
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

        public static GenericClassServer<int> UpdatePlayerReported(int idPlayerReported)
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
                    var player = GetPlayerByIdPlayer(idPlayerReported);
                    if (player.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        player.ObjectSaved.NoReports++;
                        contextBD.Entry(player.ObjectSaved).State = EntityState.Modified;
                        int resultUpdate = contextBD.SaveChanges();
                        if (resultUpdate != NULL_INT_VALUE)
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = resultUpdate;
                    }
                    else
                    {
                        resultOfOperation.ObjectSaved = default;
                        resultOfOperation.CodeEvent = player.CodeEvent;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (DbUpdateException ex)
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = playerConsulted;
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = playerConsulted;
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
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                    resultOfOperation.ObjectSaved = stateConsulted;
                }
            }
            catch (InvalidOperationException ex)
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

        public static GenericClassServer<int> DeleteUserById(int idUser)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
            if (idUser == NULL_INT_VALUE)
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
                        var playerToDelete = contextBD.Players.FirstOrDefault(player => player.User.IdUser == userConsulted.IdUser);
                        if (playerToDelete != null)
                        {
                            contextBD.Players.Remove(playerToDelete);
                        }
                        contextBD.Users.Remove(userConsulted);
                        contextBD.SaveChanges();
                        resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation.CodeEvent = CodesDictionary.SAVE_CHANGES_ERROR;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                resultOfOperation.CodeEvent = CodesDictionary.ENTITY_ERROR;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation.CodeEvent = CodesDictionary.SQL_ERROR;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (DbEntityValidationException ex)
            {
                resultOfOperation.CodeEvent = CodesDictionary.ENTITY_VALIDATION;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }           
            return resultOfOperation;
        }

        public static GenericClassServer<int> UpdatePhotoPlayer(int idPlayer, int imageId)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (idPlayer == NULL_INT_VALUE || imageId == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var player = contextBD.Players.FirstOrDefault(p => p.IdPlayer == idPlayer);
                    if (player != null)
                    {
                        player.IdAvatarActual = imageId;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent != 0)
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
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

        public static GenericClassServer<int> UpdateUserName(int idUser, string editedName)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(editedName) || idUser == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var userToUpdate = contextBD.Users.FirstOrDefault(u =>u.IdUser == idUser);
                    if (userToUpdate != null)
                    {
                        userToUpdate.Name = editedName;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent != 0)
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;
                    }
                    else
                    {
                        resultOfOperation.ObjectSaved = USER_NOT_FOUND;
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
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

        public static GenericClassServer<List<PlayerInfo>> GetBestPlayersPoints()
        {
            GenericClassServer <List<PlayerInfo>> resultOfOperation = new GenericClassServer<List<PlayerInfo>>();
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var playersInfo = context.Players.OrderByDescending(p => p.GeneralPoints)
                        .Select(p => new PlayerInfo
                        {
                            Name = p.User.UserName,
                            Points = p.GeneralPoints ?? 0
                        }).Take(10).ToList();
                    resultOfOperation.ObjectSaved = playersInfo;
                    resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
            }
            catch(DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
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

        public static GenericClassServer<int> DeleteAllGuestUsers()
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var usersConsulted = contextBD.Users.Where(user => user.Name.Equals("")).ToList();
                    if (usersConsulted.Count > 0)
                    {
                        List<Player> playerGuests = new List<Player>();
                        foreach (User user in usersConsulted)
                        {
                            var playerToDelete = contextBD.Players.FirstOrDefault(pla => pla.User_IdUser == user.IdUser);
                            if (playerToDelete != null)
                            {
                                playerGuests.Add(playerToDelete);
                            }
                        }                        
                        if (playerGuests.Count != 0)
                        {
                            contextBD.Players.RemoveRange(playerGuests);
                        }
                        contextBD.Users.RemoveRange(usersConsulted);
                        contextBD.SaveChanges();
                    }
                    resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                }
            }
            catch (DbUpdateException ex)
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

        public static GenericClassServer<int> UpdateEmailUser(int idUser, string email)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(email) || idUser == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var user = contextBD.Users.FirstOrDefault(p => p.IdUser == idUser);
                    if (user != null)
                    {
                        user.EmailAddress = email;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent != 0)
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
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

        public static GenericClassServer<int> UpdatePasswordUser(string userName, string password)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(password) || string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var user = contextBD.Users.FirstOrDefault(p => p.UserName.Equals(userName));
                    if (user != null)
                    {
                        user.Password = password;
                        int resultOfEvent = contextBD.SaveChanges();
                        if (resultOfEvent != 0)
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                        }
                        resultOfOperation.ObjectSaved = OPERATION_DONE;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
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
    


