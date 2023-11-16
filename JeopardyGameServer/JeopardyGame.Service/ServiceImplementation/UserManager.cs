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
using JeopardyGame.Data.DataAccess;

namespace JeopardyGame.Service.ServiceImplementation
{
    /// <summary>
    /// Class for User registration 
    /// </summary>
    public partial class UserManager : IUserManager
    {
        public GenericClass<int> SaveUser(UserPOJO userPojoNew)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (userPojoNew == null) { return NullParametersHandler.HandleNullParametersService(resultToReturn); }            
            userPojoNew.IdUser = 0;
            User usuarioNuevo = InterpretersEntityPojo.UserInterpreter.FromUserPojoToUserEntity(userPojoNew);
            GenericClassServer<User> userSaved = UserManagerDataOperation.SaveUserInDataBase(usuarioNuevo);
            if (userSaved.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
            {
                PlayerPOJO playerToSave = new PlayerPOJO();
                playerToSave.IdPlayer = 0;
                playerToSave.GeneralPoints = 0;
                playerToSave.NoReports = 0;
                playerToSave.IdActualAvatar = 0;
                playerToSave.IdUser = userSaved.ObjectSaved.IdUser;
                playerToSave.IdState = 1;
                int isPlayerSavedSucc = SavePlayer(playerToSave);
                if (isPlayerSavedSucc == ExceptionDiccionary.SUCCESFULL_EVENT)
                {
                    resultToReturn.ObjectSaved = userSaved.ObjectSaved.IdUser;
                    resultToReturn.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
                else
                {
                    UserManagerDataOperation.DeleteUserById(userSaved.ObjectSaved.IdUser);
                    resultToReturn.CodeEvent = isPlayerSavedSucc;
                }
            }
            else { resultToReturn.CodeEvent = userSaved.CodeEvent; }
            return resultToReturn;
                                 
        }
        
        private int SavePlayer(PlayerPOJO playerPojoNew)
        {
            int response = 0;
            if (playerPojoNew == null) return response;             
            Player newPlayerAccount = InterpretersEntityPojo.UserInterpreter.FromPlayerPojoToPlyerEntity(playerPojoNew);
            GenericClassServer<User> userSaved = UserManagerDataOperation.GetUserById(playerPojoNew.IdUser);
            if(userSaved.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
            {
                GenericClassServer<State> defaultState = UserManagerDataOperation.GetStateById(playerPojoNew.IdState);
                if (defaultState.CodeEvent == ExceptionDiccionary.SUCCESFULL_EVENT)
                {
                    GenericClassServer<Player> playerSaved = UserManagerDataOperation.SavePlayerInDataBase(userSaved.ObjectSaved, defaultState.ObjectSaved, newPlayerAccount);
                    response = playerSaved.CodeEvent;
                }
                else { response = defaultState.CodeEvent; }
            }
            else { response = userSaved.CodeEvent; }
            return response;           
        }

        public int validateCredentials(UserValidate newUserValidate)
        {
            User user = UserManagerDataOperation.GetUserByUserName(newUserValidate.UserName).ObjectSaved;
            if (user != null)
            {
                bool isPasswordValid = UserManagerDataOperation.VerifyPassword(newUserValidate.Password, user.Password);

                if (isPasswordValid)
                {
                    return 1;
                }
            }

            return 0;
        }

        public GenericClass<int> EmailAlreadyExist(String email)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (email == null) { return NullParametersHandler.HandleNullParametersService(resultToReturn); }            
            GenericClassServer<int> emailIsNew = UserManagerDataOperation.ValidateIfEmailExist(email);
            resultToReturn.ObjectSaved = emailIsNew.ObjectSaved;
            resultToReturn.CodeEvent = emailIsNew.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<int> UserNameAlreadyExist(String userName)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            if (userName == null) { return NullParametersHandler.HandleNullParametersService(resultToReturn); }
            GenericClassServer<int> emailIsNew = UserManagerDataOperation.ValidateIfUserNameExist(userName);
            resultToReturn.ObjectSaved = emailIsNew.ObjectSaved;
            resultToReturn.CodeEvent = emailIsNew.CodeEvent;
            return resultToReturn;           
        }

        public GenericClass<int> SentEmailCodeConfirmation(String email, String subject, String code)
        {
            GenericClass<int> resultToReturn = new GenericClass<int>();
            GenericClassServer<int> result = new GenericClassServer<int>();
            int SUCCESFULL = 1;
            int UNSSUCCESFUL = 0;
            if (email == null || subject == null || code == null) { return NullParametersHandler.HandleNullParametersService(resultToReturn); }
            var client = new SmtpClient("smtp.Gmail.com", 587)
            {
                EnableSsl = true,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("jeopardy.tec@Gmail.com", "lqen ymkw itqt rrmn")
            };
            try
            {
                Task succes =  client.SendMailAsync(new MailMessage(from: "jeopardy.tec@Gmail.com", to: email, subject, code));
                if (succes != null)
                {
                    result.ObjectSaved = SUCCESFULL;
                    result.CodeEvent = ExceptionDiccionary.SUCCESFULL_EVENT;
                }
                else
                {
                    result.ObjectSaved = UNSSUCCESFUL;
                    result.CodeEvent = ExceptionDiccionary.UNSUCCESFULL_EVENT;
                }
            }
            catch (ArgumentNullException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch(ArgumentOutOfRangeException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch(FormatException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch(ArgumentException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            catch (SmtpException ex)
            {
                result = ExceptionHandler.HandleException(result, ex);
                ExceptionHandler.LogException(ex, ExceptionDiccionary.FATAL_EXCEPTION);
            }
            resultToReturn.ObjectSaved = result.ObjectSaved;
            resultToReturn.CodeEvent = result.CodeEvent;
            return resultToReturn;
        }

        public int UpdateUserInformation(string editedName, string originalName)
        {
            int updateInformation = UserManagerDataOperation.UpdateUserInformation(editedName, originalName);
            return updateInformation;
        }

        public List<FriendScore> GetFriendScores(int userId)
        {
            Data.DataAccess.UserManagerDataOperation userManager = new Data.DataAccess.UserManagerDataOperation();
            ConsultInfoImple consultInfo = new ConsultInfoImple();

            Player playerConsulted = userManager.GetPlayerByIdPlayer(userId);
            List<Player> playerFriends = userManager.Get20FriendScores(userId);

            List<FriendScore> friendScores = new List<FriendScore>();

            foreach (var friend in playerFriends)
            {
                FriendScore friendScore = new FriendScore
                {
                    IdUser = friend.IdPlayer,
                    GeneralPoints = (int)friend.GeneralPoints,
                    UserName = friend.User.UserName
                };

                friendScores.Add(friendScore);
            }

            return friendScores;
        }


    }
}

