using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Helpers
{
    public partial class Friend()
    {
        public int IdUser { get; set; }
        public string Name { get; set; }
        public int idStatus { get; set; }
    }
    public partial class FriendList()
    {
        private static Dictionary<int, Friend> friendList = new Dictionary<int, Friend>();

        public static void RegisterNewFriendInDictionary(int idUser, Friend friend)
        {
            if (!friendList.ContainsKey(idUser))
            {
                friendList.Add(idUser, friend);
            }
        }

        public static Friend GetFriend(int idUser)
        {
            foreach (var item in friendList)
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
            if (friendList.ContainsKey(idUser))
            {
                friendList.Remove(idUser);
            }
        }

        public static void ChangeStatus(int idUser, int idStatus)
        {
            if (friendList.ContainsKey(idUser))
            {
                foreach (var item in friendList)
                {
                    if (item.Key == idUser)
                    {
                        item.Value.idStatus = idStatus;
                    }
                }
            }
        }
        public static void CleanDictionary()
        {
            friendList.Clear();
        }

        public static Dictionary<int, Friend> GetActiveFirendsList()
        {
            return friendList;
        }
    }
}
