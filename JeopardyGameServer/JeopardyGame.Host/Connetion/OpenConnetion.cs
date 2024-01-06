using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using System;
using System.Data.SqlTypes;
using System.ServiceModel;
using System.ServiceModel.Security;

namespace JeopardyGame.Host.Connection
{
    public class OpenConnection
    {
        private static int tries = 0;
        private static  int LIMIT = 5;

        static void Main(string[] args)        
       {
            try
            {
                if (tries <= LIMIT) 
                {
                    UserManagerDataOperation.DeleteAllGuestUsers();
                    using (ServiceHost host = new ServiceHost(typeof(Service.ServiceImplementation.ServicesReferenceAuthor)))
                    {
                        host.Open();
                        Console.WriteLine("Server is running");
                        Console.ReadLine();
                        tries = 0;
                    }
                }
            }
            catch (SecurityNegotiationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++;
                Main(args);
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }
            catch (AddressAlreadyInUseException ex)
            {
                ExceptionHandler.LogException(ex.InnerException, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }
            catch (ProtocolException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }
            catch (SystemException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
                tries++ ;
                Main(args);
            }           
        }


      
    }
}
