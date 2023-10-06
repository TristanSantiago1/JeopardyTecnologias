using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.DataAccess
{
    public class UserManagerDataOperation
    {
        public User SaveUserInDataBase(User user)
        {
            using (var context = new JeopardyDBContainer())
            {
                var newUser = context.Users.Add(user);
                context.SaveChanges();
                return newUser;
            }
        }
        public Player SavePlayerInDataBase(User userSaved, State defaultState, Player newPlayer)
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
        public User GetUserById(int idUser)
        {
            using (var context = new JeopardyDBContainer())
            {
                var userConsulted = context.Users.Find(idUser);
                return userConsulted;
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

    }

}
