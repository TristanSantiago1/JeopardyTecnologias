using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public class TeamChats
    {
        private static Dictionary<int, OperationContext> teamChatUser = new Dictionary<int, OperationContext>();
        public static void RegisterNewTeamChatUserInDictionary(int idUser, OperationContext channel)
        {
            if (!teamChatUser.ContainsKey(idUser))
            {
                teamChatUser.Add(idUser, channel);
            }
        }
        public static OperationContext GetChannelCallBackTeamChatUser(int idUser)
        {
            foreach (var item in teamChatUser)
            {
                if (item.Key == idUser)
                {
                    return item.Value;
                }
            }
            return null;
        }
        public static void RemoveRegistryOfTeamChatUserFromDictionary(int idUser)
        {
            if (teamChatUser.ContainsKey(idUser))
            {
                teamChatUser.Remove(idUser);
            }
        }
        public static Dictionary<int, OperationContext> GetTeamChatUsersList()
        {
            return teamChatUser;
        }
    }
}
