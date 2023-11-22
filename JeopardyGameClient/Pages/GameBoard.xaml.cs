using JeopardyGame.DialogWindows;
using JeopardyGame.ServidorServiciosJeopardy;
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
        public const int FIRSTVALUE = 100;
        public const int SECONDVALUE = 300;
        public const int THIRDVALUE = 500;
        public const int HISTORYCATEGORY = 1;
        public const int SCIENCECATEGORY = 2;
        public const int MOVIESCATEGORY = 3;
        private IDictionary<string, object> history100Question;
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
        private void ClickRectangulo(object sender, MouseButtonEventArgs e)
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

        private void ClickHistory100(object sender, MouseButtonEventArgs e)
        {
            QuestionsManagerClient proxyQuestions = new QuestionsManagerClient();
            history100Question = proxyQuestions.GetQuestionByValue(FIRSTVALUE, HISTORYCATEGORY);
            MostrarPreguntaEnInterfaz();
        }

        private void ClickHistory300(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickHistory500(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickScience100(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickScience300(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickScience500(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickMovies100(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickMovies300(object sender, MouseButtonEventArgs e)
        {

        }

        private void ClickMovies500(object sender, MouseButtonEventArgs e)
        {

        }
        private void MostrarPreguntaEnInterfaz()
        {
            if (history100Question != null && history100Question.ContainsKey("Description"))
            {
                string questionDescription = history100Question["Description"].ToString();
                lblQuestion.Content = questionDescription;
            }
            else
            {
                
            }
        }
    }
}
