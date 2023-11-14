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
    public class FriendsManagerDataOperation
    { 
        public static GenericClassServer<List<Friend>> ConsultFriendsOfPlayer(Player player) 
        {
            GenericClassServer<List<Friend>> result = new GenericClassServer<List<Friend>>();
            if (player == null) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    
                    var friendsOfUser = context.Friends.Where(Friend => Friend.Player_IdPlayer == player.IdPlayer || Friend.PlayerFriend_IdPlayer == player.IdPlayer).ToList();                    
                    result.ObjectSaved = friendsOfUser;
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

        public static GenericClassServer<List<Player>> Get20NotFriendsPlayer(Player player)
        {
            GenericClassServer<List<Player>> result = new GenericClassServer<List<Player>>();
            if (player == null) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var friendsOfUser = context.Friends.Where(Friend => Friend.Player_IdPlayer == player.IdPlayer || Friend.PlayerFriend_IdPlayer == player.IdPlayer).ToList();
                    List<int> idsFriends = new List<int>();
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
                    var playersNotFriends = context.Players.Where(p => !idsFriends.Contains(p.IdPlayer)).Take(20).ToList();                 
                    result.ObjectSaved = playersNotFriends;
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

        public static  GenericClassServer<int> DeleteFriendsRegister(int idPlayer1, int idPlayer2)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            if (idPlayer1 == 0 || idPlayer2 == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var frienshipToDelete = context.Friends.FirstOrDefault(f => (f.Player_IdPlayer == idPlayer1 && f.PlayerFriend_IdPlayer == idPlayer2) || (f.Player_IdPlayer == idPlayer2 && f.PlayerFriend_IdPlayer == idPlayer1));
                    context.Friends.Remove((Friend)frienshipToDelete);
                    int resultEvent = context.SaveChanges();
                    if (resultEvent != 0)
                    {
                        result.ObjectSaved = resultEvent;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT; 
                    }                    
                }
            }
            catch (DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
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

        public static GenericClassServer<int> AcceptFriendRequest(int idUser1, int idUser2)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            if (idUser1 == 0 || idUser2 == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var frienshipToChange = context.Friends.FirstOrDefault(f => (f.Player_IdPlayer == idUser1 && f.PlayerFriend_IdPlayer == idUser2) || (f.Player_IdPlayer == idUser2 && f.PlayerFriend_IdPlayer == idUser1));
                    frienshipToChange.IdFriendState = 2;
                    context.Entry(frienshipToChange).State = EntityState.Modified;
                    int resultEvent = context.SaveChanges();
                    if (resultEvent != 0)
                    {
                        result.ObjectSaved = resultEvent;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                    }                    
                }
            }
            catch (DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
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

        public static GenericClassServer<int> SendFriendRequest(int idUserSender, int idUserReciver)
        {
            GenericClassServer<int> result = new GenericClassServer<int>();
            if (idUserReciver == 0 || idUserSender == 0) return NullParametersHandler.HandleNullParametersDataBase(result);
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    Friend newRelationShip = new Friend();
                    newRelationShip.IdFriendState = 0;
                    newRelationShip.Player_IdPlayer = idUserSender;
                    newRelationShip.PlayerFriend_IdPlayer = idUserReciver;
                    newRelationShip.IdFriendState = 1;
                    context.Friends.Add(newRelationShip);
                    int resultEvent = context.SaveChanges();
                    if (resultEvent != 0)
                    {
                        result.ObjectSaved = resultEvent;
                        result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                    }
                    //else
                    //{
                    //    var frienshipToChange = context.Friends.Where(f => (f.Player_IdPlayer == idUserSender && f.PlayerFriend_IdPlayer == idUserReciver) || (f.Player_IdPlayer == idUserReciver && f.PlayerFriend_IdPlayer == idUserSender));
                    //    if (frienshipToChange.Any())
                    //    {

                    //    }
                    //}               
                }
            }
            catch (DbUpdateException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
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

    }
}
