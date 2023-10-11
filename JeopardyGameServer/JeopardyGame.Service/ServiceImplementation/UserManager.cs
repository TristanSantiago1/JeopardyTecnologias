using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public class UserManager : InterfacesSevices.IUserManager
    {
        public int SaveUser(UserPOJO userPojoNew)
        {
            if (userPojoNew == null) return 0;
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User usuarioNuevo = new User();
            usuarioNuevo.IdUser = 0;
            usuarioNuevo.Name = userPojoNew.Name.ToString();
            usuarioNuevo.UserName = userPojoNew.UserName.ToString();
            usuarioNuevo.EmailAddress = userPojoNew.EmailAddress.ToString();
            usuarioNuevo.Password = userPojoNew.Password.ToString();
            User UserSaved = ConexionAccesoDatos.SaveUserInDataBase(usuarioNuevo);
            if (UserSaved == null) 
            {
                return 0;
            }
            else
            {
                return UserSaved.IdUser;
            }            
        }

        public int SavePlayer(int IdUserSaved, PlayerPOJO playerPojoNew)
        {
            if (playerPojoNew == null) return 0;
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User userSaved = ConexionAccesoDatos.GetUserById(IdUserSaved);
            State defaultState = ConexionAccesoDatos.GetStateById(1);
            Player newPlayerAccount = new Player();
            newPlayerAccount.IdPlayer = 0;
            newPlayerAccount.IdAvatarActual = 0;
            newPlayerAccount.GeneralPoints = playerPojoNew.GeneralPoints;
            newPlayerAccount.NoReports = playerPojoNew.NoReports;
            newPlayerAccount.User = userSaved;
            newPlayerAccount.State = defaultState;
            Player playerSaved = ConexionAccesoDatos.SavePlayerInDataBase(userSaved, defaultState, newPlayerAccount);
            if (playerSaved == null)
            {
                return 0;
            }
            else
            {
                return playerSaved.IdPlayer;
            }
        }

        public int validateCredentials(UserValidate newUserValidate)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User user = ConexionAccesoDatos.GetUserByUserName(newUserValidate.UserName);
            if (user != null)
            {
                bool isPasswordValid = ConexionAccesoDatos.VerifyPassword(newUserValidate.Password, user.Password);

                if (isPasswordValid)
                {
                    return 1;
                }
            }

            return 0;
        }

        public int EmailAlreadyExist(String email)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            int emailIsNew = ConexionAccesoDatos.ValidateIfEmailExist(email);
            return emailIsNew;
        }

        public int UserNameAlreadyExist(String userName)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation ConexionAccesoDatos = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            int userNameIsNew = ConexionAccesoDatos.ValidateIfUserNameExist(userName);
            return userNameIsNew;
        }
    }
}
