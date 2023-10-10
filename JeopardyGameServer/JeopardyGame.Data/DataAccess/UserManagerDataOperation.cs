using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
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
                    var newPlayera = context.Players.Add(newPlayer);
                    context.SaveChanges();
                    return newPlayer;
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

        public State GetStateById(int idSatate)
        {
            using (var context = new JeopardyDBContainer())
            {
                var stateConsulted = context.States.Find(idSatate);
                return stateConsulted;
            }
        }
        public bool ValidateCredentials(string userName, string password)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User user = ConexionAccesoDatos.GetUserByUserName(userName);

            if (user != null)
            {
                if (user.Password == password)
                {
                    return true;
                }
            }

            return false;
        }
    }
}


