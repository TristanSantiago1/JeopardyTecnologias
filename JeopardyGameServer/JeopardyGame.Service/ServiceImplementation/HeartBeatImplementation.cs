using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using System.ServiceModel;
using System;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class HeartBeatImplementation : IHeartBeat
    {
        public void Heartbeat()
        {
            try
            {

            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }
    }
}
