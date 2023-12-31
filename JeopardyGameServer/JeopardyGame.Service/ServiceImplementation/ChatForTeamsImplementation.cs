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
    internal class ChatForTeamsImplementation : IChatForTeams
    {

        private readonly int NULL_INT_VALUE = 0;

        public void RegisterForTeamChat(int idUser)
        {
            try
            {
                if (idUser != NULL_INT_VALUE)
                {
                    var savedChannelOfTeamChat = TeamChats.GetChannelCallBackTeamChatUser(idUser);
                    if (savedChannelOfTeamChat == null)
                    {
                        var newChannelForTeamChat = OperationContext.Current;
                        TeamChats.RegisterNewTeamChatUserInDictionary(idUser, newChannelForTeamChat);
                    }
                }
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (InvalidOperationException ex)
            {
                ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
        }

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
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (TimeoutException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (CommunicationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
                catch (InvalidOperationException ex)
                {
                    ChannelAdministrator.HandleCommunicationIssue(idUser, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                    ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                }
            }
        }

        private void NotifyUserOfNewMessage(int idTeamMate, MessageChat messageToSend, bool success)
        {
            if (success)
            {
                var savedChannelForMessage = TeamChats.GetChannelCallBackTeamChatUser(idTeamMate);
                if (savedChannelForMessage != null)
                {
                    try
                    {
                        GenericClass<MessageChat> resultToReturn = new GenericClass<MessageChat>();
                        resultToReturn.ObjectSaved = messageToSend;
                        resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                        savedChannelForMessage.GetCallbackChannel<IIChatForTeamsCallBack>().ReceiveMessageTeamChat(resultToReturn);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (TimeoutException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (CommunicationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                    catch (InvalidOperationException ex)
                    {
                        ChannelAdministrator.HandleCommunicationIssue(idTeamMate, ChannelAdministrator.TEAM_CHAT_EXCEPTION);
                        ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                    }
                }
            }
        }

        public void UnregisterFromTeamChat(int idUser)
        {
            if (idUser != NULL_INT_VALUE)
            {
                var channelForUnregisterTeamChat = TeamChats.GetChannelCallBackTeamChatUser(idUser);
                if (channelForUnregisterTeamChat != null)                {

                    TeamChats.RemoveRegistryOfTeamChatUserFromDictionary(idUser);
                }
            }
        }

    }
}
