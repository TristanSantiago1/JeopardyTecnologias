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
using ExceptionHandler = JeopardyGame.Data.Exceptions.ExceptionHandler;

namespace JeopardyGame.Data.DataAccess
{
    public class UserManagerDataOperation
    {
        public static GenericClassServer<User> SaveUserInDataBase(User user)
        {
            GenericClassServer<User> result  = new GenericClassServer<User>();
            if (user == null) return NullParametersHandler.HandleNullParametersDataBase(result);           
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var newUser = context.Users.Add(user);
                    context.SaveChanges();
                    result.ObjectSaved = newUser;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;                   
                }
            }
            catch(DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }                    
            return result; 
        }


        public static GenericClassServer<Player> SavePlayerInDataBase(User userSaved, State defaultState, Player newPlayer)
        {
            GenericClassServer<Player> result = new GenericClassServer<Player>();
            if (userSaved == null || defaultState == null || newPlayer == null) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    context.Users.Attach(userSaved);
                    context.States.Attach(defaultState);
                    newPlayer.User = userSaved;
                    newPlayer.State = defaultState;
                    var newPlayerSaved = context.Players.Add(newPlayer);
                    context.SaveChanges();
                    result.ObjectSaved = newPlayerSaved;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch (DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }       
            return result;
        }

        public static GenericClassServer<User> GetUserById(int idUser)
        {
            GenericClassServer<User> result = new GenericClassServer<User>();
            if (idUser == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var userConsulted = context.Users.Find(idUser);
                    result.ObjectSaved = userConsulted;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }         
            return result;
        }
        public static GenericClassServer<User> GetUserByUserName(String userName)
        {
            GenericClassServer<User> result = new GenericClassServer<User>();
            if (userName == null) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var userFindedByUserName = context.Users.FirstOrDefault(u => u.UserName == userName);
                    result.ObjectSaved = userFindedByUserName;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch(ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            } 
            return result;
        }

        public static GenericClassServer<int> UpdatePlayer(int idPlayerReported)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            if (idPlayerReported == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var player = context.Players.FirstOrDefault(p => p.IdPlayer == idPlayerReported);
                    player.NoReports++;
                    context.Entry(player).State = EntityState.Modified;
                    int resultUpdate = context.SaveChanges();
                    if (resultUpdate != 0)
                    {
                        result.ObjectSaved = resultUpdate;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                    }                   
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch(DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }         
            return result;
        }


        public static GenericClassServer<Player> GetPlayerByIdUser(int idUser)
        {
            GenericClassServer<Player> result = new GenericClassServer<Player>();
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var playerConsulted = context.Players.FirstOrDefault(player => player.User_IdUser == idUser);
                    result.ObjectSaved = playerConsulted;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }   
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            return result;

        }
        public static GenericClassServer<Player> GetPlayerByIdPlayer(int idPlayer)
        {
            GenericClassServer<Player> result = new GenericClassServer<Player>();
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var playerConsulted = context.Players.FirstOrDefault(player => player.IdPlayer == idPlayer);
                    result.ObjectSaved = playerConsulted;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            return result;

        }

        public static GenericClassServer<State> GetStateById(int idSatate)
        {
            GenericClassServer<State> result = new GenericClassServer<State>();
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var stateConsulted = context.States.Find(idSatate);
                    result.ObjectSaved = stateConsulted;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
            }
            catch (InvalidOperationException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            return result;
        }

        public static void DeleteUserById(int idUser)
        {
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var userConsulted = context.Users.Find(idUser);
                    context.Users.Remove(userConsulted);
                }
            }
            catch (SqlException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.UNKNOW);
            }
        }


        public static bool VerifyPassword(string password, string hashedPassword)
        {
            try { 
            byte[] hashBytes = Convert.FromBase64String(hashedPassword);
            byte[] salt = new byte[16];
            Array.Copy(hashBytes, 0, salt, 0, 16);
            var passBaseKeyDerFun2 = new Rfc2898DeriveBytes(password, salt, 10000, HashAlgorithmName.SHA256);
            byte[] hash = passBaseKeyDerFun2.GetBytes(20);
            for (int i = 0; i < 20; i++)
            {
                if (hashBytes[i + 16] != hash[i])
                    return false;
            }

            return true;
            }
            catch (SqlException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }            
            catch (EntityException entityEx)
            {
                ExceptionHandler.LogException(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
               ExceptionHandler.LogException(ex, ExceptionDiccionary.UNKNOW);
            }
            return false;
        }



        public static GenericClassServer<int> ValidateIfEmailExist(String email)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            int EXIST = 0;
            int NOT_EXIST = 1;
            if (email.Length == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    bool exist = context.Users.Any(u => u.EmailAddress == email);
                    if (!exist)
                    {
                        result.ObjectSaved = NOT_EXIST;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        result.CodeEvent = ExceptionDiccionary.UNSUCCESFULL_EVENT;
                        result.ObjectSaved = EXIST;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            return result;
        }
        public static GenericClassServer<int> ValidateIfUserNameExist(String userName)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            int EXIST = 0;
            int NOT_EXIST = 1;            
            if (userName.Length == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    bool exist = context.Users.Any(u => u.UserName == userName);
                    if (!exist)
                    {
                        result.ObjectSaved = NOT_EXIST;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        result.CodeEvent = ExceptionDiccionary.UNSUCCESFULL_EVENT;
                        result.ObjectSaved = EXIST;
                    }
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            return result;
        }

        public static int UpdateUserInformation(string editedName, string originalName)
        {

            if (string.IsNullOrEmpty(editedName))
            {
                return -1;
            }

            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var userToUpdate = context.Users.FirstOrDefault(u => u.Name == originalName);

                    if (userToUpdate == null)
                    {
                        return -1;
                    }

                    userToUpdate.Name = editedName;
                    context.SaveChanges();
                    return 1;
                }
            }
            catch (SqlException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.UNKNOW);
            }
            return -1;
        }

    }

}


