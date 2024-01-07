using JeopardyGame.Helpers;
using Serilog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Management;
using System.Security;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Exceptions
{
    internal class SeriLogClient
    {
        
        private readonly String absolutePath;

        public SeriLogClient()
        {
            String pathPC;
            if (GetMachineId().Equals(Properties.ExceptionsPaths.TrisPCId))
            {
                pathPC = Properties.ExceptionsPaths.PathTris;
            }
            else
            {
                pathPC = Properties.ExceptionsPaths.PathDodonaji;
            }
            absolutePath = Path.Combine(pathPC, string.Format(Properties.ExceptionsPaths.logFileName, DateTime.Now.ToString(Properties.ExceptionsPaths.DateFormat)));
            ConfigureLogger(absolutePath);
        }

        public static void ConfigureLogger(String relativePath)
        {
            Log.Logger = new LoggerConfiguration().MinimumLevel.Error().WriteTo.File(relativePath, rollingInterval: RollingInterval.Day).CreateLogger();
        }

        public String getPath()
        {
            return absolutePath;
        }


        private static string GetMachineId()
        {
            try
            {
                ManagementObjectSearcher searcher = new ManagementObjectSearcher(Properties.ExceptionsPaths.SelectPC);
                ManagementObjectCollection drives = searcher.Get();
                foreach (ManagementBaseObject drive in drives)
                {
                    string serialNumber = drive[Properties.ExceptionsPaths.CharacteristicToConsider]?.ToString();
                    if (!string.IsNullOrEmpty(serialNumber))
                    {
                        return serialNumber;
                    }
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.ExceptionsPaths.logFileName);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.ExceptionsPaths.logFileName);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.ExceptionsPaths.logFileName);
            }
            return Guid.NewGuid().ToString();
        }


    }
}

