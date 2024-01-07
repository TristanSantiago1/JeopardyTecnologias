using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Threading;

namespace JeopardyGame.Exceptions
{
    public static class ExceptionHandlerForLogs
    {
        public static void LogException(Exception exception, String category)
        {
            string logMessage = $"[{DateTime.Now}] Type: {category}\n Exception: {exception.Message} \nStackTrace: {exception.StackTrace}\n";
            SeriLogClient logConfig = new SeriLogClient();
            const int maxRetries = 3;
            int retryCount = 0;
            bool success = false;
            while (!success && retryCount < maxRetries)
            {
                try
                {
                    File.AppendAllText(logConfig.getPath(), logMessage);
                    success = true;
                }
                catch (IOException)
                {
                    Thread.Sleep(1000); 
                    retryCount++;
                }
            }
        }

    }
}
