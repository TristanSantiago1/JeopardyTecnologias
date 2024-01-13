using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class TeamChatsDictionary
    {
        
        private static Dictionary<int, OperationContext> teamChatDictionary = new Dictionary<int, OperationContext>();
    
        public static void RegisterNewTeamChatUserInDictionary(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && !teamChatDictionary.ContainsKey(idUser))
            {
                teamChatDictionary.Add(idUser, channel);
            }
        }
        public static OperationContext GetChannelCallBackTeamChatUser(int idUser)
        {
            if (idUser != 0)
            {
                foreach (var item in teamChatDictionary)
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
            if (idUser != 0 && teamChatDictionary.ContainsKey(idUser))
            {
                teamChatDictionary.Remove(idUser);
            }
        }

        public static void RenewTeamChatCallBack(int idUser, OperationContext channel)
        {
            if (idUser != 0 && channel != null && teamChatDictionary.ContainsKey(idUser))
            {
                teamChatDictionary[idUser] = channel;
            }
            else
            {
                RegisterNewTeamChatUserInDictionary(idUser, channel);
            }
        }

        public static Dictionary<int, OperationContext> GetTeamChatUsersList()
        {
            return teamChatDictionary;
        }
    }
}
