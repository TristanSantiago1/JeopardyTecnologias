using JeopardyGame.DialogWindows;
using JeopardyGame.Exceptions;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    public partial class TeamChat : Page, IChatForTeamsServiceCallback
    {
        private static UserSingleton userSingleton = UserSingleton.GetMainUser();
        private int idTeamMate;
        private GameBoard gameBoard;

        public TeamChat(GameBoard game, int idTeam)
        {
            InitializeComponent();
            this.gameBoard = game;
            this.idTeamMate = idTeam;
            InstanceContext context = new InstanceContext(this);
            ChatForTeamsServiceClient chatForTeamProxy = new (context);
            RegisterForCallBack(chatForTeamProxy);
        }   

        public void RenewCallBackChannel()
        {
            try
            {
                InstanceContext context = new InstanceContext(this);
                ChatForTeamsServiceClient chatForTeamProxy = new ChatForTeamsServiceClient(context);
                chatForTeamProxy.RenewTeamChatCallBack(userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblWithoutConection);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);
            }
        }

        private void RegisterForCallBack(ChatForTeamsServiceClient chatForTeamProxy)
        {
            try
            {
                chatForTeamProxy.RegisterForTeamChat(userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailRegistryToCallBack + " : " + Properties.Resources.lblWithoutConection);
            }
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.GenericEmailIssue + " " + Properties.Resources.lblEndPointNotFound);
            }
        }

        private void ClickCloseChat(object sender, MouseButtonEventArgs e)
        {
            gameBoard.CloseLiveChat();
        }

        private void ClickSendMessage(object sender, MouseButtonEventArgs e)
        {
            try
            {
                string messageToSend = txbMessageToSend.Text;
                if (!string.IsNullOrEmpty(messageToSend))
                {
                    ChatForTeamsOperationsClient chatForTeamProxy = new();
                    chatForTeamProxy.SendMessageTeam(userSingleton.IdUser, idTeamMate, userSingleton.UserName, messageToSend);
                    ChatMessageCard chatMessageCard = new ChatMessageCard(userSingleton.UserName, messageToSend);
                    chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                    stpChat.Children.Add(chatMessageCard);
                    txbMessageToSend.Text = string.Empty;
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
        }

        public void ReceiveMessageTeamChat(GenericClassOfMessageChatxY0a3WX4 messageRecieve)
        {
            try
            {
                if (messageRecieve.CodeEvent == Exceptions.ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    ChatMessageCard chatMessageCard = new ChatMessageCard(messageRecieve.ObjectSaved.UserName, messageRecieve.ObjectSaved.MessageToSend);
                    chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                    stpChat.Children.Add(chatMessageCard);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
            catch (SocketException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                stpChat.Children.Add(new ChatMessageCard(Properties.Resources.txbErrorTitle, Properties.Resources.txbFailToSendOrReciveAMessage));
            }
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow, DialogWindowManager.ERROR);
        }

    }
}
