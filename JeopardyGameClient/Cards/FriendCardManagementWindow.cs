using JeopardyGame.Pages;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace JeopardyGame.Helpers
{
    public  class FriendCardManagementWindow : StackPanel
    {
        private readonly int idUser;
        private StackPanel stcName;
        private StackPanel stcButtons;
        private Label lblUserName;
        private Border brdLeftButton;
        private Border brdRightButton;
        private System.Windows.Shapes.Ellipse ellPointMark;
        private Button bttLeftFunction;
        private Button bttRightFunction;
        private readonly FriendManager friendManager;

        public FriendCardManagementWindow(int idUser, String userName, int state, String textLeftButton, String textRigthButton, FriendManager windowInstance)
        {
            SetCardStyle();
            this.idUser = idUser;
            friendManager = windowInstance;
            InitializeComponents();
            SetLabelStyle(userName);
            SetEllipseStyle();
            SetLefButtonStyle(textLeftButton, state);
            SetRigthButtonStyle(textRigthButton, state);
            SetStackPanelStyle();
            SetStackPanelButtonsStyle();
            this.Children.Add(stcName);
            this.Children.Add(stcButtons);
        }

        private void SetCardStyle()
        {
            this.Margin = new Thickness(0);
            this.Width = 1030;
            this.MaxWidth = 1130;
            this.Orientation = Orientation.Horizontal;
            this.HorizontalAlignment = HorizontalAlignment.Left;
            this.VerticalAlignment = VerticalAlignment.Center;
        }

        private void InitializeComponents()
        {        
            stcName = new StackPanel();
            stcButtons = new StackPanel();
            lblUserName = new Label();
            brdLeftButton = new Border();
            brdRightButton = new Border();
            ellPointMark = new System.Windows.Shapes.Ellipse();
            bttLeftFunction = new Button();
            bttRightFunction = new Button();
        }

        private void SetLabelStyle(string userName)
        {
            lblUserName.Height = Double.NaN;
            lblUserName.Width = Double.NaN;
            lblUserName.Margin = new Thickness(0, 0, 0, 0);
            lblUserName.FontSize = 40;
            lblUserName.FontWeight = FontWeights.Bold;
            lblUserName.Foreground = new SolidColorBrush(Colors.Black);
            lblUserName.HorizontalContentAlignment = HorizontalAlignment.Left;
            lblUserName.VerticalAlignment = VerticalAlignment.Top;
            lblUserName.Content = userName;
        }

        private void SetEllipseStyle()
        {
            ellPointMark.Height = 20;
            ellPointMark.Width = 20;
            ellPointMark.Margin = new Thickness(0, 0, 10, 0);         
            ellPointMark.Fill = new SolidColorBrush(Colors.Black);          
        }

        private void SetStackPanelStyle()
        {
            stcName.Children.Add(ellPointMark);
            stcName.Children.Add(lblUserName);            
            stcName.Orientation = Orientation.Horizontal;
            stcName.Width = 480;        
            stcName.Margin = new Thickness(10,0,10,0);
            stcName.HorizontalAlignment = HorizontalAlignment.Left;  
            stcName.VerticalAlignment = VerticalAlignment.Center;
        }

        private void SetLefButtonStyle(string textLefB, int typeOfButton)
        {
            bttLeftFunction.Height = 40;
            bttLeftFunction.Width = Double.NaN;
            bttLeftFunction.Padding = new Thickness(10,0,10,0);
            bttLeftFunction.Margin = new Thickness(0);
            bttLeftFunction.HorizontalAlignment = HorizontalAlignment.Center;
            bttLeftFunction.FontSize = 25;
            bttLeftFunction.Foreground = new SolidColorBrush(Colors.White);
            bttLeftFunction.Background = new SolidColorBrush(Colors.Transparent);
            bttLeftFunction.BorderBrush = new SolidColorBrush(Colors.Transparent);
            bttLeftFunction.Content = textLefB;

            SolidColorBrush backGroundColor;
            switch (typeOfButton)
            {
                case 1:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#F4A100"));
                    bttLeftFunction.Click += ClickReportUser;
                    break;
                case 2:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    bttLeftFunction.Click += ClickAcceptRequest;
                    break;
                case 3:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    bttLeftFunction.Click += ClickSendRequest;
                    break;
                default:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    break;
            }     

            brdLeftButton.CornerRadius = new CornerRadius(15);           
            brdLeftButton.Background = backGroundColor;            
            brdLeftButton.BorderBrush = new SolidColorBrush(Colors.White);
            brdLeftButton.BorderThickness = new Thickness(2);
            brdLeftButton.HorizontalAlignment = HorizontalAlignment.Left;
            brdLeftButton.VerticalAlignment = VerticalAlignment.Center;
            brdLeftButton.Height = 40;
            brdLeftButton.Width = Double.NaN;
            brdLeftButton.Margin = new Thickness(50,0,0,0);
            brdLeftButton.Child = bttLeftFunction;
        }

  

        private void SetRigthButtonStyle(string textRigthB, int typeOfButton)
        {
            bttRightFunction.Height = 40;
            bttRightFunction.Width = Double.NaN;
            bttRightFunction.Margin = new Thickness(0);
            bttRightFunction.Padding = new Thickness(10,0,10,0);
            bttRightFunction.HorizontalAlignment = HorizontalAlignment.Center;
            bttRightFunction.FontSize = 25;
            bttRightFunction.Foreground = new SolidColorBrush(Colors.White);
            bttRightFunction.Background = new SolidColorBrush(Colors.Transparent);
            bttRightFunction.BorderBrush = new SolidColorBrush(Colors.Transparent);
            bttRightFunction.Content = textRigthB;

            SolidColorBrush backGroundColor;
            switch (typeOfButton)
            {
                case 1:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#EF8989"));
                    bttRightFunction.Click += ClickEliminateFriend;
                    break;
                case 2:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#EF8989"));
                    bttRightFunction.Click += ClickDeclineRequest;
                    break;
                case 3:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#F4A100"));
                    bttRightFunction.Click += ClickReportUser;
                    break;
                default:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#F4A100"));
                    break;
            }

            brdRightButton.CornerRadius = new CornerRadius(15);
            brdRightButton.Background = backGroundColor;
            brdRightButton.BorderBrush = new SolidColorBrush(Colors.White);
            brdRightButton.BorderThickness = new Thickness(2);
            brdRightButton.BorderThickness = new Thickness(1);
            brdRightButton.Margin = new Thickness(50,0,0,0);
            brdRightButton.HorizontalAlignment = HorizontalAlignment.Right;
            brdRightButton.VerticalAlignment = VerticalAlignment.Center;
            brdRightButton.Height = 40;
            brdRightButton.Width = Double.NaN;
            brdRightButton.Child = bttRightFunction;
        }
        private void SetStackPanelButtonsStyle()
        {
            stcButtons.Children.Add(brdLeftButton);
            stcButtons.Children.Add(brdRightButton);
            stcButtons.Orientation = Orientation.Horizontal;
            stcButtons.Margin = new Thickness(10,0,0,0);           
            stcButtons.MaxWidth = 560;           
            stcButtons.HorizontalAlignment = HorizontalAlignment.Right;   
            stcButtons.VerticalAlignment =  VerticalAlignment.Center;
        }
        private void ClickReportUser(object sender, RoutedEventArgs e)
        {
            friendManager.ReportUser(idUser);

        }

        private void ClickEliminateFriend(object sender, RoutedEventArgs e)
        {
            friendManager.EliminateFriend(idUser);
        }

        private void ClickAcceptRequest(object sender, RoutedEventArgs e)
        {
            friendManager.AcceptFriendRequest(idUser, lblUserName.Content.ToString());
        }

        private void ClickDeclineRequest(object sender, RoutedEventArgs e)
        {
            friendManager.DeclineFriendRequest(idUser, lblUserName.Content.ToString());
        }

        private void ClickSendRequest(object sender, RoutedEventArgs e)
        {
            friendManager.SentFriendRequest(idUser);
        }
    }
}
