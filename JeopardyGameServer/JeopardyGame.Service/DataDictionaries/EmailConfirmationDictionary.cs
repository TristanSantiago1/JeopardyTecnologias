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
    public static class EmailConfirmationDictionary
    {
        private static Dictionary<String, UserPojo> emailConfirmationDictionary = new Dictionary<String, UserPojo>();
        public static void RegisterNewUserToConfirm(String code, UserPojo newUserToConfirm)
        {
            if (!emailConfirmationDictionary.ContainsKey(code) && !emailConfirmationDictionary.Values.Any(user => user.UserName == newUserToConfirm.UserName))
            {
                emailConfirmationDictionary.Add(code, newUserToConfirm);
            }
        }
        public static UserPojo GetSpecificUserToConfirm(string code)
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
            if (!string.IsNullOrEmpty(code) && emailConfirmationDictionary.ContainsKey(code))
            {                
                emailConfirmationDictionary.Remove(code);
            }            
        }

        public static Dictionary<string, UserPojo> GetUserToVerifyList()
        {
            return emailConfirmationDictionary;
        }




       

    }
}
