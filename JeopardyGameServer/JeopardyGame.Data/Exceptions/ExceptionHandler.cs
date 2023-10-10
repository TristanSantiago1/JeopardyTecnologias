using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using JeopardyGame.Data.Exceptions;

namespace JeopardyGame.Data.Exceptions
{
    public class ExceptionHandler
    {
        public void HandleExcpeotion(Exception exception, String Category)
        {
            string logMessage = $"[{DateTime.Now}] Exception: {exception.Message}\nStackTrace: {exception.StackTrace}\n";
            SeriLogConfig logConfig = new SeriLogConfig();  
            File.AppendAllText(logConfig.getPath(), logMessage);
        }
    }
}
