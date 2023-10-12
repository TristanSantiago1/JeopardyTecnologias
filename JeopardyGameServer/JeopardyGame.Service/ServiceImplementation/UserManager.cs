using JeopardyGame.Data;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using JeopardyGame.Data.Exceptions;

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

        public int SentEmailCodeConfirmation(String email, String subject, String Code)
        {
            var client = new SmtpClient("smtp.Gmail.com", 587)
            {
                EnableSsl = true,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("jeopardy.tec@Gmail.com", "lqen ymkw itqt rrmn")
            };
            try
            {
                Task succes =  client.SendMailAsync(new MailMessage(from: "jeopardy.tec@Gmail.com", to: email, subject, Code));
                if (succes != null)
                {
                    return 1;
                }
                return 0;
            }
            catch (SmtpException ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.ERROR);
                return 0;
            }
            catch (Exception ex)
            {
                ExceptionHandler exceptionHandler = new ExceptionHandler();
                exceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
                return 0;
            }
        }


    }
}
