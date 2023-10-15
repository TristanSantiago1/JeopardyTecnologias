using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.DataAccess
{
    public class FriendsManagerDataOperation
    {

        public List<Friend> ConsultFriendsOfUser(Player player)
        {
            if (player == null) return null;
            try
            {
                using (var context = new JeopardyDBContainer())
                {
                    var friendsOfUser = context.Friends.
                        Where(Friend => Friend.Player_IdPlayer == player.IdPlayer).ToList();
                    return friendsOfUser;                  
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
            return null; ;
        }

    }
}
