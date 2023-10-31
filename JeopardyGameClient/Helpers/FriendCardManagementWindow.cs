using JeopardyGame.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace JeopardyGame.Helpers
{
    public  class FriendCardManagementWindow : StackPanel
    {
        int idUser;
        StackPanel stcName;
        StackPanel stcButtons;
        Label lblUserName;
        Border brdLeftButton;
        Border brdRigthButton;
        System.Windows.Shapes.Ellipse ellPointMark;
        Button bttLeftFunction;
        Button bttRightFunction;
        FriendManager friendManager;

        public FriendCardManagementWindow(int idUser,String userName, int state, String textLeftButton, String textRigthButton, FriendManager windowInstance)
        {
            this.Margin = new System.Windows.Thickness(0);
            this.Width = 1030;
            this.MaxWidth = 1130;         
            this.Orientation = System.Windows.Controls.Orientation.Horizontal;          
            this.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
            this.VerticalAlignment = System.Windows.VerticalAlignment.Center;

            this.idUser = idUser;
            friendManager = windowInstance;
            stcName = new StackPanel();
            stcButtons = new StackPanel();
            lblUserName = new Label();
            brdLeftButton = new Border();
            brdRigthButton = new Border();  
            ellPointMark = new System.Windows.Shapes.Ellipse();
            bttLeftFunction = new Button();
            bttRightFunction = new Button();
           
            

            SetLabelStyle(userName);
            SetEllipseStyle();
            SetLefButtonStyle(textLeftButton, state);
            SetRigthButtonStyle(textRigthButton, state);
            SetStackPanelStyle();
            SetStackPanelButtonsStyle();

            this.Children.Add(stcName);
            this.Children.Add(stcButtons);

        }

        private void SetLabelStyle(string userName)
        {
            lblUserName.Height = Double.NaN;
            lblUserName.Width = Double.NaN;
            lblUserName.Margin = new System.Windows.Thickness(0, 0, 0, 0);
            lblUserName.FontSize = 40;
            lblUserName.FontWeight = FontWeights.Bold;
            lblUserName.Foreground = new SolidColorBrush(Colors.Black);
            lblUserName.HorizontalContentAlignment = System.Windows.HorizontalAlignment.Left;
            lblUserName.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            lblUserName.Content = userName;
        }

        private void SetEllipseStyle()
        {
            ellPointMark.Height = 20;
            ellPointMark.Width = 20;
            ellPointMark.Margin = new System.Windows.Thickness(0, 0, 10, 0);         
            ellPointMark.Fill = new SolidColorBrush(Colors.Black);          
        }

        private void SetStackPanelStyle()
        {
            stcName.Children.Add(ellPointMark);
            stcName.Children.Add(lblUserName);            
            stcName.Orientation = Orientation.Horizontal;
            stcName.Width = 480;        
            stcName.Margin = new System.Windows.Thickness(10,0,10,0);
            stcName.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;  
            stcName.VerticalAlignment = System.Windows.VerticalAlignment.Center;
        }

        private void SetLefButtonStyle(string textLefB, int typeOfButton)
        {
            bttLeftFunction.Height = 40;
            bttLeftFunction.Width = Double.NaN;
            bttLeftFunction.Padding = new Thickness(10,0,10,0);
            bttLeftFunction.Margin = new System.Windows.Thickness(0);
            bttLeftFunction.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
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
                    bttLeftFunction.Click += ClicReportUser;
                    break;
                case 2:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    bttLeftFunction.Click += ClicAcceptRequest;
                    break;
                case 3:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    bttLeftFunction.Click += ClicSendRequest;
                    break;
                default:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#00E6F4"));
                    break;
            }     

            brdLeftButton.CornerRadius = new System.Windows.CornerRadius(15);           
            brdLeftButton.Background = backGroundColor;            
            brdLeftButton.BorderBrush = new SolidColorBrush(Colors.White);
            brdLeftButton.BorderThickness = new Thickness(2);
            brdLeftButton.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
            brdLeftButton.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            brdLeftButton.Height = 40;
            brdLeftButton.Width = Double.NaN;
            brdLeftButton.Margin = new System.Windows.Thickness(50,0,0,0);
            brdLeftButton.Child = bttLeftFunction;
        }

  

        private void SetRigthButtonStyle(string textRigthB, int typeOfButton)
        {
            bttRightFunction.Height = 40;
            bttRightFunction.Width = Double.NaN;
            bttRightFunction.Margin = new System.Windows.Thickness(0);
            bttRightFunction.Padding = new Thickness(10,0,10,0);
            bttRightFunction.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
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
                    bttRightFunction.Click += ClicEliminateFriend;
                    break;
                case 2:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#EF8989"));
                    bttRightFunction.Click += ClicDeclineRequest;
                    break;
                case 3:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#F4A100"));
                    bttRightFunction.Click += ClicReportUser;
                    break;
                default:
                    backGroundColor = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#F4A100"));
                    break;
            }

            brdRigthButton.CornerRadius = new System.Windows.CornerRadius(15);
            brdRigthButton.Background = backGroundColor;
            brdRigthButton.BorderBrush = new SolidColorBrush(Colors.White);
            brdRigthButton.BorderThickness = new Thickness(2);
            brdRigthButton.BorderThickness = new System.Windows.Thickness(1);
            brdRigthButton.Margin = new System.Windows.Thickness(50,0,0,0);
            brdRigthButton.HorizontalAlignment = System.Windows.HorizontalAlignment.Right;
            brdRigthButton.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            brdRigthButton.Height = 40;
            brdRigthButton.Width = Double.NaN;
            brdRigthButton.Child = bttRightFunction;
        }
        private void SetStackPanelButtonsStyle()
        {
            stcButtons.Children.Add(brdLeftButton);
            stcButtons.Children.Add(brdRigthButton);
            stcButtons.Orientation = System.Windows.Controls.Orientation.Horizontal;
            stcButtons.Margin = new System.Windows.Thickness(10,0,0,0);           
            stcButtons.MaxWidth = 560;           
            stcButtons.HorizontalAlignment = System.Windows.HorizontalAlignment.Right;   
            stcButtons.VerticalAlignment = System.Windows.VerticalAlignment.Center;
        }
        private void ClicReportUser(object sender, RoutedEventArgs e)
        {
            friendManager.ReportUser(idUser, lblUserName.Content.ToString());
        }

        private void ClicEliminateFriend(object sender, RoutedEventArgs e)
        {
            friendManager.EliminateFriend(idUser);
        }

        private void ClicAcceptRequest(object sender, RoutedEventArgs e)
        {
            friendManager.AcceptFriendRequest(idUser, lblUserName.Content.ToString());
        }

        private void ClicDeclineRequest(object sender, RoutedEventArgs e)
        {
            friendManager.DeclineFriendRequest(idUser, lblUserName.Content.ToString());
        }

        private void ClicSendRequest(object sender, RoutedEventArgs e)
        {
            friendManager.SentFriendRequest(idUser, lblUserName.Content.ToString());
        }
    }
}
