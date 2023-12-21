using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Helpers
{
    public partial class FriendAvailabilityInformation()
    {
        public int IdUser { get; set; }
        public string Name { get; set; }
        public string EmailAddress { get; set; }
        public int IdStatusOfAvailability { get; set; }
    }

    public partial class FriendList
    {
        private static Dictionary<int, FriendAvailabilityInformation> friendOfUserList = new Dictionary<int, FriendAvailabilityInformation>();

        public static void RegisterNewFriendInDictionary(int idUser, FriendAvailabilityInformation friend)
        {
            if (!friendOfUserList.ContainsKey(idUser))
            {
                friendOfUserList.Add(idUser, friend);
            }
        }

        public static FriendAvailabilityInformation GetFriend(int idUser)
        {
            foreach (var item in friendOfUserList)
            {
                if (item.Key == idUser)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveFriendFromDictionary(int idUser)
        {
            if (friendOfUserList.ContainsKey(idUser))
            {
                friendOfUserList.Remove(idUser);
            }
        }

        public static void ChangeStatusOfFriend(int idUser, int idStatus)
        {
            if (friendOfUserList.ContainsKey(idUser))
            {
                foreach (var item in friendOfUserList)
                {
                    if (item.Key == idUser)
                    {
                        item.Value.IdStatusOfAvailability = idStatus;
                    }
                }
            }
        }

        public static void CleanDictionary()
        {
            friendOfUserList.Clear();
        }

        public static Dictionary<int, FriendAvailabilityInformation> GetActiveFriendsList()
        {
            return friendOfUserList;
        }
    }
}
