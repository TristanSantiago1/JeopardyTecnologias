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
            if (!activeUsers.ContainsKey(idUser))
            {
                activeUsers.Add(idUser, channel);
            }
        }

        public static OperationContext GetChannelCallBackActiveUser(int idUser)
        {
            foreach (var item in activeUsers)
            {
                if (item.Key == idUser)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryOfActiveUserFromDictionary(int idUser)
        {
            if (activeUsers.ContainsKey(idUser))
            {
                activeUsers.Remove(idUser);
            }
        }

        public static Dictionary<int, OperationContext> GetActiveUsersList() 
        { 
            return activeUsers; 
        }
    }
}
