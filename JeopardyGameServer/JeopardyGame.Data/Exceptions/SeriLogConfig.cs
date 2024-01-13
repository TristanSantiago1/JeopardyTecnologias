using Serilog;
using Serilog.Sinks.File;
using Serilog.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Management;
using System.Security;

namespace JeopardyGame.Data.Exceptions
{
    public class SeriLogConfig
    {
        private readonly String absolutePath; 
        public SeriLogConfig() 
        {
            string pathPC;
            if (GetMachineId().Equals(Properties.Paths.TrisPCId))
            {
                pathPC = (Properties.Paths.PathTris);
            }
            else
            {
                pathPC = (Properties.Paths.PathDodonaji);
            }
            absolutePath = Path.Combine(pathPC, string.Format(Properties.Paths.logFileName, DateTime.Now.ToString(Properties.Paths.DateFromat)));
            ConfigureLogger(absolutePath);
        }
        public static void ConfigureLogger(string relativePath)
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
                ManagementObjectSearcher searcher = new ManagementObjectSearcher(Properties.Paths.SelectPC);
                ManagementObjectCollection drives = searcher.Get();
                foreach (ManagementBaseObject drive in drives)
                {
                    string serialNumber = drive[Properties.Paths.CharacteristicToConsider]?.ToString();
                    if (!string.IsNullOrEmpty(serialNumber))
                    {                       
                        return serialNumber;
                    }
                }
            }
            catch (SecurityException ex)
            {
                ExceptionHandler.LogException(ex,CodesDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.Paths.logFileName);
            }
            catch (UnauthorizedAccessException ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.Paths.logFileName);
            }
            catch (ManagementException ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.Paths.logFileName);
            }
            catch (NullReferenceException ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.Paths.logFileName);
            }
            catch (Exception ex)
            {
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                ConfigureLogger(Properties.Paths.logFileName);
            }
            return Guid.NewGuid().ToString();
        }


    }


}
