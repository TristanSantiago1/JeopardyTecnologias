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
using System.Security.Cryptography.X509Certificates;

namespace JeopardyGame.Service.ServiceImplementation
{
    /// <summary>
    /// Class for User registration 
    /// </summary>
    public partial class UserManager : IUserManager
    {
        public int SaveUser(UserPOJO userPojoNew)
        {
            if (userPojoNew == null) return 0;
            Data.DataAccess.UserManagerDataOperation dataAccessConexion = new Data.DataAccess.UserManagerDataOperation();
            userPojoNew.IdUser = 0;
            User usuarioNuevo = InterpretersEntityPojo.UserInterpreter.FromUserPojoToUserEntity(userPojoNew);
            User UserSaved = dataAccessConexion.SaveUserInDataBase(usuarioNuevo);
            if (UserSaved == null) return 0;            
            PlayerPOJO playerToSave = new PlayerPOJO();
            playerToSave.IdPlayer = 0;
            playerToSave.GeneralPoints = 0;
            playerToSave.NoReports = 0;
            playerToSave.IdActualAvatar = 0;
            playerToSave.IdUser = UserSaved.IdUser;
            playerToSave.IdState = 1;
            int idPlayer = SavePlayer(playerToSave);
            if (idPlayer != 0)
            {
                return UserSaved.IdUser;
            }
            else
            {
                dataAccessConexion.DeleteUserById(UserSaved.IdUser);
                return 0;
            }                       
        }
        
        private int SavePlayer(PlayerPOJO playerPojoNew)
        {
            if (playerPojoNew == null) return 0;
            Data.DataAccess.UserManagerDataOperation dataAccessConexion = new Data.DataAccess.UserManagerDataOperation();     
            Player newPlayerAccount = InterpretersEntityPojo.UserInterpreter.FromPlayerPojoToPlyerEntity(playerPojoNew);
            User userSaved = dataAccessConexion.GetUserById(playerPojoNew.IdUser);
            State defaultState = dataAccessConexion.GetStateById(playerPojoNew.IdState);
            Player playerSaved = dataAccessConexion.SavePlayerInDataBase(userSaved, defaultState, newPlayerAccount);
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
            JeopardyGame.Data.DataAccess.UserManagerDataOperation dataAccessConexion = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            User user = dataAccessConexion.GetUserByUserName(newUserValidate.UserName);
            if (user != null)
            {
                bool isPasswordValid = dataAccessConexion.VerifyPassword(newUserValidate.Password, user.Password);

                if (isPasswordValid)
                {
                    return 1;
                }
            }

            return 0;
        }

        public int EmailAlreadyExist(String email)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation dataAccessConexion = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            int emailIsNew = dataAccessConexion.ValidateIfEmailExist(email);
            return emailIsNew;
        }

        public int UserNameAlreadyExist(String userName)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation dataAccessConexion = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            int userNameIsNew = dataAccessConexion.ValidateIfUserNameExist(userName);
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
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.ERROR);
                return 0;
            }
            catch (Exception ex)
            {
                ExceptionHandler.HandleExcpeotion(ex, ExceptionDiccionary.UNKNOW);
                return 0;
            }
        }

        public int UpdateUserInformation(string editedName, string editedEmail)
        {
            JeopardyGame.Data.DataAccess.UserManagerDataOperation dataAccessConexion = new JeopardyGame.Data.DataAccess.UserManagerDataOperation();
            int updateInformation = dataAccessConexion.UpdateUserInformation(editedName, editedEmail);
            return updateInformation;
        }

    }
}

