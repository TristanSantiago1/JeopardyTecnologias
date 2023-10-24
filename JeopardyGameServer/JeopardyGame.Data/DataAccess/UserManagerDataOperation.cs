using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Security.Cryptography;
using System.ServiceModel.Dispatcher;
using System.Text;
using System.Threading.Tasks;
using ExceptionHandler = JeopardyGame.Data.Exceptions.ExceptionHandler;

namespace JeopardyGame.Data.DataAccess
{
    public class UserManagerDataOperation
    {
        public User SaveUserInDataBase(User user)
        {
            if (user == null) return null;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var newUser = context.Users.Add(user);
                    context.SaveChanges();
                    return newUser;
                }
            }catch(SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);                
            }
            catch (EntityException entityEx) 
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);               
            }
            catch(Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return null; ;
        }
        public Player SavePlayerInDataBase(User userSaved, State defaultState, Player newPlayer)
        {
            if (userSaved == null || defaultState == null || newPlayer == null) return null;
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
                    return newPlayerSaved;
                }
            }
            catch (SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);               
            }
            catch (EntityException entityEx)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);              
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);                
            }
            return null;
        }

        public User GetUserById(int idUser)
        {
            if (idUser == 0) return null;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var userConsulted = context.Users.Find(idUser);
                    return userConsulted;
                }
            }
            catch (SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException entityEx)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return null;
        }
        public User GetUserByUserName(String userName)
        {
            using (var context = new JeopardyDBContainer())
            {
                var userFindedByUserName = context.Users.FirstOrDefault(u => u.UserName == userName);
                return userFindedByUserName;
            }
        }

        public Player GetPlayerByIdUser(int idUser)
        {
            using (var context = new JeopardyDBContainer())
            {
                var playerConsulted = context.Players.FirstOrDefault(player => player.User_IdUser == idUser);
                return playerConsulted;
            }

        }
        public Player GetPlayerByIdPlayer(int idPlayer)
        {
            using (var context = new JeopardyDBContainer())
            {
                var playerConsulted = context.Players.FirstOrDefault(player => player.IdPlayer == idPlayer);
                return playerConsulted;
            }

        }

        public State GetStateById(int idSatate)
        {
            using (var context = new JeopardyDBContainer())
            {
                var stateConsulted = context.States.Find(idSatate);
                return stateConsulted;
            }
        }

        public bool VerifyPassword(string password, string hashedPassword)
        {
            try
            {
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
            catch (SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException entityEx)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return false;
        }

        public int ValidateIfEmailExist(String email)
        {
            int EXIST = 0;
            int NOT_EXIST = 1;
            int ERROR = -1;
            if (email.Length == 0) return ERROR;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    bool exist = context.Users.Any(u => u.EmailAddress == email);
                    if (!exist)
                    {
                        return NOT_EXIST;
                    }
                    return EXIST;
                }
            }
            catch (SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException entityEx)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return ERROR;
        }   
        public int ValidateIfUserNameExist(String userName)
        {
            int EXIST = 0;
            int NOT_EXIST = 1;
            int ERROR = -1;
            if (userName.Length == 0) return ERROR;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    bool exist = context.Users.Any(u => u.UserName == userName);
                    if (!exist)
                    {
                        return NOT_EXIST;
                    }
                    return EXIST;
                }
            }
            catch (SqlException sqlE)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(sqlE, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException entityEx)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(entityEx, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return ERROR;
        }


    }
}


