using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service
{
    public static class FriendManagerDictionary
    {
        private static Dictionary<int, OperationContext> friendManagerDictionary = new Dictionary<int, OperationContext>();
        public static void RegisterNewFriendUserInDictionary(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && !friendManagerDictionary.ContainsKey(idUser))
            {
                friendManagerDictionary.Add(idUser, channel);
            }
        }

        public static OperationContext GetChannelFriendUser(int idUser)
        {
            if (idUser != 0)
            {
                foreach (var item in friendManagerDictionary)
                {
                    if (item.Key == idUser)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }

        public static void RemoveRegistryOfFriendFromDictionary(int idUser)
        {
            if (idUser != 0 && friendManagerDictionary.ContainsKey(idUser))
            {
                friendManagerDictionary.Remove(idUser);
            }
        }

        public static void RenewFriendManagerCallBack(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && friendManagerDictionary.ContainsKey(idUser))
            {
                friendManagerDictionary[idUser] = channel;
            }
            else
            {
                RegisterNewFriendUserInDictionary(idUser, channel);
            }
        }

        public static Dictionary<int, OperationContext> GetActiveFriendsList()
        {
            return friendManagerDictionary;
        }
    }
}
