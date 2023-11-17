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


namespace JeopardyGame.Data.Exceptions
{
    public class SeriLogConfig
    {
        private String logFileName = $"logFile_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.txt";
        private String rutaTris = "C:\\Users\\wachi\\OneDrive\\Documentos\\GitHub\\JeopardyTecnologias\\JeopardyGameServer\\JeopardyGame.Data\\Exceptions\\Logs\\";
        private String rutaDondonaji =" ";
        private String path; 
        public SeriLogConfig() 
        {
            String rutaPC;
            if (GetMachineId().Equals("6479_A753_1090_3048."))
            {
                rutaPC = rutaTris;
            }
            else
            {
                rutaPC = rutaDondonaji;
            }
            path = Path.Combine(rutaPC, logFileName);
            ConfigureLogger(path);
        }
        public static void ConfigureLogger(String ruta)
        {
            Log.Logger = new LoggerConfiguration().MinimumLevel.Error().WriteTo.File(ruta, rollingInterval: RollingInterval.Day).CreateLogger();
        }

        public String getPath()
        {            
            return path;
        }


        private static string GetMachineId()
        {
            try
            {
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
                ManagementObjectCollection drives = searcher.Get();
                foreach (ManagementObject drive in drives)
                {
                    string serialNumber = drive["SerialNumber"]?.ToString();
                    if (!string.IsNullOrEmpty(serialNumber))
                    {                       
                        return serialNumber;
                    }
                }
            }
            catch (Exception ex)
            {
                
            }            
            return Guid.NewGuid().ToString();
        }


    }


}
