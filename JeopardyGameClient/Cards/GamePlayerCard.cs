using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Image = System.Windows.Controls.Image;

namespace JeopardyGame.Helpers
{
    public class GamePlayerCard : Border
    {
        private PlayerInGameDataContract playerOfCard;
        private TextBlock userName;
        private TextBlock points;
        private Image avatar;
        private SolidColorBrush color;
        private Grid grid;

        public GamePlayerCard(PlayerInGameDataContract player)
        {
            playerOfCard = player;
            this.Name = "_"+player.IdUser.ToString();
            InitializeComponents();
            SetBorderStyle();
            SetStyleGrid();
            SetStyleUserName();
            SetStylePoints();
            SetAvatarImage();            
            grid.Children.Add(userName);
            grid.Children.Add(points);
            grid.Children.Add(avatar);
            this.Child = grid;
        }

        private void InitializeComponents()
        {
            grid = new Grid();
            userName = new TextBlock();
            points = new TextBlock();
            avatar = new Image();
           switch (playerOfCard.TurnOfPlayer)
           {
                case 1:
                    color = new SolidColorBrush(Colors.Yellow); 
                    break;
                case 2:
                    color = new SolidColorBrush(Colors.Green);
                    break;
                case 3:
                    color = new SolidColorBrush(Colors.Blue);
                    break;
                case 4:
                    color = new SolidColorBrush(Colors.Red);
                    break;
            }
        }

        private void SetBorderStyle()
        {
            this.Margin = new System.Windows.Thickness(10, 10, 10, 0);
            this.Height = 60;
            this.Width = 262;
            this.BorderBrush = new SolidColorBrush(Colors.CadetBlue);
            this.Background = color;
        }

        private void SetStyleGrid()
        {
            grid.Margin = new System.Windows.Thickness(0);
            grid.Height = 60;
            grid.Width = 262;
        }

        private void SetStyleUserName()
        {
            userName.Margin = new System.Windows.Thickness(0,0,75,30);
            userName.Height = 30;
            userName.Width = 189;
            userName.TextAlignment = System.Windows.TextAlignment.Center;
            userName.FontSize = 20;
            userName.Foreground = new SolidColorBrush(Colors.Black);            
            userName.Text = playerOfCard.UserName;
        }

        private void SetStylePoints()
        {
            points.Margin = new System.Windows.Thickness(0, 30, 75, 0);
            points.Height = 30;
            points.Width = 189;
            points.TextAlignment = System.Windows.TextAlignment.Center;
            points.FontSize = 20;
            points.Foreground = new SolidColorBrush(Colors.White);
            points.Background = new SolidColorBrush(Colors.Black);
            points.Opacity = 0.7;
            points.Text = playerOfCard.CurrentPointsOfRound.ToString();
        }

        private void SetAvatarImage()
        {
            avatar.Source = new BitmapImage(new Uri(GetHostImage.GetAvatrImage(playerOfCard.IdAvatar), UriKind.Relative));
            avatar.Margin = new System.Windows.Thickness(190,2,2,2);
        }

        public  void UpdatePoints(int nePoints)
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
