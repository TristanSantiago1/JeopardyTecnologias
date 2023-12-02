using JeopardyGame.Cards;
using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Converters;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para GameBoard.xaml
    /// </summary>
    public partial class GameBoard : Page, IGameActionsCallback
    {
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private bool itsTeamGame;
        private int roomCode;
        private int pointsBet;
        private int idLeader;
        private List<QuestionCardInformation> currentQuestions;
        private List<QuestionCardInformation> questionsRoundOne;
        private List<QuestionCardInformation> questionsRoundTwo;
        private QuestionCardInformation finalQuestion;
        private List<CategoryPOJO> categoriesOfGameRound1 = new List<CategoryPOJO>();
        private List<CategoryPOJO> categoriesOfGameRound2 = new List<CategoryPOJO>();
        private List<PlayerInGameDataContract> playersInGame;        
        private int yourTurn;
        private int currentTurn;
        private int currentRound;
        private QuestionPOJO questionBeingAsked;
        private AnswerPOJO answerToCurrentQuestion;
        private List<AnswerPOJO> answersOfQuestionBeingAsked;     
        private DispatcherTimer timer = new DispatcherTimer();
        private GameActionsClient gameActionsClient;
        private InstanceContext context;
        private UserSingleton userSingleton = UserSingleton.GetMainUser();


        public GameBoard(List<QuestionCardInformation> questions, int roomCode, int idLeader)
        {
            InitializeComponent();
            currentQuestions = questions; 
            this.roomCode = roomCode;       
            this.idLeader = idLeader;
            Loaded += SubscribeCallBackChannel;
            //timer.Interval = TimeSpan.FromSeconds(5);
            //timer.Tick += Timer_Tick;
            //timer.Start();            
        }
        

        private void SubscribeCallBackChannel(object sender, RoutedEventArgs e)
        {
            context = new InstanceContext(this);
            gameActionsClient = new GameActionsClient(context);
            gameActionsClient.SubscribeToGameCallBack(roomCode, userSingleton.IdUser, userSingleton.IdCurrentAvatar); 
        }

        public void ReceiveNotificationEverybodyIsPlaying(bool isEveryBodyPlaying, int isYourTurn, PlayerInGameDataContract[] playerInGame)
        {
            currentTurn = 1;
            yourTurn = isYourTurn;
            playersInGame = playerInGame.ToList();
            PrepareWindow();
            ShowIfItsYourTurn();
        }

        private void PrepareWindow()
        {                       
            VerifyThereAreTeams();
            PrepareListOfQuestionsAndCategories();            
            CreatePlayersScoresBoards();
            if (IsLoaded)
            {
                BeginHostPresentation();
            }
            PrepareRoundOne();
        }

        private void VerifyThereAreTeams()
        {
            if (playersInGame.Any(pla => pla.SideTeam == 2))
            {
                itsTeamGame = true;
            }
            else
            {
                itsTeamGame = false;
            }
        }

        private void PrepareListOfQuestionsAndCategories()
        {
            questionsRoundOne = currentQuestions.Where((currentQuestion) => currentQuestion.NumberOfRound == ROUND_ONE).ToList();
            questionsRoundTwo = currentQuestions.Where((currentQuestion) => currentQuestion.NumberOfRound == ROUND_TWO).ToList();
            finalQuestion = currentQuestions.Find((currentQuestion) => currentQuestion.NumberOfRound == ROUND_THREE);
            var categoriesRound1 = currentQuestions.Where(currentQuestion => currentQuestion.NumberOfRound == ROUND_ONE).Select(currentQuestion => currentQuestion.CategoryOfQuestion).ToList();
            GetUniqueCategories(categoriesRound1, categoriesOfGameRound1);
            var categoriesRound2 = currentQuestions.Where(currentQuestion => currentQuestion.NumberOfRound == ROUND_TWO).Select(currentQuestion => currentQuestion.CategoryOfQuestion).ToList();
            GetUniqueCategories(categoriesRound2, categoriesOfGameRound2);
        }

        private void GetUniqueCategories(List<CategoryPOJO> categoriesRepeatedList, List<CategoryPOJO> uniqueCategoryList)
        {
            foreach (var categoryToProve in categoriesRepeatedList)
            {
                bool exist = false;
                foreach (var CategorySaved in uniqueCategoryList)
                {

                    if (categoryToProve.IdCategory == CategorySaved.IdCategory)
                    {
                        exist = true;
                        break;
                    }
                }
                if (!exist)
                {
                    uniqueCategoryList.Add(categoryToProve);
                }
            }
        }

        private void CreatePlayersScoresBoards()
        {
            stpPlayers.Children.Clear();
            if (itsTeamGame)
            {
                var team1 = playersInGame.Where(pla => pla.SideTeam == 1).ToList();
                var team2 = playersInGame.Where(pla => pla.SideTeam == 2).ToList();
                stpPlayers.Children.Add(new GameTeamCard(team1[0], team1[1]));
                stpPlayers.Children.Add(new GameTeamCard(team2[0], team2[1]));
            }
            else
            {
                foreach (var item in playersInGame)
                {
                    GamePlayerCard playerCard = new GamePlayerCard(item);
                    stpPlayers.Children.Add(playerCard);
                }
            }            
        }

       private void PrepareRoundOne()
        {
            SetInformationInCards(categoriesOfGameRound1, questionsRoundOne);
            currentRound = ROUND_ONE;
        }

        private void PrepareRoundTwo()
        {
            wrpBoardOfCards.Children.Clear();
            BeginHostPresentationSecondRound();
            SetInformationInCards(categoriesOfGameRound2, questionsRoundTwo);
        }

        private void PrepareLastRound()
        {
            wrpBoardOfCards.Children.Clear();
            wrpBoardOfCards.Visibility = Visibility.Collapsed; 
            BeginHostPresentationLastRound(); 
        }

        private void SetInformationInCards(List<CategoryPOJO> categoriesOfGame, List<QuestionCardInformation> questionsOfRound)
        {
            foreach (var category in categoriesOfGame)
            {
                GameCategoryCard categoryCard = new(category.EnglishCategoryDescription);
                wrpBoardOfCards.Children.Add(categoryCard);
                var questionsOfCategory = questionsOfRound.Where(quest => quest.SpecificQuestionDetails.IdCategoryBelong == category.IdCategory).ToList();
                foreach (var questionCard in questionsOfCategory)
                {
                    GamePointsCard pointsCard = new(questionCard, this);
                    wrpBoardOfCards.Children.Add(pointsCard);
                }
            }
        }      

        private async void BeginHostPresentation()
        {            
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;
            string hostPath = GetHostImage.GetHosImage(1);
            imgHostImage.Source = new BitmapImage(new Uri(hostPath, UriKind.Relative));
            string hostName = System.IO.Path.GetFileNameWithoutExtension(hostPath);
            txbHostMessage.Text = "Sean Bienvenidos a Jeopardy, yo soy su anfitrion " + hostName + " empecemos con la ronda 1";  
            await Task.Delay(7000);
            txbHostMessage.Text = "Las categorias de la ronda 1 son : " + categoriesOfGameRound1[0].EnglishCategoryDescription +", " +categoriesOfGameRound1[1].EnglishCategoryDescription + " y " + categoriesOfGameRound1[2].EnglishCategoryDescription + ". Empecemos";
            await Task.Delay(7000);
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
        }

        private async void BeginHostPresentationSecondRound()
        {
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;           
            txbHostMessage.Text = "Ahora comencemos el segundo round";
            await Task.Delay(3000);
            txbHostMessage.Text = "Las categorias de la ronda 2 son : " + categoriesOfGameRound2[0].EnglishCategoryDescription + ", " + categoriesOfGameRound2[1].EnglishCategoryDescription + " y " + categoriesOfGameRound2[2].EnglishCategoryDescription + ". Empecemos";
            await Task.Delay(7000);
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
        }

        private async void BeginHostPresentationLastRound()
        {
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;
            txbHostMessage.Text = "Ahora comencemos el es el momento del round final y la pregunta final ";
            await Task.Delay(5000);
            grdBet.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            var currentPointsOfPlayer = (GamePlayerCard)playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
            if(currentPointsOfPlayer.GetPoints() < 0)
            {
                txbPointsToBet.Text = "0";
                txbPointsToBet.IsEnabled = false;
            }
        }

        private void ClickConfirmBet(object sender, RoutedEventArgs e)
        {
            pointsBet = int.Parse(txbPointsToBet.Text);
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            var currentPointsOfPlayer = playersBorders.Find(pl => pl.Name.Equals("_"+userSingleton.IdUser.ToString()));
            if (pointsBet <= ((GamePlayerCard)currentPointsOfPlayer).GetPoints() || pointsBet == 0)
            {
                gameActionsClient.ConfirmBet(roomCode, userSingleton.IdUser);
                txbPointsToBet.IsEnabled = false;
                bttConfirmBet.IsEnabled = false;
            }            
        }

        private void TxbBetPointsTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!int.TryParse(e.Text, out _))
            {
                e.Handled = true;
            }
        }

        public void ResponseShowLastQuestion()
        {
            questionBeingAsked = finalQuestion.SpecificQuestionDetails;
            grdAnswerChoices.Visibility = Visibility.Visible;
            bttChat.Visibility = Visibility.Collapsed;
            grdBet.Visibility = Visibility.Collapsed;
            txbQuestion.Text = questionBeingAsked.EnglishQuestionDescription;
            answersOfQuestionBeingAsked = new List<AnswerPOJO>() { finalQuestion.RightAnswer, finalQuestion.WrongOptionOne, finalQuestion.WrongOptionTwo, finalQuestion.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
            answerToCurrentQuestion = answersOfQuestionBeingAsked.Where(answer => answer.IdAnswer == finalQuestion.SpecificQuestionDetails.IdAnswerOfQuestion).FirstOrDefault();
            bttFirstAnswer.Content = answersOfQuestionBeingAsked[0].EnglishAnswerDescription;
            bttSecondAnswer.Content = answersOfQuestionBeingAsked[1].EnglishAnswerDescription;
            bttThridAnswer.Content = answersOfQuestionBeingAsked[2].EnglishAnswerDescription;
            bttFourAnswer.Content = answersOfQuestionBeingAsked[3].EnglishAnswerDescription;
            CurrentQuestionToShowContract currentQuestionToShow = new CurrentQuestionToShowContract()
            {
                IdQuestion = questionBeingAsked.IdQuestion,
                IdFirstAnswer = answersOfQuestionBeingAsked[0].IdAnswer,
                IdSecondAnswer = answersOfQuestionBeingAsked[1].IdAnswer,
                IdThirdAnswer = answersOfQuestionBeingAsked[2].IdAnswer,
                IdFourthAnswer = answersOfQuestionBeingAsked[3].IdAnswer,
            };
        } 

        public void SelectQuestion(QuestionCardInformation question)
        {
            if (yourTurn == currentTurn)
            {
                questionBeingAsked = question.SpecificQuestionDetails;
                grdAnswerChoices.Visibility = Visibility.Visible;
                bttChat.Visibility = Visibility.Collapsed;
                txbQuestion.Text = questionBeingAsked.EnglishQuestionDescription;
                answersOfQuestionBeingAsked = new List<AnswerPOJO>() { question.RightAnswer, question.WrongOptionOne, question.WrongOptionTwo, question.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
                answerToCurrentQuestion = answersOfQuestionBeingAsked.Where(answer => answer.IdAnswer == question.SpecificQuestionDetails.IdAnswerOfQuestion).FirstOrDefault();
                bttFirstAnswer.Content = answersOfQuestionBeingAsked[0].EnglishAnswerDescription;
                bttSecondAnswer.Content = answersOfQuestionBeingAsked[1].EnglishAnswerDescription;
                bttThridAnswer.Content = answersOfQuestionBeingAsked[2].EnglishAnswerDescription;
                bttFourAnswer.Content = answersOfQuestionBeingAsked[3].EnglishAnswerDescription;
                CurrentQuestionToShowContract currentQuestionToShow = new CurrentQuestionToShowContract()
                {
                    IdQuestion = questionBeingAsked.IdQuestion,
                    IdFirstAnswer = answersOfQuestionBeingAsked[0].IdAnswer,
                    IdSecondAnswer = answersOfQuestionBeingAsked[1].IdAnswer,
                    IdThirdAnswer = answersOfQuestionBeingAsked[2].IdAnswer,
                    IdFourthAnswer = answersOfQuestionBeingAsked[3].IdAnswer,
                };
                gameActionsClient.ChooseQuestion(roomCode,userSingleton.IdUser, question.NumberOfRound, currentQuestionToShow);
            }            
        }

        public void ResponseSomeOneSelectAQuestion(CurrentQuestionToShowContract questionToShow, int currentRound, int idUser)
        {
            this.currentRound = currentRound;
            QuestionCardInformation questionCard = currentQuestions.FirstOrDefault(quest => quest.SpecificQuestionDetails.IdQuestion == questionToShow.IdQuestion);
            questionBeingAsked = questionCard.SpecificQuestionDetails;
            grdAnswerChoices.Visibility = Visibility.Visible;
            bttChat.Visibility = Visibility.Collapsed;
            txbQuestion.Text = questionCard.SpecificQuestionDetails.EnglishQuestionDescription;
            List<AnswerPOJO> answersForThisQuestion = new List<AnswerPOJO>() { questionCard.RightAnswer, questionCard.WrongOptionOne, questionCard.WrongOptionTwo, questionCard.WrongOptionThree };
            answersOfQuestionBeingAsked = answersForThisQuestion.ToList();
            answerToCurrentQuestion = answersForThisQuestion.FirstOrDefault(ans => ans.IdAnswer == questionBeingAsked.IdAnswerOfQuestion);
            bttFirstAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFirstAnswer).EnglishAnswerDescription;
            bttSecondAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdSecondAnswer).EnglishAnswerDescription;
            bttThridAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdThirdAnswer).EnglishAnswerDescription;
            bttFourAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFourthAnswer).EnglishAnswerDescription;
        }

        private void CLicSelectAnswer(object sender, RoutedEventArgs e)
        {
            if (yourTurn == currentTurn || currentRound == ROUND_THREE)
            {
                bool isCorrect;
                var answerCardChoose = (Button)sender;
                if (answerToCurrentQuestion.EnglishAnswerDescription.Equals(answerCardChoose.Content))
                {
                    isCorrect = true;
                }
                else
                {
                    isCorrect = false;
                }
                if (currentRound != ROUND_THREE)
                {
                    int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => anw.EnglishAnswerDescription.Equals(answerCardChoose.Content)).IdAnswer;
                    gameActionsClient.ChooseAnswer(roomCode, userSingleton.IdUser, idAnswerSelected, isCorrect, questionBeingAsked.ValueWorth, yourTurn);
                    grdAnswerChoices.Visibility = Visibility.Collapsed;
                    bttChat.Visibility = Visibility.Collapsed;
                    ShowResultOfAnswer(isCorrect, idAnswerSelected, questionBeingAsked.ValueWorth.ToString());
                    AnimationSumOrRestPoints(isCorrect, questionBeingAsked.ValueWorth);
                    HideQuestion();
                    AssureThereAreQuestions();
                }
                else
                {
                    answerCardChoose.BorderBrush = new SolidColorBrush(Colors.Blue);
                    bttFirstAnswer.IsEnabled = false;
                    bttSecondAnswer.IsEnabled = false;
                    bttThridAnswer.IsEnabled = false;
                    bttFourAnswer.IsEnabled = false;
                    txbAdvicement.Visibility = Visibility.Visible;
                    int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => anw.EnglishAnswerDescription.Equals(answerCardChoose.Content)).IdAnswer;
                    gameActionsClient.ConfirmLastQuestionAnswer(roomCode, playersInGame.FirstOrDefault(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
                }
            }
        }

        public void ResponseSomeOneChooseAnAnswer(int idAnswerSelected, bool isCorrect, int pointsWorth)
        {
            ShowResultOfAnswer(isCorrect, idAnswerSelected, pointsWorth.ToString());
            AnimationSumOrRestPoints(isCorrect, pointsWorth);
            HideQuestion();
        }

        private async void ShowResultOfAnswer(bool isCorrect, int idAnswerSelected, string points)
        {
            grdAnswerChoices.Visibility = Visibility.Hidden;
            cnvResultOfAwnser.Visibility = Visibility.Visible;
            txbQuestionResult.Text = questionBeingAsked.EnglishQuestionDescription;
            txbStringAnswerChoose.Text = answersOfQuestionBeingAsked.Find(ans => ans.IdAnswer == idAnswerSelected).EnglishAnswerDescription;
            if (isCorrect)
            {
                imgAnswerResult.Source = new BitmapImage(new Uri("/Images/rigthAwnserImage.png", UriKind.Relative));
                txbPointsEarnedOrLost.Text = "+ " + points;
            }
            else
            {
                imgAnswerResult.Source = new BitmapImage(new Uri("/Images/worngAwnserImage.png", UriKind.Relative));
                txbPointsEarnedOrLost.Text = "- " + points;
            }
            await Task.Delay(2000);
        }

        private async void AnimationSumOrRestPoints(bool isCorrect, int points)
        {
            var playerChoosing = playersInGame.Find(player => player.TurnOfPlayer == currentTurn);
            int idUserPlayerBody =0;
            if (isCorrect)
            {
                playerChoosing.CurrentPointsOfRound += questionBeingAsked.ValueWorth;
                if (itsTeamGame)
                {
                    var playerTamBody = playersInGame.Find(pla => pla.SideTeam == playerChoosing.SideTeam);
                    playerTamBody.CurrentPointsOfRound += questionBeingAsked.ValueWorth;
                    idUserPlayerBody = playerTamBody.IdUser;
                }
            }
            else
            {
                playerChoosing.CurrentPointsOfRound -= questionBeingAsked.ValueWorth;
                if (itsTeamGame)
                {
                    var playerTamBody = playersInGame.Find(pla => pla.SideTeam == playerChoosing.SideTeam);
                    playerTamBody.CurrentPointsOfRound += questionBeingAsked.ValueWorth;
                    idUserPlayerBody = playerTamBody.IdUser;
                }
            }
            if (itsTeamGame)
            {
                GameTeamCard specificPlayer = (GameTeamCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals("_" + playerChoosing.IdUser+ idUserPlayerBody.ToString()));
                specificPlayer.UpdatePoints(playerChoosing.CurrentPointsOfRound);
            }
            else
            {
                GamePlayerCard specificPlayer = (GamePlayerCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals("_" + playerChoosing.IdUser.ToString()));
                specificPlayer.UpdatePoints(playerChoosing.CurrentPointsOfRound);
            }           
            await Task.Delay(5000);
            cnvResultOfAwnser.Visibility = Visibility.Hidden;
        }


        private void HideQuestion()
        {
            wrpBoardOfCards.Children.OfType<Border>().FirstOrDefault(card => card.Name.Equals("_"+questionBeingAsked.IdQuestion.ToString())).IsEnabled = false;
        }

        private async void AssureThereAreQuestions()
        {
            await Task.Delay(5000);
            int count = 0;
            foreach (Border card in wrpBoardOfCards.Children.OfType<Border>())
            {
                if (card.IsEnabled)
                {
                    count++;
                }
                if (count == 4)
                {
                    break;
                }
            }
            if (count <= 3)
            {
                gameActionsClient.FinishRound(roomCode, playersInGame.ToArray(), currentRound);
            }
        }

        public void ReceiveNotificationAboutTurn(int isYourTurn)
        {
            currentTurn = isYourTurn;
            ShowIfItsYourTurn();
        }

        private void ShowIfItsYourTurn()
        {
            int idUserTurn = playersInGame.FirstOrDefault(pla => pla.TurnOfPlayer == currentTurn).IdUser;            
            List<Border> specificPlayer = stpPlayers.Children.OfType<Border>().ToList();
            if (itsTeamGame)
            {
                int idUserTeamBody = playersInGame.Find(pla => pla.SideTeam == playersInGame.Find(pla => pla.IdUser == idUserTurn).SideTeam).IdUser;
                foreach (Border card in specificPlayer)
                {
                    GameTeamCard playerCard = card as GameTeamCard;
                    if (playerCard.Name.Equals("_" + idUserTurn+idUserTeamBody))
                    {
                        playerCard.MakeBorderSpecial();
                    }
                    else
                    {
                        playerCard.MakeBoredNormal();
                    }
                }
            }
            else
            {
                foreach (Border card in specificPlayer)
                {
                    GamePlayerCard playerCard = card as GamePlayerCard;
                    if (playerCard.Name.Equals("_" + idUserTurn))
                    {
                        playerCard.MakeBorderSpecial();
                    }
                    else
                    {
                        playerCard.MakeBoredNormal();
                    }
                }
            }            
            if (yourTurn == currentTurn)
            {                
                ellYourTurn.Fill = Brushes.Green;
            }           
            else
            {
                ellYourTurn.Fill = Brushes.Gray;
            }
        }

        public void ResponseBeginRound(int isYourTurn, int roundToStart, PlayerInGameDataContract[] playerInGam)
        {
            playersInGame = playersInGame.ToList();
            switch (roundToStart)
            {
                case 2:
                    currentRound = roundToStart;
                    PrepareRoundTwo();
                    break;
                case 3:
                    currentRound = roundToStart;
                    PrepareLastRound();
                    break;
                case 4:
                    ResponseFinishGame();
                    break;
            }
        }

        public void ResponseShowWinner(PlayerInGameDataContract[] playerInGame)
        {
            playersInGame = playerInGame.ToList();
            CreatePlayersScoresBoards();
            playerInGame.OrderByDescending(pl => pl.CurrentPointsOfRound);
            grdAnswerChoices.Visibility = Visibility.Hidden;
            grWinnerPanel.Visibility = Visibility.Visible;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            SetPlayerInPositionSpots(playersBorders, playerInGame);         
            if(idLeader != 0)
            {
                gameActionsClient.FinishGame(roomCode, idLeader, playerInGame);
                ResponseFinishGame();
            }            
        }

        private  void SetPlayerInPositionSpots(List<Border> playerBorder, PlayerInGameDataContract[] playerInGame)
        {            
            List<Border> pillarRectangles = new List<Border>() { brdFirstPlaceSpot, brdSecondPlaceSpot, brdtThirdPlace, brdForthPlacePlaceSpot}; 
            List<Border> borderPositions = new List<Border>() {brdFirstPlace, brdSecondPlace, brdThirdPlace, brdForthPlace };
            int valueOfCounter;
            if (itsTeamGame)
            {
                valueOfCounter = 1;
            }
            else
            {
                valueOfCounter = playerInGame.Count() - 1;
            }
            for (int i = valueOfCounter; i < 0; i--)
            {
                if (itsTeamGame)
                {
                    borderPositions[i] = playerBorder.Find(pla => pla.Name.Equals("-" + playerInGame[i].IdUser.ToString() + playerInGame[i-1].ToString()));
                }
                else
                {
                    borderPositions[i] = playerBorder.Find(pla => pla.Name.Equals("-" + playerInGame[i].IdUser.ToString()));
                }                
                borderPositions[i].Visibility = Visibility.Visible;
                pillarRectangles[i].Background = borderPositions[i].Background;
                pillarRectangles[i].Visibility = Visibility.Visible;
            }            
        }

        public void ResponseFinishGame()
        {
            CloseWindowAsync();
        }

        private async Task CloseWindowAsync()
        {
            await Task.Delay(10000);
            new InformationMessageDialogWindow("Information", "fin de la partida ", Window.GetWindow(this));
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }


        private void Timer_Tick(object sender, EventArgs e)
        {
        }

        private void CLicOpenChat(object sender, RoutedEventArgs e)
        {

        }



    }
}
