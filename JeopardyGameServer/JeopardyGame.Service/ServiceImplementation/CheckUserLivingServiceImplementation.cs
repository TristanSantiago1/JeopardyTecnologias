using JeopardyGame.Data;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ChannelsAdministrator;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public class CheckUserLivingServiceImplementation : ICheckUserLivingService
    {
        private static readonly Object objectLock = new();

        public int RenewLivingCallBack(UserPojo user)
        {
            int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
            lock (objectLock)
            {                
                try
                {
                    if (user == null)
                    {
                        return resultToReturn = CodesDictionary.NULL_PARAEMETER;
                    }
                    OperationContext context = OperationContext.Current;
                    LivingClientsDictionary.RenewLivingCallBack(user.UserName, context);
                    resultToReturn = CodesDictionary.SUCCESFULL_EVENT;

                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }

        public int SubscribeToICheckUserLiving(UserPojo user)
        {
            int resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
            lock (objectLock)
            {
                try
                {
                    if (user == null)
                    {
                        return CodesDictionary.NULL_PARAEMETER;
                    }
                    var client = LivingClientsDictionary.GetClient(user.UserName);
                    if (client == null)
                    {
                        OperationContext context = OperationContext.Current;
                        LivingClientsDictionary.RegisterNewClientInDictionary(user.UserName, context);
                        resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }

    
    }

    public class CheckUserLivingUnsubscribeImplementation : ICheckUserLivingUnsubscribe
    {
        private static readonly Object objectLock = new();
        public void UnsubscribeFromICheckUserLiving(UserPojo user)
        {
            lock (objectLock)
            {
                if (user != null)
                {
                    var client = LivingClientsDictionary.GetClient(user.UserName);
                    if (client != null)
                    {
                        LivingClientsDictionary.RemoveClientFromDictionary(user.UserName);
                    }
                }
            }
        }        
    }
}
