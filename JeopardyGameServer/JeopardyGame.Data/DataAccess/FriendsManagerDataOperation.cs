using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.DataAccess
{
    public static class FriendsManagerDataOperation
    {
        private static readonly int FRIEND_STATUS_NEW = 1;
        private static readonly int FRIEND_STATUS_ACCCEPT_REQUEST = 2;
        private static readonly int NULL_INT_VALUE = 0;
        public static GenericClassServer<List<Friend>> ConsultFriendsOfPlayer(Player player) 
        {
            GenericClassServer<List<Friend>> resultOfOperation = new GenericClassServer<List<Friend>>();
            if (player == null)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    
                    var friendsOfUser = contextBD.Friends.Where(Friend => Friend.Player_IdPlayer == player.IdPlayer || Friend.PlayerFriend_IdPlayer == player.IdPlayer).ToList();
                    resultOfOperation.ObjectSaved = friendsOfUser;
                    
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                                                    
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

        public static GenericClassServer<List<Player>> Get20NotFriendsPlayer(Player player)
        {
            GenericClassServer<List<Player>> resultOfOperation = new GenericClassServer<List<Player>>();
            if (player == null)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation); 
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var friendsOfUser = ConsultFriendsOfPlayer(player).ObjectSaved;
                    List<int> idsFriends = new List<int>();
                    if(friendsOfUser != null)
                    {
                        foreach (var friend in friendsOfUser)
                        {
                            if (friend.Player_IdPlayer == player.IdPlayer)
                            {
                                idsFriends.Add(friend.PlayerFriend_IdPlayer);
                            }
                            else
                            {
                                idsFriends.Add(friend.Player_IdPlayer);
                            }
                        }
                        idsFriends.Add(player.IdPlayer);
                        var playersNotFriends = contextBD.Players.Where(playerDataBase => !idsFriends.Contains(playerDataBase.IdPlayer)).Take(20).ToList();
                        resultOfOperation.ObjectSaved = playersNotFriends;
                                                   
                            resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        
                    }
                    else
                    {
                        resultOfOperation.ObjectSaved = null;
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }                    
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

        public static  GenericClassServer<int> DeleteFriendsRegister(int idPlayerFriend1, int idPlayerFriend2)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (idPlayerFriend1 == NULL_INT_VALUE || idPlayerFriend2 == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var friendshipToDelete = contextBD.Friends.FirstOrDefault(friendRegistry => (friendRegistry.Player_IdPlayer == idPlayerFriend1 && friendRegistry.PlayerFriend_IdPlayer == idPlayerFriend2) || (friendRegistry.Player_IdPlayer == idPlayerFriend2 && friendRegistry.PlayerFriend_IdPlayer == idPlayerFriend1));
                    contextBD.Friends.Remove(friendshipToDelete);
                    int resultEvent = contextBD.SaveChanges();
                    resultOfOperation.ObjectSaved = resultEvent;
                    if (resultEvent != NULL_INT_VALUE)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
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

        public static GenericClassServer<int> AcceptFriendRequest(int idPlayerFriend1, int idPlayerFriend2)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (idPlayerFriend1 == NULL_INT_VALUE || idPlayerFriend2 == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var friendshipToChange = contextBD.Friends.FirstOrDefault(friendRegistry => (friendRegistry.Player_IdPlayer == idPlayerFriend1 && friendRegistry.PlayerFriend_IdPlayer == idPlayerFriend2) || (friendRegistry.Player_IdPlayer == idPlayerFriend2 && friendRegistry.PlayerFriend_IdPlayer == idPlayerFriend1));
                    friendshipToChange.IdFriendState = FRIEND_STATUS_ACCCEPT_REQUEST;
                    contextBD.Entry(friendshipToChange).State = EntityState.Modified;
                    int resultEvent = contextBD.SaveChanges();
                    resultOfOperation.ObjectSaved = resultEvent;
                    if (resultEvent != NULL_INT_VALUE)
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
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

        public static GenericClassServer<int> SendFriendRequest(int idPlayerSender, int idPlayerCatcher)
        {
            GenericClassServer<int> resultOfOperation = new GenericClassServer<int>();
            if (idPlayerCatcher == NULL_INT_VALUE || idPlayerSender == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersDataBase(resultOfOperation);
            }
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    Friend newRelationShip = new Friend();
                    newRelationShip.IdFriendState = NULL_INT_VALUE;
                    newRelationShip.Player_IdPlayer = idPlayerSender;
                    newRelationShip.PlayerFriend_IdPlayer = idPlayerCatcher;
                    newRelationShip.IdFriendState = FRIEND_STATUS_NEW;
                    contextBD.Friends.Add(newRelationShip);
                    int resultEvent = contextBD.SaveChanges();
                    resultOfOperation.ObjectSaved = resultEvent;
                    if (resultEvent != NULL_INT_VALUE)
                    {                        
                        resultOfOperation.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultOfOperation.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    }                                  
                }
            }
            catch (DbUpdateException ex)
            {
                resultOfOperation = ExceptionHandler.HandleExceptionDataAccesLevel(resultOfOperation, ex);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
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

    }
}
