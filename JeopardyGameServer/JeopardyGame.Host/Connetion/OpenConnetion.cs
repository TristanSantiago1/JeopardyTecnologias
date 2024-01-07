using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using Microsoft.Extensions.Configuration;
using System;
using System.Configuration;
using System.Data.SqlTypes;
using System.IO;
using System.Reflection;
using System.ServiceModel;
using System.ServiceModel.Security;
using ConfigurationManager = System.Configuration.ConfigurationManager;

namespace JeopardyGame.Host.Connection
{
    public static class OpenConnection
    {
        static void Main(string[] args)        
        {
            try
            {                   
                GetConectionString();
                UserManagerDataOperation.DeleteAllGuestUsers();
                using (ServiceHost host = new ServiceHost(typeof(Service.ServiceImplementation.ServicesReferenceAuthor)))
                {
                    host.Open();
                    Console.WriteLine(Properties.StringResources.ServerUp);
                    Console.ReadLine();
                }                
            }
            catch (SecurityNegotiationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (AddressAlreadyInUseException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (ProtocolException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }
            catch (SystemException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                Console.WriteLine(Properties.StringResources.ServerFail);
                Console.ReadLine();
            }           
        }

        public static void GetConectionString()
        {
            string conectionString = Environment.GetEnvironmentVariable(Properties.StringResources.EnviromentVariable);
            var configuration = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            var conectionStringSection = configuration.ConnectionStrings.ConnectionStrings[Properties.StringResources.DBName];
            if (conectionStringSection != null)
            {
                conectionStringSection.ConnectionString = conectionString;
                configuration.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection(Properties.StringResources.ConfigSection);
            }            
        }


      
    }
}
