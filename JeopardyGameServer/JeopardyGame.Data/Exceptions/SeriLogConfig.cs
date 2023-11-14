using Serilog;
using Serilog.Sinks.File;
using Serilog.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace JeopardyGame.Data.Exceptions
{
    public class SeriLogConfig
    {
        private String logFileName = $"logFile_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.txt";
        public SeriLogConfig() 
        {
            ConfigureLogger(logFileName);
        }
        public static void ConfigureLogger(String Path)
        {
            Log.Logger = new LoggerConfiguration()
                .MinimumLevel.Debug().WriteTo.File(Path, rollingInterval: RollingInterval.Day).CreateLogger();
        }

        public String getPath()
        {
            return "/Logs/"+logFileName;
        }
    }
}
