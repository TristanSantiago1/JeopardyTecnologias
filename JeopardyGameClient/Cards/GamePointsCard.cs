using JeopardyGame.Pages;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace JeopardyGame.Helpers
{
    public class GamePointsCard : Border
    {
        private Label lblPoints;
        private QuestionCardInformation questionCardInformation;
        private GameBoard board;
       
        public GamePointsCard(QuestionCardInformation questionCard,  GameBoard currentBoard) 
        {
            board = currentBoard;
            questionCardInformation = questionCard;
            SetStyle();
            SetLabelStyle(questionCard.SpecificQuestionDetails.ValueWorth.ToString());
            this.MouseDown += ClickOnCard;
            this.Child = lblPoints;
            this.Name = "_"+questionCard.SpecificQuestionDetails.IdQuestion.ToString();
        }

        private void SetStyle()
        {
            this.Style = (Style) FindResource("BorderCardGameStyle");
            this.Margin = new Thickness(20, 10, 20, 10);
        }

        private void SetLabelStyle(string pointsValue)
        {
            lblPoints = new Label();
            
            lblPoints.Style = (Style) FindResource("LabelPointsStyle");
            lblPoints.Content = pointsValue;
        }
       
        private void ClickOnCard(object sender, MouseButtonEventArgs args)
        {
            board.SelectQuestion(questionCardInformation);
        }
        public QuestionCardInformation GetQuestionCardInformation()
        {
            return questionCardInformation;
        }
    }
}
