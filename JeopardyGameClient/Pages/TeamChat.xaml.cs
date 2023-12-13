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
    /// Lógica de interacción para TeamChat.xaml
    /// </summary>
    public partial class TeamChat : Page, IChatForTeamsCallback
    {
        private static UserSingleton userSingleton;
        private static ChatForTeamsClient proxyChannelCallback;
        private int idTeamMate;
        private GameBoard gameBoard;

        public TeamChat(GameBoard game, int idTeam)
        {
            InitializeComponent();
            this.gameBoard = game;
            this.idTeamMate = idTeam;
            InstanceContext context = new InstanceContext(this);
            proxyChannelCallback = new ChatForTeamsClient(context);
            userSingleton = UserSingleton.GetMainUser();
            proxyChannelCallback.RegisterForTeamChat(userSingleton.IdUser);
        }   

        private void ClickCloseChat(object sender, MouseButtonEventArgs e)
        {
            gameBoard.CloseLiveChat();
        }

        private void ClickSendMessage(object sender, MouseButtonEventArgs e)
        {
            string message = txbMessageToSend.Text;
            if (!string.IsNullOrEmpty(message))
            {
                proxyChannelCallback.SendMessageTeam(userSingleton.IdUser, idTeamMate, userSingleton.UserName, message);                
                ChatMessageCard chatMessageCard = new ChatMessageCard(userSingleton.UserName, message);
                chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                stpChat.Children.Add(chatMessageCard);
                txbMessageToSend.Text = string.Empty;
            }
        }

        public void ReceiveMessageTeamChat(GenericClassOfMessageChatxY0a3WX4 message)
        {
            if (message.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                ChatMessageCard chatMessageCard = new ChatMessageCard(message.ObjectSaved.UserName, message.ObjectSaved.MessageToSend);
                chatMessageCard.HorizontalAlignment = HorizontalAlignment.Right;
                stpChat.Children.Add(chatMessageCard);
            }
        }

    }
}
