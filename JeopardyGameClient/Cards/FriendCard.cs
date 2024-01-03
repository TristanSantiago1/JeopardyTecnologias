using System;
using System.Windows.Controls;
using System.Windows.Media;
using Label = System.Windows.Controls.Label;
using Button = System.Windows.Controls.Button;
using System.Windows;
using System.Windows.Shapes;

namespace JeopardyGame.Helpers
{
    public partial class FriendCard : StackPanel
    {
        private StackPanel stpNameAndStatus;
        private Label lblFriendName;
        private Border brdButton;
        private Ellipse ellConnectionStatus;
        private Button bttInviteFriend;
        public event EventHandler InviteButtonClicked;
        private readonly int AVAILABLE_STATUS = 1;
        private readonly int UNAVAILABLE_STATUS = 0;
        private readonly int PLAYING_STATUS = 2;

        public FriendCard(String userName, int state, String textInvite) 
        {
            SetCardStyle();
            InitializeComponents();
            SetLabelStyle(userName);
            SetEllipseStyle(state);
            SetButtonStyle(textInvite);
            SetStackPanelStyle();         
            this.Children.Add(stpNameAndStatus);
            this.Children.Add(brdButton);
            bttInviteFriend.Click += ClickInviteFriend;
        }

        private void SetCardStyle()
        {
            this.Margin = new Thickness(1, 2, 1, 2);
            this.Width = 419;
            this.MaxWidth = 420;
            this.Orientation = System.Windows.Controls.Orientation.Horizontal;
            this.Background = new SolidColorBrush(Colors.Transparent);
        }

        private void InitializeComponents()
        {
            lblFriendName = new Label();
            ellConnectionStatus = new Ellipse();
            bttInviteFriend = new Button();
            stpNameAndStatus = new StackPanel();
            brdButton = new Border();
        }


        private void SetLabelStyle(string userName)
        {
            lblFriendName.Height = 50;
            lblFriendName.Width = Double.NaN;  
            lblFriendName.Margin = new Thickness(5, 5, 0, 5);  
            lblFriendName.FontSize = 25;
            lblFriendName.Foreground = new SolidColorBrush(Colors.White);
            lblFriendName.HorizontalContentAlignment = System.Windows.HorizontalAlignment.Left;
            lblFriendName.Content = userName;
        }

        private void SetEllipseStyle(int state)
        {
            ellConnectionStatus.Height = 20;
            ellConnectionStatus.Width = 20;
            ellConnectionStatus.Margin = new Thickness(0, 5, 10, 5);  
            if (state == AVAILABLE_STATUS)
            {
               ellConnectionStatus.Fill = new SolidColorBrush(Colors.Green);
            }
            else if(state == UNAVAILABLE_STATUS)
            {
                 ellConnectionStatus.Fill = new SolidColorBrush(Colors.Gray);
            }else if(state == PLAYING_STATUS)
            {
                ellConnectionStatus.Fill = new SolidColorBrush(Colors.Blue);
            }
            else
            {
                ellConnectionStatus.Fill = new SolidColorBrush(Colors.Yellow);
            }
        }

        private void SetStackPanelStyle()
        {
            stpNameAndStatus.Children.Add(lblFriendName);
            stpNameAndStatus.Children.Add(ellConnectionStatus);
            stpNameAndStatus.Orientation = Orientation.Horizontal;
            stpNameAndStatus.Width = 300;
            stpNameAndStatus.HorizontalAlignment = HorizontalAlignment.Left;
        }

        private void SetButtonStyle(string textInvite)
        {   
            bttInviteFriend.Height = 30;
            bttInviteFriend.Width = 60;
            bttInviteFriend.Margin = new Thickness(0);
            bttInviteFriend.HorizontalAlignment = HorizontalAlignment.Center;
            bttInviteFriend.FontSize = 15;
            bttInviteFriend.Foreground = new SolidColorBrush(Colors.White);
            bttInviteFriend.Background = new SolidColorBrush(Colors.Transparent);
            bttInviteFriend.BorderBrush = new SolidColorBrush(Colors.Transparent);
            bttInviteFriend.Content = textInvite;
            brdButton.CornerRadius = new CornerRadius(15);
            brdButton.BorderBrush = new SolidColorBrush(Colors.Blue);
            brdButton.Background = new SolidColorBrush(Colors.CadetBlue);
            brdButton.BorderThickness = new Thickness(1);
            brdButton.HorizontalAlignment = HorizontalAlignment.Right;
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
