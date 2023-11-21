using JeopardyGame.Helpers;
using JeopardyGame.Pages;
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

namespace JeopardyGame.UserControls
{
    /// <summary>
    /// Lógica de interacción para LiveChatUserControl.xaml
    /// </summary>
    public partial class LiveChatUserControl : UserControl
    {
        private bool isAdmin;
        private int roomCode;
        private UserSingleton userSingleton;
        private List<MessageChat> messagesInChats = new List<MessageChat>();
        private LiveChatClient proxyChannelCallback;
        private LobbyPage lobbyPage;

        public LiveChatUserControl()
        {
            InitializeComponent();
            
        }

        public void StartPage(bool rol, int room, LobbyPage lobby)
        {
            isAdmin = rol;
            roomCode = room;
            lobbyPage = lobby;
            InstanceContext contextChat = new InstanceContext(lobby);
            proxyChannelCallback = new LiveChatClient(contextChat);
            PrepareWindow();
        }

        private void PrepareWindow()
        {
            userSingleton = UserSingleton.GetMainUser();
            if (isAdmin)
            {
                proxyChannelCallback.CreateChatForLobby(roomCode, userSingleton.IdUser);
            }            
            GetAllMessages();            
        }

        private void GetAllMessages()
        {
            var serverResponse = proxyChannelCallback.GetAllMessages(roomCode, userSingleton.IdUser);
            if (serverResponse.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                messagesInChats = serverResponse.ObjectSaved.ToList();
                LoadChat();
            }
        }

        public void LoadChat()
        {
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

        private void ClickCloseChat(object sender, MouseButtonEventArgs e)
        {
            lobbyPage.CloseLiveChat();
        }

        private void ClickSendMessage(object sender, MouseButtonEventArgs e)
        {
            string message = txbMessageToSend.Text;
            if (!string.IsNullOrEmpty(message))
            {
                proxyChannelCallback.SendMessage(userSingleton.IdUser, roomCode, userSingleton.UserName, message);
                ChatMessageCard chatMessageCard = new ChatMessageCard(userSingleton.UserName, message);
                chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                stpChat.Children.Add(chatMessageCard);
                txbMessageToSend.Text = string.Empty;
            }
        }

    }
}
