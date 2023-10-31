using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.DataAccess
{
    public class FriendsManagerDataOperation
    {

        public List<Friend> ConsultFriendsOfPlayer(Player player)
        {
            if (player == null) return null;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var friendsOfUser = context.Friends.Where(Friend => Friend.Player_IdPlayer == player.IdPlayer || Friend.PlayerFriend_IdPlayer == player.IdPlayer).ToList();
                    return friendsOfUser;                  
                }
            }
            catch (SqlException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex,ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return null; 
        }

        public List<Player> Get20NotFriendsPlayer(Player player)
        {
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var friendsOfUser = context.Friends.Where(Friend => Friend.Player_IdPlayer == player.IdPlayer || Friend.PlayerFriend_IdPlayer == player.IdPlayer).ToList();
                    List<int> idsF = new List<int>();
                    foreach (var friend in friendsOfUser)
                    {
                        if (friend.Player_IdPlayer == player.IdPlayer)
                        {
                            idsF.Add(friend.PlayerFriend_IdPlayer);
                        }
                        else
                        {
                            idsF.Add(friend.Player_IdPlayer);
                        }
                    }
                    idsF.Add(player.IdPlayer);
                    var playersNotFriends = context.Players.Where(p => !idsF.Contains(p.IdPlayer)).Take(20).ToList();                 
                    return playersNotFriends;
                }
            }
            catch (ArgumentNullException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return null; 
        }

        public int DeleteFriendsRegister(int idPlayer1, int idPlayer2)
        {
            if (idPlayer1 == 0 || idPlayer2 == 0) return 0;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var frienshipToDelete = context.Friends.FirstOrDefault(f => (f.Player_IdPlayer == idPlayer1 && f.PlayerFriend_IdPlayer == idPlayer2) || (f.Player_IdPlayer == idPlayer2 && f.PlayerFriend_IdPlayer == idPlayer1));
                    context.Friends.Remove((Friend)frienshipToDelete);
                    int result = context.SaveChanges();
                    if (result != 0)
                    {
                        return result;
                    }
                    return 0;
                }
            }
            catch (ArgumentNullException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {               
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return 0;
        }

        public int AcceptFriendRequest(int idUser1, int idUser2)
        {
            if (idUser1 == 0 || idUser2 == 0) return 0;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var frienshipToChange = context.Friends.FirstOrDefault(f => (f.Player_IdPlayer == idUser1 && f.PlayerFriend_IdPlayer == idUser2) || (f.Player_IdPlayer == idUser2 && f.PlayerFriend_IdPlayer == idUser1));
                    frienshipToChange.IdFriendState = 2;
                    context.Entry(frienshipToChange).State = EntityState.Modified;
                    int result = context.SaveChanges();
                    if (result != 0)
                    {
                        return result;
                    }
                    return 0;
                }
            }
            catch (ArgumentNullException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return 0;
        }

        public int SendFriendRequest(int idUserSender, int idUserReciver)
        {
            if (idUserReciver == 0 || idUserSender == 0) return 0;
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
                    int result = context.SaveChanges();
                    if (result != 0)
                    {
                        return result;
                    }
                    var frienshipToChange = context.Friends.Where(f => (f.Player_IdPlayer == idUserSender && f.PlayerFriend_IdPlayer == idUserReciver) || (f.Player_IdPlayer == idUserReciver && f.PlayerFriend_IdPlayer == idUserSender));
                    if (!frienshipToChange.Any())
                    {
                        
                    }           
                    return 0;
                }
            }
            catch (ArgumentNullException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SqlException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (EntityException ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (Exception ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
            }
            return 0;
        }

    }
}
