using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows.Media;

namespace JeopardyGame.Cards
{
    public  class GameTeamCard : Border
    {
        private PlayerInGameDataContract playerOfCardNumberOne;
        private PlayerInGameDataContract playerOfCardNumberTwo;
        private TextBlock userNamePlayer1;
        private TextBlock userNamePlayer2;
        private TextBlock points;
        private Image avatarPlayer1;
        private Image avatarPlayer2;
        private SolidColorBrush color;
        private Grid grid;

        public GameTeamCard(PlayerInGameDataContract playerNumber1, PlayerInGameDataContract playerNumber2 )
        {
            playerOfCardNumberOne = playerNumber1;
            playerOfCardNumberTwo = playerNumber2;
            this.Name = "_" + playerNumber1.IdUser.ToString()+playerOfCardNumberTwo.IdUser.ToString();
            InitializeComponents();
            SetStyles();
            grid.Children.Add(userNamePlayer1);
            grid.Children.Add(points);
            grid.Children.Add(avatarPlayer1);
            grid.Children.Add(userNamePlayer2);
            grid.Children.Add(avatarPlayer2);
            this.Child = grid;
        }

        private void SetStyles()
        {
            SetBorderStyle();
            SetStyleGrid();
            SetStyleUserName();
            SetStylePoints();
            SetAvatarImage();
        }

        private void InitializeComponents()
        {
            grid = new Grid();
            userNamePlayer1 = new TextBlock();
            userNamePlayer2 = new TextBlock();
            points = new TextBlock();
            avatarPlayer1 = new Image();
            avatarPlayer2 = new Image();
            switch (playerOfCardNumberOne.SideTeam)
            {
                case 1:
                    color = new SolidColorBrush(Colors.CadetBlue);
                    break;
                case 2:
                    color = new SolidColorBrush(Colors.IndianRed);
                    break;
            }
        }

        private void SetBorderStyle()
        {
            this.Margin = new System.Windows.Thickness(10, 10, 10, 0);
            this.Height = 90;
            this.Width = 450;
            this.BorderBrush = new SolidColorBrush(Colors.CadetBlue);
            this.Background = color;
            this.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
        }

        private void SetStyleGrid()
        {
            grid.Margin = new System.Windows.Thickness(0);
            grid.Height = 90;
            grid.Width = 450;
        }

        private void SetStyleUserName()
        {
            userNamePlayer1.Margin = new System.Windows.Thickness(70, 0, 225, 45);
            userNamePlayer1.Height = 45;
            userNamePlayer1.Width = 155;
            userNamePlayer1.TextAlignment = System.Windows.TextAlignment.Center;
            userNamePlayer1.FontSize = 20;
            userNamePlayer1.Foreground = new SolidColorBrush(Colors.Black);
            userNamePlayer1.Text = playerOfCardNumberOne.UserName;

            userNamePlayer2.Margin = new System.Windows.Thickness(225, 0, 70, 45);
            userNamePlayer2.Height = 45;
            userNamePlayer2.Width = 155;
            userNamePlayer2.TextAlignment = System.Windows.TextAlignment.Center;
            userNamePlayer2.FontSize = 20;
            userNamePlayer2.Foreground = new SolidColorBrush(Colors.Black);
            userNamePlayer2.Text = playerOfCardNumberTwo.UserName;
        }

        private void SetStylePoints()
        {
            points.Margin = new System.Windows.Thickness(70, 45, 70, 0);
            points.Height = 45;
            points.Width = 310;
            points.TextAlignment = System.Windows.TextAlignment.Center;
            points.FontSize = 20;
            points.Foreground = new SolidColorBrush(Colors.White);
            points.Background = new SolidColorBrush(Colors.Black);
            points.Opacity = 0.7;
            points.Text = playerOfCardNumberOne.CurrentPointsOfRound.ToString();
        }

        private void SetAvatarImage()
        {
            avatarPlayer1.Source = new BitmapImage(new Uri(GetHostImage.GetAvatarImage(playerOfCardNumberOne.IdAvatar), UriKind.Absolute));            
            avatarPlayer1.Height = double.NaN;
            avatarPlayer1.Width = 70;
            avatarPlayer1.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
            avatarPlayer2.Source = new BitmapImage(new Uri(GetHostImage.GetAvatarImage(playerOfCardNumberTwo.IdAvatar), UriKind.Absolute));            
            avatarPlayer2.Height = double.NaN;
            avatarPlayer2.Width = 70;
            avatarPlayer2.HorizontalAlignment = System.Windows.HorizontalAlignment.Right;
        }

        public void UpdatePoints(int nePoints)
        {
            points.Text = nePoints.ToString();
        }

        public void MakeBorderSpecial()
        {
            this.BorderThickness = new System.Windows.Thickness(3);
        }

        public void MakeBoredNormal()
        {
            this.BorderThickness = new System.Windows.Thickness(0);
        }

        public int GetPoints()
        {
            return int.Parse(points.Text);
        }


    }
}
