using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandler = JeopardyGame.Exceptions.ExceptionHandler;


namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LiveChat.xaml
    /// </summary>
    public partial class LiveChat : Page, ILiveChatCallback
    {
        private static bool isAdmin;
        private static int roomCode;
        private static UserSingleton userSingleton;
        private static List<MessageChat> messagesInChats = new List<MessageChat>();
        private static LiveChatClient proxyChannelCallback;
        private static LobbyPage lobbyPage;

        public LiveChat()
        {
            try
            {
                InitializeComponent();
                InstanceContext context = new InstanceContext(this);
                proxyChannelCallback = new LiveChatClient(context);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        public void StartPage(bool rol, int room, LobbyPage lobby)
        {
            lobbyPage = lobby;
            isAdmin = rol;
            roomCode = room;
            PrepareWindow();
        }

        private void PrepareWindow()
        {
            userSingleton = UserSingleton.GetMainUser();
            if (isAdmin)
            {
                proxyChannelCallback.CreateChatForLobby(roomCode,userSingleton.IdUser);
            }
            else
            {
                var serverResponse = proxyChannelCallback.GetAllMessages(roomCode, userSingleton.IdUser);
                if (serverResponse.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    messagesInChats = serverResponse.ObjectSaved.ToList();
                    LoadChat();
                }                
            }
        }

        public void LoadChat()
        {
            try { 
            stpChat.Children.Clear();
                foreach (var item in messagesInChats)
                {
                    ChatMessageCard chatMessageCard = new ChatMessageCard(item.UserName, item.MessageToSend);
                    if (item.IdUser == userSingleton.IdUser)
                    {
                        chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                    }
                    else
                    {
                        chatMessageCard.HorizontalAlignment = HorizontalAlignment.Left;
                    }
                    stpChat.Children.Add(chatMessageCard);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        private void ClickCloseChat(object sender, MouseButtonEventArgs e)
        {
            lobbyPage.CloseLiveChat();
        }

        private void ClickSendMessage(object sender, MouseButtonEventArgs e)
        {
            try
            {
                string message = txbMessageToSend.Text;
                if (!string.IsNullOrEmpty(message))
                {
                    proxyChannelCallback.SendMessage(userSingleton.IdUser, roomCode, userSingleton.UserName, message);
                    MessageChat messageChat = new MessageChat();
                    messageChat.IdUser = userSingleton.IdUser;
                    messageChat.UserName = userSingleton.UserName;
                    messageChat.MessageToSend = message;
                    messagesInChats.Add(messageChat);
                    ChatMessageCard chatMessageCard = new ChatMessageCard(userSingleton.UserName, message);
                    chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                    stpChat.Children.Add(chatMessageCard);
                    txbMessageToSend.Text = string.Empty;
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        public void ReceiveMessage(GenericClassOfMessageChatxY0a3WX4 message)
        {
            try
            {
                if (message.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    messagesInChats.Add(message.ObjectSaved);
                    LoadChat();
                }
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

    }

}
