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
        private static Dictionary<int, OperationContext> activeUsersDictionary = new Dictionary<int, OperationContext>();
        public static void RegisterNewActiveUserInDictionary(int idUser, OperationContext channel)
        {            
            if (idUser != 0 && channel != null && !activeUsersDictionary.ContainsKey(idUser))
            {
                activeUsersDictionary.Add(idUser, channel);
            }
        }
        public static OperationContext GetChannelCallBackActiveUser(int idUser)
        {
            if (idUser != 0)
            {
                foreach (var item in activeUsersDictionary)
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
            if (idUser != 0 && activeUsersDictionary.ContainsKey(idUser))
            {
                activeUsersDictionary.Remove(idUser);                
            }
        }

        public static void RenewAvailabityCallBack(int idUser, OperationContext channel)
        {
            if (idUser != 0 && activeUsersDictionary.ContainsKey(idUser))
            {
                activeUsersDictionary[idUser] = channel;
            }
            else
            {
                RegisterNewActiveUserInDictionary(idUser, channel);
            }

        }

        public static Dictionary<int, OperationContext> GetActiveUsersList() 
        { 
            return activeUsersDictionary; 
        }
    }
}
