using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class LivingClients
    {
        private static Dictionary<string, OperationContext> livingClients = new Dictionary<string, OperationContext>();

        public static void RegisterNewClientInDictionary(string userName, OperationContext channel)
        {
            if (!livingClients.ContainsKey(userName))
            {
                livingClients.Add(userName, channel);
            }
        }
        public static OperationContext GetClient(string userName)
        {
            foreach (var item in livingClients)
            {
                if (item.Key == userName)
                {
                    return item.Value;
                }
            }
            return null;
        }
        public static void RemoveClientFromDictionary(string userName)
        {
            if (livingClients.ContainsKey(userName))
            {
                livingClients.Remove(userName);
            }
        }
        public static Dictionary<string, OperationContext> GetLivingClientsList()
        {
            return livingClients;
        }

        public static void CheckCallBacks()
        {
            List<string> clientsNotActiveAnymore = new List<string>();
            foreach (var item in livingClients)
            {                
                try
                {
                    bool isActive = item.Value.GetCallbackChannel<ICheckUserLivingCallBack>().IsClientActive();
                    if (!isActive)
                    {
                        clientsNotActiveAnymore.Add(item.Key);
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    clientsNotActiveAnymore.Add(item.Key);
                }
                catch (TimeoutException ex)
                {
                    clientsNotActiveAnymore.Add(item.Key);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    clientsNotActiveAnymore.Add(item.Key);
                }
            }
            foreach (var item in clientsNotActiveAnymore)
            {
                RemoveClientFromDictionary(item);
            }
        }

    }
}
