using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class GuestPlayerManagerImplementation : IGuestPlayerManager
    {
        private readonly string GUEST_EMAIL = "guest@email";
        private readonly string GUEST_PASSWORD = "123456789";
        private readonly string GUEST_NAME = "JustGuest";
        private readonly int DEFAULT_INT_VALUE = 0;
        private readonly int GUEST_STATE = 3;

        public GenericClass<UserPOJO> CreateUserForGuest()
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
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
                    PlayerPOJO playerToSave = new PlayerPOJO();
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
            return resultToReturn;
        }


        public void DeleteGuest(int idUser)
        {
            UserManagerDataOperation.DeleteUserById(idUser);
        }

        private static string GetGuestUserName()
        {
            Random generateAleatory = new Random();
            int aleatoryNumber = generateAleatory.Next(1, 27);
            return aleatoryNumber switch
            {
                1 => "Wachiturro",
                2 => "Papikra",
                3 => "TigerWoods",
                4 => "1",
                5 => "NoobMaster",
                6 => "JustNoob",
                7 => "JustMaster",
                8 => "Just",
                9 => "ShadowRunner",
                10 => "PhoenixKnight",
                11 => "InfernoWar",
                12 => "QuantumGamer",
                13 => "MysticSeeker",
                14 => "CyberNinja",
                15 => "GalaxyEx",
                16 => "EternalRogue",
                17 => "ThunderSpec",
                18 => "NebulaStriker",
                19 => "Elemental",
                20 => "Starlight",
                21 => "Celestial",
                22 => "Quantum",
                23 => "MidnightVoy",
                24 => "SolarSorcerer",
                25 => "LunarAssassin",
                26 => "NovaVortex",
                27 => "Blizzard",
                _ => "NoBody",
            };
        }
    }
}
