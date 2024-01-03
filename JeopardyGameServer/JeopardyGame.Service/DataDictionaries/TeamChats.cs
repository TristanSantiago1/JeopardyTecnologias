using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public class TeamChats
    {
        
        private static Dictionary<int, OperationContext> teamChatUser = new Dictionary<int, OperationContext>();
    
        public static void RegisterNewTeamChatUserInDictionary(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && !teamChatUser.ContainsKey(idUser))
            {
                teamChatUser.Add(idUser, channel);
            }
        }
        public static OperationContext GetChannelCallBackTeamChatUser(int idUser)
        {
            if (idUser != 0)
            {
                foreach (var item in teamChatUser)
                {
                    if (item.Key == idUser)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }

        public static void RemoveRegistryOfTeamChatUserFromDictionary(int idUser)
        {
            if (idUser != 0 && teamChatUser.ContainsKey(idUser))
            {
                teamChatUser.Remove(idUser);
            }
        }

        public static void RenewTeamChatCallBack(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && teamChatUser.ContainsKey(idUser))
            {
                teamChatUser[idUser] = channel;
            }
            else
            {
                RegisterNewTeamChatUserInDictionary(idUser, channel);
            }
        }

        public static Dictionary<int, OperationContext> GetTeamChatUsersList()
        {
            return teamChatUser;
        }
    }
}
