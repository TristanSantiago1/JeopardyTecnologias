using System.Collections.Generic;
using System.Timers;

namespace JeopardyGame.Service.DataDictionaries
{
    public  static class PasswordChangeCodeDictionary
    {
        private static Dictionary<string, string> passwordsCodes = new Dictionary<string, string>();
        private static Dictionary<string, Timer> timers = new Dictionary<string, Timer>();

        public static void AddTimerRegistry(string userName, string code)
        {
            if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(code) && !passwordsCodes.ContainsKey(userName))
            {               
                passwordsCodes.Add(userName, code);
                int time = 5;
                Timer timer = new Timer(time * 60 * 1000); 
                timer.Elapsed += (sender, e) => RemoveTimerRegistry(userName);
                timer.AutoReset = false; 
                timers.Add(userName, timer);
                timer.Start();
            }
        }

        public static void RemoveTimerRegistry(string userName)
        {
            if (!string.IsNullOrEmpty(userName) && passwordsCodes.ContainsKey(userName))
            {
                passwordsCodes.Remove(userName);
            }
            if (!string.IsNullOrEmpty(userName) && timers.ContainsKey(userName))
            {
                timers[userName].Dispose();
                timers.Remove(userName);
            }
        }

        public static bool DoesPassWordCodeContaisKey(string userName)
        {
            return passwordsCodes.ContainsKey(userName);
        }

        public static string GetSpecificCode(string userName)
        {
            if (!string.IsNullOrEmpty(userName) && passwordsCodes.ContainsKey(userName))
            {
                return passwordsCodes[userName];
            }
            else
            {
                return string.Empty;
            }
        }

    }
}
