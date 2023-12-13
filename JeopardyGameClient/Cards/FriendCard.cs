using System;
using System.Windows.Controls;
using System.Windows.Media;
using Label = System.Windows.Controls.Label;
using Button = System.Windows.Controls.Button;
using System.Windows;

namespace JeopardyGame.Helpers
{
    public partial class FriendCard : StackPanel
    {
        StackPanel stoNameAndStatus;
        Label lblFriendName;
        Border brdButton;
        System.Windows.Shapes.Ellipse ellConnectionStatus;
        Button bttInviteFriend;
        public event EventHandler InviteButtonClicked;
        public FriendCard(String userName, bool state, String textInvite) 
        {
            SetCardStyle();
            InitializeComponents();
            SetLabelStyle(userName);
            SetEllipseStyle(state);
            SetButtonStyle(textInvite);
            SetStackPanelStyle();         
            this.Children.Add(stoNameAndStatus);
            this.Children.Add(brdButton);
            bttInviteFriend.Click += ClickInviteFriend;
        }

        private void SetCardStyle()
        {
            this.Margin = new System.Windows.Thickness(1, 2, 1, 2);
            this.Width = 419;
            this.MaxWidth = 420;
            this.Orientation = System.Windows.Controls.Orientation.Horizontal;
            this.Background = new SolidColorBrush(Colors.Transparent);
        }

        private void InitializeComponents()
        {
            lblFriendName = new Label();
            ellConnectionStatus = new System.Windows.Shapes.Ellipse();
            bttInviteFriend = new Button();
            stoNameAndStatus = new StackPanel();
            brdButton = new Border();
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
            ellConnectionStatus.Height = 20;
            ellConnectionStatus.Width = 20;
            ellConnectionStatus.Margin = new System.Windows.Thickness(0, 5, 10, 5);  

            if (state)
            {
               ellConnectionStatus.Fill = new SolidColorBrush(Colors.Green);
            }
            else
            {
                 ellConnectionStatus.Fill = new SolidColorBrush(Colors.Gray);
            }
        }

        private void SetStackPanelStyle()
        {
            stoNameAndStatus.Children.Add(lblFriendName);
            stoNameAndStatus.Children.Add(ellConnectionStatus);
            stoNameAndStatus.Orientation = System.Windows.Controls.Orientation.Horizontal;
            stoNameAndStatus.Width = 300;
            stoNameAndStatus.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
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
            brdButton.CornerRadius = new System.Windows.CornerRadius(15);
            brdButton.BorderBrush = new SolidColorBrush(Colors.Blue);
            brdButton.Background = new SolidColorBrush(Colors.CadetBlue);
            brdButton.BorderThickness = new System.Windows.Thickness(1);
            brdButton.HorizontalAlignment = System.Windows.HorizontalAlignment.Right;
            brdButton.Height = 30;
            brdButton.Width = 60;
            brdButton.Child = bttInviteFriend;

        }
        private void ClickInviteFriend(object sender, RoutedEventArgs e)
        {
            InviteButtonClicked?.Invoke(this, EventArgs.Empty);
        }

    }
}
