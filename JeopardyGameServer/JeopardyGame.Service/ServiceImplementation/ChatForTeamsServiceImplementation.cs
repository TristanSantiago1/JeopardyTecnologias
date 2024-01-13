using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.InterfacesSevices;
using System.ServiceModel;
using JeopardyGame.Service.ChannelsAdministrator;
using System;
using System.Data.Entity;

namespace JeopardyGame.Service.ServiceImplementation
{
    internal class ChatForTeamsServiceImplementation : IChatForTeamsService
    {

        private readonly int NULL_INT_VALUE = 0;
        private static readonly Object objectLock = new();

        public void RegisterForTeamChat(int idUser)
        {
            lock (objectLock)
            {
                try
                {
                    if (idUser != NULL_INT_VALUE)
                    {
                        var savedChannelOfTeamChat = TeamChatsDictionary.GetChannelCallBackTeamChatUser(idUser);
                        if (savedChannelOfTeamChat == null)
                        {
                            var newChannelForTeamChat = OperationContext.Current;
                            TeamChatsDictionary.RegisterNewTeamChatUserInDictionary(idUser, newChannelForTeamChat);
                        }
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

        public int RenewTeamChatCallBack(int idUser)
        {
            int resultToReturn;
            lock (objectLock)
            {
                try
                {
                    if (idUser != NULL_INT_VALUE)
                    {
                        var newChannelForTeamChat = OperationContext.Current;
                        TeamChatsDictionary.RenewTeamChatCallBack(idUser, newChannelForTeamChat);
                        resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    }
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
            return resultToReturn;
        }
    }

    public partial class TeamChatForTeamsOperationsImplemtation : IChatForTeamsOperations
    {

        private readonly int NULL_INT_VALUE = 0;
        private static readonly Object objectLock = new();
        public void SendMessageTeam(int idUser, int idTeamMate, string userName, string messageToSend)
        {
            if (idUser <= NULL_INT_VALUE || idTeamMate <= NULL_INT_VALUE || string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(messageToSend))
            {
                NotifyUserOfNewMessage(idTeamMate, new MessageChat(), false);
            }
            else
            {
                try
                {
                    MessageChat newMessageInTeamChat = new MessageChat();
                    newMessageInTeamChat.IdUser = idUser;
                    newMessageInTeamChat.UserName = userName;
                    newMessageInTeamChat.MessageToSend = messageToSend;
                    NotifyUserOfNewMessage(idTeamMate, newMessageInTeamChat, true);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void NotifyUserOfNewMessage(int idTeamMate, MessageChat messageToSend, bool success)
        {
            if (success)
            {
                var savedChannelForMessage = TeamChatsDictionary.GetChannelCallBackTeamChatUser(idTeamMate);
                if (savedChannelForMessage != null)
                {
                    try
                    {
                        GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                        resultToReturn.ObjectSaved = messageToSend;
                        resultToReturn.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                        savedChannelForMessage.GetCallbackChannel<IIChatForTeamsCallBack>().ReceiveMessageTeamChat(resultToReturn);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
                    }
                }
            }
        }

        public void UnregisterFromTeamChat(int idUser)
        {
            lock (objectLock)
            {
                if (idUser != NULL_INT_VALUE)
                {
                    var channelForUnregisterTeamChat = TeamChatsDictionary.GetChannelCallBackTeamChatUser(idUser);
                    if (channelForUnregisterTeamChat != null)
                    {

                        TeamChatsDictionary.RemoveRegistryOfTeamChatUserFromDictionary(idUser);
                    }
                }
            }
        }
    }

}
