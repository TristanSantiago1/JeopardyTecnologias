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
        public static void RegisterNewUserToConfirm(String code, UserPOJO newUserToConfirm, OperationContext context)
        {
            if (!emailConfirmationDictionary.ContainsKey(code) && !emailConfirmationDictionary.Values.Any(user => user.UserName == newUserToConfirm.UserName))
            {
                emailConfirmationDictionary.Add(code, newUserToConfirm);
                callBackNewUsers.Add(code, context);
            }
        }
        public static UserPOJO GetSpecificUserToConfirm(string code)
        {
            foreach (var item in emailConfirmationDictionary)
            {
                if (item.Key == code)
                {
                    return item.Value;
                }
            }
            return null;
        }

        public static void RemoveRegistryOfUserFromDictionary(string code)
        {
            if (emailConfirmationDictionary.ContainsKey(code))
            {
                emailConfirmationDictionary.Remove(code);
                callBackNewUsers.Remove(code);
            }
        }

        public static Dictionary<string, UserPOJO> GetUserToVerifyList()
        {
            return emailConfirmationDictionary;
        }




        private static Dictionary<String, OperationContext> callBackNewUsers = new Dictionary<String, OperationContext>();
      
        public static OperationContext GetSpecificCallBacknNewUser(string code)
        {
            foreach (var item in callBackNewUsers)
            {
                if (item.Key == code)
                {
                    return item.Value;
                }
            }
            return null;
        }
        public static Dictionary<string, OperationContext> GetCallBackList()
        {
            return callBackNewUsers;
        }

    }
}
