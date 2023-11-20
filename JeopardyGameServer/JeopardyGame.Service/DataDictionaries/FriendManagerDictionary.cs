using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service
{
    public class FriendManagerDictionary
    {

        private static Dictionary<int, OperationContext> friendManagerUsersDictionary = new Dictionary<int, OperationContext>();


        public static void RegisterNewFriendUserInDictionary(int idUser, OperationContext canal)
        {
            if (!friendManagerUsersDictionary.ContainsKey(idUser))
            {
                friendManagerUsersDictionary.Add(idUser, canal);
            }
        }

        public static OperationContext GetChannelFriendUser(int idUser)
        {
            foreach (var item in friendManagerUsersDictionary)
            {
                if (item.Key == idUser)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryOfFriendFromDictionary(int idUser)
        {
            if (friendManagerUsersDictionary.ContainsKey(idUser))
            {
                friendManagerUsersDictionary.Remove(idUser);
            }
        }

        public Dictionary<int, OperationContext> GetActiveFriendsList()
        {
            return friendManagerUsersDictionary;
        }
    }

}
