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
        private static readonly string logFileName = $"logFile_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.txt";
        private readonly String pathTris = "C:\\Users\\wachi\\OneDrive\\Documentos\\GitHub\\JeopardyTecnologias\\JeopardyGameServer\\JeopardyGame.Data\\Exceptions\\Logs\\";
        private readonly String pathDodonaji =" ";
        private readonly String absolutePath; 
        public SeriLogConfig() 
        {
            String pathPC;
            if (GetMachineId().Equals("6479_A753_1090_3048."))
            {
                pathPC = pathTris;
            }
            else
            {
                pathPC = pathDodonaji;
            }
            absolutePath = Path.Combine(pathPC, logFileName);
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
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
                ManagementObjectCollection drives = searcher.Get();
                foreach (ManagementBaseObject drive in drives)
                {
                    string serialNumber = drive["SerialNumber"]?.ToString();
                    if (!string.IsNullOrEmpty(serialNumber))
                    {                       
                        return serialNumber;
                    }
                }
            }
            catch (SecurityException ex)
            {
                ExceptionHandler.LogException(ex,ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (UnauthorizedAccessException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (ManagementException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (NullReferenceException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (Exception ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            return Guid.NewGuid().ToString();
        }


    }


}
