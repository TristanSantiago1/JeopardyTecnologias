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
    public class CheckUserLivingImplementation : ICheckUserLiving
    {
        public int SubscribeToICheckUserLiving(UserPOJO user)
        {
            try
            {
                if (user == null)
                {
                    return ExceptionDictionary.NULL_PARAEMETER;
                }
                var client = LivingClients.GetClient(user.UserName);
                if (client == null)
                {
                    OperationContext context = OperationContext.Current;
                    LivingClients.RegisterNewClientInDictionary(user.UserName, context);
                    return ExceptionDictionary.SUCCESFULL_EVENT;
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(user.IdUser, ChannelAdministrator.AVAILABILITY_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            return ExceptionDictionary.UNSUCCESFULL_EVENT;
        }

    
    }

    public class CheckUserLivingUnsubscribeImplementation : ICheckUserLivingUnsubscribe
    {
        public void UnsubscribeFromICheckUserLiving(UserPOJO user)
        {
            if (user != null)
            {
                var client = LivingClients.GetClient(user.UserName);
                if (client != null)
                {
                    LivingClients.RemoveClientFromDictionary(user.UserName);
                }
            }
        }        
    }
}
