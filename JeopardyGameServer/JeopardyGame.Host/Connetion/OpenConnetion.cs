using JeopardyGame.Data.Exceptions;
using System;
using System.ServiceModel;
using System.ServiceModel.Security;

namespace JeopardyGame.Host.Connection
{
    class OpenConnection
    {
        static void Main(string[] args)        
        {
            try
            {
                using (ServiceHost host = new ServiceHost(typeof(JeopardyGame.Service.ServiceImplementation.ServicesReferenceAuthor)))
                {
                    host.Open();
                    Console.WriteLine("Server is running");
                    Console.ReadLine();
                }
            }
            catch (SecurityNegotiationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }
            catch (AddressAlreadyInUseException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }
            catch (ProtocolException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }
            catch (SystemException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.ERROR);
            }         
        }
    }
}
