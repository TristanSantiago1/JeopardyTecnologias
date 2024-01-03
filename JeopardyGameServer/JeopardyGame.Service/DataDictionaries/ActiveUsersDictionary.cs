using JeopardyGame.Service.InterfacesServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service
{
    public static class ActiveUsersDictionary
    {
        private static Dictionary<int, OperationContext> activeUsers = new Dictionary<int, OperationContext>();
        public static void RegisterNewActiveUserInDictionary(int idUser, OperationContext channel)
        {            
            if (idUser != 0 && channel != null && !activeUsers.ContainsKey(idUser))
            {
                activeUsers.Add(idUser, channel);
            }
        }
        public static OperationContext GetChannelCallBackActiveUser(int idUser)
        {
            if (idUser != 0)
            {
                foreach (var item in activeUsers)
                {
                    if (item.Key == idUser)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }

        public static void RemoveRegistryOfActiveUserFromDictionary(int idUser)
        {
            if (idUser != 0)
            {
                if (activeUsers.ContainsKey(idUser))
                {
                    activeUsers.Remove(idUser);
                }
            }
        }

        public static void RenewAvailabityCallBack(int idUser, OperationContext channel)
        {
            if (idUser != 0 && activeUsers.ContainsKey(idUser))
            {
                activeUsers[idUser] = channel;
            }
            else
            {
                RegisterNewActiveUserInDictionary(idUser, channel);
            }

        }

        public static Dictionary<int, OperationContext> GetActiveUsersList() 
        { 
            return activeUsers; 
        }
    }
}
