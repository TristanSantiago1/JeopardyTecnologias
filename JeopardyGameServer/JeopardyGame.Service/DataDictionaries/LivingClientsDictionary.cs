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
    public static class LivingClientsDictionary
    {
        private static Dictionary<string, OperationContext> livingClientsDictionary = new Dictionary<string, OperationContext>();

        public static void RegisterNewClientInDictionary(string userName, OperationContext channel)
        {
            if (!string.IsNullOrEmpty(userName) && channel != null && !livingClientsDictionary.ContainsKey(userName))
            {
                livingClientsDictionary.Add(userName, channel);
            }
        }

        public static OperationContext GetClient(string userName)
        {
            if (!string.IsNullOrEmpty(userName))
            {
                foreach (var item in livingClientsDictionary)
                {
                    if (item.Key == userName)
                    {
                        return item.Value;
                    }
                }
            }
            return null;
        }

        public static void RemoveClientFromDictionary(string userName)
        {
            if (!string.IsNullOrEmpty(userName) && livingClientsDictionary.ContainsKey(userName))
            {
                livingClientsDictionary.Remove(userName);
            }
        }

        public static void RenewLivingCallBack(string userName, OperationContext channel)
        {
            if (!string.IsNullOrEmpty(userName) && channel != null && livingClientsDictionary.ContainsKey(userName))
            {
                livingClientsDictionary[userName] = channel;
            }
            else
            {
                RegisterNewClientInDictionary(userName, channel);
            }
        }

        public static Dictionary<string, OperationContext> GetLivingClientsList()
        {
            return livingClientsDictionary;
        }

        public static void CheckCallBacks()
        {
            List<string> clientsNotActiveAnymore = new List<string>();
            foreach (var item in livingClientsDictionary)
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
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    clientsNotActiveAnymore.Add(item.Key);
                }
                catch (TimeoutException ex)
                {
                    clientsNotActiveAnymore.Add(item.Key);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
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
