using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public class UserManager : InterfacesSevices.IUserManager
    {
        public int SaveUser(UserPOJO userPojoNew)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User usuarioNuevo = new User();
            usuarioNuevo.IdUser = 0;
            usuarioNuevo.Name = userPojoNew.Name.ToString();
            usuarioNuevo.UserName = userPojoNew.UserName.ToString();
            usuarioNuevo.EmailAddress = userPojoNew.EmailAddress.ToString();
            usuarioNuevo.Password = userPojoNew.Password.ToString();
            User UserSaved = ConexionAccesoDatos.SaveUserInDataBase(usuarioNuevo);
            return UserSaved.IdUser;
        }
        public int SavePlayer(int IdUserSaved, PlayerPOJO playerPojoNew)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User userSaved = ConexionAccesoDatos.GetUserById(IdUserSaved);
            State defaultState = ConexionAccesoDatos.GetStateById(1);
            Player newPlayerAccount = new Player();
            newPlayerAccount.IdPlayer = 0;
            newPlayerAccount.IdAvatarActual = 0;
            newPlayerAccount.GeneralPoints = playerPojoNew.GeneralPoints;
            newPlayerAccount.NoReports = playerPojoNew.NoReports;
            newPlayerAccount.User = userSaved;
            newPlayerAccount.State= defaultState;
            Player playerSaved = ConexionAccesoDatos.SavePlayerInDataBase(userSaved,defaultState, newPlayerAccount);
            return playerSaved.IdPlayer;
        }
    }
}
