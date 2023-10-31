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

        private static Dictionary<int, OperationContext> friendMnagerUser = new Dictionary<int, OperationContext>();


        public static void RegisterNewUserInDictionary(int idUser, OperationContext canal)
        {
            if (!friendMnagerUser.ContainsKey(idUser))
            {
                friendMnagerUser.Add(idUser, canal);
            }
        }

        public static OperationContext GetChannelUser(int idUser)
        {
            foreach (var item in friendMnagerUser)
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
            if (friendMnagerUser.ContainsKey(idUser))
            {
                friendMnagerUser.Remove(idUser);
            }
        }

        public Dictionary<int, OperationContext> GetActiveFirendsList()
        {
            return friendMnagerUser;
        }
    }

}
