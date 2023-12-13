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
        private static readonly string logFileName = $"logFile_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.txt";
        private readonly String pathTris = "C:\\Users\\wachi\\OneDrive\\Documentos\\GitHub\\JeopardyTecnologias\\JeopardyGameServer\\JeopardyGame.Data\\Exceptions\\Logs\\";
        private readonly String pathDodonaji = "C:\\Users\\dnava\\source\\repos\\JeopardyProject\\JeopardyGameTecnologias\\JeopardyProject\\JeopardyGameClient\\Logs\\";
        private readonly String absolutePath;

        public SeriLogClient()
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
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                ConfigureLogger(logFileName);
            }
            return Guid.NewGuid().ToString();
        }


    }
}

