using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data.Helpers;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Channels;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class GuestPlayerManagerImplementation : IGuestPlayerManager
    {
        private readonly string GUEST_EMAIL = Properties.Resources.GuestMail;
        private readonly string GUEST_PASSWORD = Properties.Resources.GuestPassword;
        private readonly string GUEST_NAME = Properties.Resources.GuestName;
        private readonly int DEFAULT_INT_VALUE = 0;
        private readonly int GUEST_STATE = 3;
        private static readonly Object objectLock = new object();

        public GenericClass<UserPojo> CreateUserForGuest()
        {            
            GenericClass<UserPojo> resultToReturn = new GenericClass<UserPojo>();
            lock (objectLock)
            {
                try
                {
                    User guestUser = new User()
                    {
                        IdUser = DEFAULT_INT_VALUE,
                        EmailAddress = GUEST_EMAIL,
                        Name = GUEST_NAME,
                        UserName = GetGuestUserName(),
                        Password = GUEST_PASSWORD
                    };
                    GenericClassServer<User> userSaved = UserManagerDataOperation.SaveUserInDataBase(guestUser);
                    if (userSaved.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                    {
                        PlayerPojo playerToSave = new PlayerPojo();
                        playerToSave.IdPlayer = DEFAULT_INT_VALUE;
                        playerToSave.GeneralPoints = DEFAULT_INT_VALUE;
                        playerToSave.NoReports = DEFAULT_INT_VALUE;
                        playerToSave.IdActualAvatar = DEFAULT_INT_VALUE;
                        playerToSave.IdUser = userSaved.ObjectSaved.IdUser;
                        playerToSave.IdState = GUEST_STATE;
                        UserManagerImplementation userManager = new();
                        int isPlayerSavedSuccessfully = userManager.SavePlayer(playerToSave);
                        if (isPlayerSavedSuccessfully == ExceptionDictionary.SUCCESFULL_EVENT)
                        {
                            resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userSaved.ObjectSaved);
                            resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        }
                        else
                        {
                            UserManagerDataOperation.DeleteUserById(userSaved.ObjectSaved.IdUser);
                            resultToReturn.CodeEvent = isPlayerSavedSuccessfully;
                        }
                    }
                    else
                    {
                        resultToReturn.CodeEvent = userSaved.CodeEvent;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }


        public void DeleteGuest(int idUser)
        {
            UserManagerDataOperation.DeleteUserById(idUser);
        }

        private static string GetGuestUserName()
        {
            int aleatoryNumber = AleatoryGenerator.GetAleatoryNumberWithRange(1, 27);
            return aleatoryNumber switch
            {
                1 => Properties.Resources.Wachiturro,
                2 => Properties.Resources.Papikra,
                3 => Properties.Resources.TigerWoods,
                4 => Properties.Resources._1,
                5 => Properties.Resources.JustNoob,
                6 => Properties.Resources.JustMaster,
                7 => Properties.Resources.NoobMaster,
                8 => Properties.Resources.Just,
                9 => Properties.Resources.ShadowRunner,
                10 => Properties.Resources.PhoenixKnight,
                11 => Properties.Resources.InfernoWar,
                12 => Properties.Resources.QuantumGamer,
                13 => Properties.Resources.Quantum,
                14 => Properties.Resources.MysticSeeker,
                15 => Properties.Resources.CyberNinja,
                16 => Properties.Resources.GalaxyEx,
                17 => Properties.Resources.Elemental,
                18 => Properties.Resources.Starlight,
                19 => Properties.Resources.Celestial,
                20 => Properties.Resources.MidnightVoy,
                21 => Properties.Resources.SolarSorcerer,
                22 => Properties.Resources.LunarAssassin,
                23 => Properties.Resources.NovaVortex,
                24 => Properties.Resources.Blizzard,
                25 => Properties.Resources.NoBody,
                26 => Properties.Resources.ThunderSpec,
                27 => Properties.Resources.EternalRogue,
                _ => Properties.Resources.Wachiturro,
            };
        }

        public static bool IsUserNameInBlackList(string userName)
        {
            List<string> listOfGuestUserNames = new List<string>
            {
                Properties.Resources.Wachiturro,
                Properties.Resources.Papikra,
                Properties.Resources.TigerWoods,
                Properties.Resources._1,
                Properties.Resources.JustNoob,
                Properties.Resources.JustMaster,
                Properties.Resources.NoobMaster,
                Properties.Resources.Just,
                Properties.Resources.ShadowRunner,
                Properties.Resources.PhoenixKnight,
                Properties.Resources.InfernoWar,
                Properties.Resources.QuantumGamer,
                Properties.Resources.Quantum,
                Properties.Resources.MysticSeeker,
                Properties.Resources.CyberNinja,
                Properties.Resources.GalaxyEx,
                Properties.Resources.Elemental,
                Properties.Resources.Starlight,
                Properties.Resources.Celestial,
                Properties.Resources.MidnightVoy,
                Properties.Resources.SolarSorcerer,
                Properties.Resources.LunarAssassin,
                Properties.Resources.NovaVortex,
                Properties.Resources.Blizzard,
                Properties.Resources.NoBody,
                Properties.Resources.ThunderSpec,
                Properties.Resources.EternalRogue
            };
            return listOfGuestUserNames.Contains(userName);

        }
    }
}
