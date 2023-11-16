using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para GameBoard.xaml
    /// </summary>
    public partial class GameBoard : Page
    {
        public GameBoard()
        {
            InitializeComponent();
            ShowGameBoard();
            ShowAnswers();
        }

        private void ShowGameBoard()
        {
            boardGrid.Visibility = Visibility.Visible;
        }

        private void ShowAnswers()
        {
            answerGrid.Visibility = Visibility.Collapsed;
            bttChat.Visibility = Visibility.Collapsed;
        }
        private void Rectangulo_Click(object sender, MouseButtonEventArgs e)
        {
            boardGrid.Visibility = Visibility.Collapsed;
            answerGrid.Visibility = Visibility.Visible;
            bttChat.Visibility = Visibility.Visible;

        }

        private void CLicSelectAnswer(object sender, RoutedEventArgs e)
        {

        }

        private void CLicOpenChat(object sender, RoutedEventArgs e)
        {

        }
    }
}
