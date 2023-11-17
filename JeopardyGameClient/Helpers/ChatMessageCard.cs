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
        StackPanel stpUserMessage;
        Label lblUserName;
        Label lblMessage;
        public ChatMessageCard(String userName,  String message)
        {
            this.Margin = new System.Windows.Thickness(1, 2, 1, 2);
            this.Width = 400;            
            this.MaxWidth = 500;
            this.Height = double.NaN;            
            this.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#000000"));
            this.Opacity = .4;

            lblUserName = new Label();
            lblMessage = new Label();
            stpUserMessage = new StackPanel();

            SetUserNameStyle(userName);
            SetMessageStyle(message);
            SetStackPanelStyle();

            this.Child = stpUserMessage;
        }

        private void SetStackPanelStyle()
        {
            stpUserMessage.Orientation = System.Windows.Controls.Orientation.Vertical;
            stpUserMessage.Height = Double.NaN;
            stpUserMessage.Width = Double.NaN;           
            stpUserMessage.MaxWidth = 450;
            stpUserMessage.Margin = new System.Windows.Thickness(0); ;
            stpUserMessage.Children.Add(lblUserName);
            stpUserMessage.Children.Add(lblMessage);           
        }

        private void SetUserNameStyle(string userName)
        {
            lblUserName.Height = 10;
            lblUserName.Width = Double.NaN;
            lblUserName.MaxWidth = 400;
            lblUserName.FontSize = 10;
            lblUserName.Foreground = new SolidColorBrush(Colors.WhiteSmoke);
            lblUserName.HorizontalContentAlignment = System.Windows.HorizontalAlignment.Left;
            lblUserName.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            lblUserName.Content = userName;
            lblUserName.Margin = new System.Windows.Thickness(0, 0, 0, 2);
        }

        private void SetMessageStyle(string message)
        {
            lblUserName.Height = Double.NaN;
            lblUserName.Width = Double.NaN;
            lblUserName.MaxWidth = 400;
            lblUserName.FontSize = 16;
            lblUserName.Foreground = new SolidColorBrush(Colors.Black);
            lblUserName.HorizontalContentAlignment = System.Windows.HorizontalAlignment.Left;
            lblUserName.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            lblUserName.Content = message;
        }
        
    }

}
