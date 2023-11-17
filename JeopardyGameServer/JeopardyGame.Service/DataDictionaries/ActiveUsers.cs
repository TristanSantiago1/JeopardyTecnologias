using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service
{
    public  class ActiveUsers
    {
        private static Dictionary<int, OperationContext> activeUsers = new Dictionary<int, OperationContext>();


        public static void RegisterNewUserInDictionary(int idUser, OperationContext canal)
        {
            if (!activeUsers.ContainsKey(idUser))
            {
                activeUsers.Add(idUser, canal);
            }
        }

        public static OperationContext GetChannelUser(int idUser)
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

        public static void RemoveRegistryFromDictionary(int idUser)
        {
            if (activeUsers.ContainsKey(idUser))
            {
                activeUsers.Remove(idUser);
            }
        }

        public Dictionary<int, OperationContext> GetActiveFirendsList() 
        { 
            return activeUsers; 
        }
    }
}
