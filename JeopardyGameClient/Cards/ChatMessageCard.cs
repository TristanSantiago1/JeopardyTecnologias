using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media;

namespace JeopardyGame.Helpers
{
    public class ChatMessageCard : Border
    {
        private StackPanel stpUserMessage;
        private TextBlock lblUserName;
        private TextBlock txbMessage;
        public ChatMessageCard(String userName,  String message)
        {
            SetCardStyle();
            InitializeComponents();
            SetUserNameStyle(userName);
            SetMessageStyle(message);
            SetStackPanelStyle();
            this.Child = stpUserMessage;
        }
        
        private void SetCardStyle()
        {
            this.Margin = new System.Windows.Thickness(1, 2, 1, 2);
            this.Width = double.NaN;
            this.MaxWidth = 500;
            this.Height = double.NaN;
            this.Background = new SolidColorBrush(Colors.White);
            this.Opacity = .9;
            this.CornerRadius = new System.Windows.CornerRadius(14);
        }

        private void InitializeComponents()
        {
            lblUserName = new TextBlock();
            txbMessage = new TextBlock();
            stpUserMessage = new StackPanel();
        }

        private void SetStackPanelStyle()
        {
            stpUserMessage.Orientation = Orientation.Vertical;
            stpUserMessage.Height = Double.NaN;
            stpUserMessage.Width = Double.NaN;           
            stpUserMessage.MaxWidth = 450;
            stpUserMessage.Margin = new System.Windows.Thickness(0); 
            stpUserMessage.Children.Add(lblUserName);
            stpUserMessage.Children.Add(txbMessage);           
        }

        private void SetUserNameStyle(string userName)
        {
            lblUserName.Height = Double.NaN;
            lblUserName.Width = Double.NaN;
            lblUserName.MaxWidth = 400;
            lblUserName.FontSize = 15;
            lblUserName.Foreground = new SolidColorBrush(Colors.DarkRed);
            lblUserName.Text = userName;
            lblUserName.Margin = new System.Windows.Thickness(10, 0, 10, 2);
        }

        private void SetMessageStyle(string message)
        {
            txbMessage.Height = Double.NaN;
            txbMessage.Width = Double.NaN;
            txbMessage.MaxWidth = 400;
            txbMessage.FontSize = 20;
            txbMessage.Foreground = new SolidColorBrush(Colors.Black);
            txbMessage.Margin = new System.Windows.Thickness(10, 0, 10, 2);
            txbMessage.Text = message;
            txbMessage.TextWrapping = System.Windows.TextWrapping.Wrap;
        }
        
    }

}
