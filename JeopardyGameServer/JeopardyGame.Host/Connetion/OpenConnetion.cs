using JeopardyGame.Data.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Security;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Host.Connetion
{
    class OpenConnetion
    {
        static void Main(string[] args)        
        {
            SeriLogConfig logConfig = new SeriLogConfig();
            try
            {
                using (ServiceHost host = new ServiceHost(typeof(JeopardyGame.Service.ServiceImplementation.ServicesReferenceAuthor)))
                {
                    host.Open();
                    Console.WriteLine("Server is running");
                    Console.ReadLine();
                }
            }
            catch(ProtocolException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.ERROR);
            }
            catch(SecurityNegotiationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.ERROR);
            }
            catch (AddressAlreadyInUseException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.ERROR);
            }
            catch (SystemException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.ERROR);
            }
            catch (Exception ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDiccionary.ERROR);
            }
           
           
        }
    }
}
