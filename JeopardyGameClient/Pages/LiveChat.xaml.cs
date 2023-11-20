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

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LiveChat.xaml
    /// </summary>
    public partial class LiveChat : Page, ILiveChatCallback
    {
        private bool isAdmin;
        private int roomCode;
        private UserSingleton userSingleton;
        private List<MessageChat> messagesInChats = new List<MessageChat>();
        private LiveChatClient proxyChannelCallback;
        public LiveChat()
        {
            InitializeComponent();
            InstanceContext context = new InstanceContext(this);
            proxyChannelCallback = new LiveChatClient(context);
        }

        public void StartPage(bool rol,int room)
        {
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
                }                
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
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
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

        public void ReceiveMessage(GenericClassOfMessageChatxY0a3WX4 message)
        {
            if(message.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
            {
                messagesInChats.Add(message.ObjectSaved);
                LoadChat();
            }
        }

    }

}
