using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using static JeopardyGame.Service.DataDictionaries.ActiveGamesDictionary;

namespace JeopardyGame.Service.DataDictionaries
{
    public  class EmailConfirmationDictionary
    {
        private static Dictionary<String, UserPOJO> emailConfirmationDictionary = new Dictionary<String, UserPOJO>();
        public static void RegisterNewUserToConfirm(String code, UserPOJO newUserToConfirm)
        {
            if (!emailConfirmationDictionary.ContainsKey(code) && !emailConfirmationDictionary.Values.Any(user => user.UserName == newUserToConfirm.UserName))
            {
                emailConfirmationDictionary.Add(code, newUserToConfirm);
            }
        }
        public static UserPOJO GetSpecificUserToConfirm(string code)
        {
            if (!string.IsNullOrEmpty(code)) { 
                foreach (var item in emailConfirmationDictionary)
                {
                    if (item.Key == code)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }

        public static void RemoveRegistryOfUserFromDictionary(string code)
        {
            if (!string.IsNullOrEmpty(code))
            {
                if (emailConfirmationDictionary.ContainsKey(code))
                {
                    emailConfirmationDictionary.Remove(code);
                }
            }            
        }

        public static Dictionary<string, UserPOJO> GetUserToVerifyList()
        {
            return emailConfirmationDictionary;
        }




       

    }
}
