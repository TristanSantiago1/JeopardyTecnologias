using JeopardyGame.DialogWindows;
using JeopardyGame.Exceptions;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.ServiceModel;
using System.ServiceModel.Security;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace JeopardyGame
{

    public class UserSingleton : ICheckUserLivingCallback
    {
        private static UserSingleton instanceOfUserSingleton;
        private static bool isActive = false;
        private static System.Threading.Timer heartbeatTimer;
        public int IdUser { get; set; }
        public String Name { get; set; }
        public String UserName { get; set; }
        public String Email { get; set; }
        public String Password { get; set; }
        public int IdPlayer { get; set; }
        public int GeneralPoints { get; set; }
        public int NoReports { get; set; }
        public int IdCurrentAvatar { get; set; }
        public int IdState { get; set; }

        private UserSingleton() { }
        private UserSingleton(UserPojo userSingleton, PlayerPojo playerSingleton) 
        {
            IdUser = userSingleton.IdUser;
            Name = userSingleton.Name;
            UserName = userSingleton.UserName;
            Email = userSingleton.EmailAddress;
            Password = userSingleton.Password;
            IdPlayer = playerSingleton.IdPlayer;
            GeneralPoints = playerSingleton.GeneralPoints;
            NoReports = playerSingleton.NoReports;
            IdCurrentAvatar = playerSingleton.IdActualAvatar;
            IdState = playerSingleton.IdState;
        }

        public static UserPojo GetUserPojoSingelton()
        {            
            if(instanceOfUserSingleton != null)
            {
                UserPojo userPOJO = new UserPojo()
                {
                    IdUser = instanceOfUserSingleton.IdUser,
                    Name = instanceOfUserSingleton.Name,
                    UserName = instanceOfUserSingleton.UserName,
                    EmailAddress = instanceOfUserSingleton.Email,
                    Password = instanceOfUserSingleton.Password
                };
                return userPOJO;
            }
            return null;
        }

        public static UserSingleton GetMainUser()
        {
            isActive = true;
            if (instanceOfUserSingleton == null)
            {
                instanceOfUserSingleton = new UserSingleton();
                BeginHeartBeat();
            }
            return instanceOfUserSingleton;
        }

        public static UserSingleton GetMainUser(UserPojo userSingleton, PlayerPojo playerSingleton)
        {
            isActive = true;
            if (instanceOfUserSingleton == null)
            {
                instanceOfUserSingleton = new UserSingleton(userSingleton, playerSingleton);
                BeginHeartBeat();
            }
            return instanceOfUserSingleton;
        }

        public static void CleanSingleton()
        {
            instanceOfUserSingleton = null;
            isActive = false;
            StopHeartBeat();
        }
        public void UpdateNameData(string newName)
        {
            this.Name = newName;
        }
        public void UpdateAvatarData (int newPhoto)
        {
            this.IdCurrentAvatar = newPhoto;
        }
        public void UpdateEmailData(string newEmail)
        {
            this.Email = newEmail;
        }

        public bool IsClientActive()
        {
            return isActive;
        }

        private static void BeginHeartBeat()
        {
           
            try
            {
                var heartbeatClient = new HeartBeatClient();
                heartbeatTimer = new System.Threading.Timer(state => {
                    try
                    {
                        heartbeatClient.Heartbeat();
                    }
                    catch (SecurityNegotiationException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);

                    }

                    catch (AddressAccessDeniedException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);

                    }
                    catch (ProtocolException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);

                    }
                    catch (SocketException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);

                    }
                    catch (EndpointNotFoundException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);

                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                        if (ex.InnerException is SocketException socketException)
                        {
                            ExceptionHandlerForLogs.LogException(socketException, ExceptionDictionary.FATAL_EXCEPTION);
                        }
                    }
                    }, null, TimeSpan.Zero, TimeSpan.FromSeconds(50));
            }
            catch (SecurityNegotiationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (AddressAccessDeniedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (ProtocolException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SocketException ex) 
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);                
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);                
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                if(ex.InnerException is SocketException socketException)
                {
                    ExceptionHandlerForLogs.LogException(socketException, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private static void StopHeartBeat()
        {
            try
            {
                heartbeatTimer?.Change(Timeout.Infinite, Timeout.Infinite);
                heartbeatTimer?.Dispose();
            }catch(ObjectDisposedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }



    }
}
