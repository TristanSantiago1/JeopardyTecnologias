using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesServices;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class ConsultInformationImplementation : IConsultInformation
    {
        private readonly int NULL_INT_VALUE = 0;
        public GenericClass<PlayerPOJO> ConsultPlayerById(int idPlayer)
        {
            GenericClass<PlayerPOJO> resultToReturn = new GenericClass<PlayerPOJO>();
            if (idPlayer == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }   
            GenericClassServer<Player> playerConsulted = Data.DataAccess.UserManagerDataOperation.GetPlayerByIdPlayer(idPlayer);
            resultToReturn.ObjectSaved = UserInterpreter.FromPlayerEntityToPlayerPojo(playerConsulted.ObjectSaved);
            resultToReturn.CodeEvent = playerConsulted.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<PlayerPOJO> ConsultPlayerByIdUser(int idUser)
        {
            GenericClass<PlayerPOJO> resultToReturn = new GenericClass<PlayerPOJO>();
            if (idUser == NULL_INT_VALUE) 
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn); 
            }
            GenericClassServer<Player> playerConsulted = Data.DataAccess.UserManagerDataOperation.GetPlayerByIdUser(idUser);
            resultToReturn.ObjectSaved = UserInterpreter.FromPlayerEntityToPlayerPojo(playerConsulted.ObjectSaved);
            resultToReturn.CodeEvent = playerConsulted.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<UserPOJO> ConsultUserById(int idUser)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            if (idUser == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<User> userConsulted = Data.DataAccess.UserManagerDataOperation.GetUserById(idUser);
            resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsulted.ObjectSaved);
            resultToReturn.CodeEvent = userConsulted.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<UserPOJO> ConsultUserByIdPlayer(int idPlayer)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            if (idPlayer == NULL_INT_VALUE)
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }     
            PlayerPOJO player = ConsultPlayerById(idPlayer).ObjectSaved;
            GenericClassServer<User> userConsulted = Data.DataAccess.UserManagerDataOperation.GetUserById(player.IdUser);
            resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsulted.ObjectSaved);
            resultToReturn.CodeEvent = userConsulted.CodeEvent;
            return resultToReturn;
        }

        public GenericClass<UserPOJO> ConsultUserByUserName(string userName)
        {
            GenericClass<UserPOJO> resultToReturn = new GenericClass<UserPOJO>();
            if (string.IsNullOrEmpty(userName))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            GenericClassServer<User> userConsulted = Data.DataAccess.UserManagerDataOperation.GetUserByUserName (userName);
            resultToReturn.ObjectSaved = UserInterpreter.FromUserEntityToUserPojo(userConsulted.ObjectSaved);
            resultToReturn.CodeEvent = userConsulted.CodeEvent;
            return resultToReturn;
        }

    }
}
