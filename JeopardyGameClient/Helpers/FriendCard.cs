using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Media;
using Color = System.Windows.Media.Color;
using Label = System.Windows.Controls.Label;
using Button = System.Windows.Controls.Button;
namespace JeopardyGame.Helpers
{
    public partial class FriendCard : StackPanel
    {
        StackPanel nameAndStatus;
        Label lblFriendName;
        Border borderButton;
        System.Windows.Shapes.Ellipse ellConectionStatus;
        Button bttInviteFriend;
        public FriendCard(String userName, bool state, String textInvite) 
        {
            this.Margin = new System.Windows.Thickness(1,2,1,2);
            this.Width = 419;
            this.MaxWidth = 420;
            this.Orientation = System.Windows.Controls.Orientation.Horizontal;
            this.Background = new SolidColorBrush(Colors.Transparent);
           
            lblFriendName = new Label();
            ellConectionStatus = new System.Windows.Shapes.Ellipse();
            bttInviteFriend = new Button();
            nameAndStatus = new StackPanel();
            borderButton = new Border();

            SetLabelStyle(userName);
            SetEllipseStyle(state);
            SetButtonStyle(textInvite);
            SetStackPanelStyle();          
            
            this.Children.Add(nameAndStatus);
            this.Children.Add(borderButton);
           
        }

        private void SetLabelStyle(string userName)
        {
            lblFriendName.Height = 50;
            lblFriendName.Width = Double.NaN;  
            lblFriendName.Margin = new System.Windows.Thickness(5, 5, 0, 5);  
            lblFriendName.FontSize = 25;
            lblFriendName.Foreground = new SolidColorBrush(Colors.White);
            lblFriendName.HorizontalContentAlignment = System.Windows.HorizontalAlignment.Left;
            lblFriendName.Content = userName;
        }

        private void SetEllipseStyle(bool state)
        {
            ellConectionStatus.Height = 20;
            ellConectionStatus.Width = 20;
            ellConectionStatus.Margin = new System.Windows.Thickness(0, 5, 10, 5);  

            if (state)
            {
                ellConectionStatus.Fill = new SolidColorBrush(Colors.Green);
            }
            else
            {
                ellConectionStatus.Fill = new SolidColorBrush(Colors.Gray);
            }
        }

        private void SetStackPanelStyle()
        {
            nameAndStatus.Children.Add(lblFriendName);
            nameAndStatus.Children.Add(ellConectionStatus);
            nameAndStatus.Orientation = System.Windows.Controls.Orientation.Horizontal;
            nameAndStatus.Width = 300;
            nameAndStatus.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
        }

        private void SetButtonStyle(string textInvite)
        {            
            bttInviteFriend.Height = 30;
            bttInviteFriend.Width = 60;
            bttInviteFriend.Margin = new System.Windows.Thickness(0);  
            bttInviteFriend.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;  
            bttInviteFriend.FontSize = 15;
            bttInviteFriend.Foreground = new SolidColorBrush(Colors.White); 
            bttInviteFriend.Background = new SolidColorBrush(Colors.Transparent);
            bttInviteFriend.BorderBrush = new SolidColorBrush(Colors.Transparent);
            bttInviteFriend.Content = textInvite;            
            borderButton.CornerRadius = new System.Windows.CornerRadius(15);
            borderButton.BorderBrush = new SolidColorBrush(Colors.Blue);
            borderButton.Background = new SolidColorBrush(Colors.CadetBlue);
            borderButton.BorderThickness = new System.Windows.Thickness(1);
            borderButton.HorizontalAlignment = System.Windows.HorizontalAlignment.Right;
            borderButton.Height = 30;
            borderButton.Width = 60;
            borderButton.Child = bttInviteFriend;

        }


    }
}
