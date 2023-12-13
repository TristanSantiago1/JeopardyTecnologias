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
    public partial class GameBoard : Page, IGameActionsCallback, IChatForTeamsCallback
    {
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private readonly string secondsAbbreviation = Properties.Resources.lblSecondsAbrevation;
        private int timeLeft;
        private bool itsTeamGame;
        private readonly int roomCode;
        private int pointsBet;
        private readonly int idLeader;
        private List<PlayerInGameDataContract> team1;
        private List<PlayerInGameDataContract> team2;
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
        private DispatcherTimer timer;
        private GameActionsClient gameActionsClient;
        private InstanceContext context;
        private readonly UserSingleton userSingleton = UserSingleton.GetMainUser();
        private Window dialogMessage;
        private static TeamChat teamChat;


        public GameBoard(List<QuestionCardInformation> questions, int roomCode, int idLeader)
        {
            InitializeComponent();
            currentQuestions = questions; 
            this.roomCode = roomCode;       
            this.idLeader = idLeader;
            Loaded += SubscribeCallBackChannel;
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
                imgChatIcon.Visibility = Visibility.Visible;
                teamChat = new TeamChat(this, playersInGame.FirstOrDefault(pla => pla.SideTeam == 2 && pla.IdUser != userSingleton.IdUser).IdUser);
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
                team1 = playersInGame.Where(pla => pla.SideTeam == 1).ToList();
                team2 = playersInGame.Where(pla => pla.SideTeam == 2).ToList();
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
            imgHostImage.Source = new BitmapImage(new Uri(hostPath, UriKind.Absolute));
            string hostName = System.IO.Path.GetFileNameWithoutExtension(hostPath);
            txbHostMessage.Text = Properties.Resources.HostRound1Presentation.Replace("*", hostName);  
            await Task.Delay(7000);
            string categoriesPresentation = Properties.Resources.HostCategoriesPresentation;
            categoriesPresentation = categoriesPresentation.Replace("1", categoriesOfGameRound1[0].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("2", categoriesOfGameRound1[1].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("3", categoriesOfGameRound1[2].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_ONE.ToString());
            txbHostMessage.Text = categoriesPresentation;
            await Task.Delay(7000);
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;                     
        }

        private async void BeginHostPresentationSecondRound()
        {
            grTimer.Visibility = Visibility.Hidden;
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;           
            txbHostMessage.Text = Properties.Resources.HostRoun2Presentation;
            await Task.Delay(3000);
            string categoriesPresentation = Properties.Resources.HostCategoriesPresentation;
            categoriesPresentation = categoriesPresentation.Replace("1", categoriesOfGameRound2[0].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("2", categoriesOfGameRound2[1].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("3", categoriesOfGameRound2[2].EnglishCategoryDescription);
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_TWO.ToString());
            txbHostMessage.Text = categoriesPresentation; 
            await Task.Delay(7000);
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
        }

        private async void BeginHostPresentationLastRound()
        {
            grTimer.Visibility = Visibility.Hidden;
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;
            txbHostMessage.Text = Properties.Resources.HostRound3Presentation;
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
            string pointsToBets = txbPointsToBet.Text;
            if (!string.IsNullOrEmpty(pointsToBets))
            {
                pointsBet = int.Parse(txbPointsToBet.Text);
                List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
                var currentPointsOfPlayer = playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
                if (pointsBet <= ((GamePlayerCard)currentPointsOfPlayer).GetPoints() || pointsBet >= 0)
                {
                    gameActionsClient.ConfirmBet(roomCode, userSingleton.IdUser);
                    txbPointsToBet.IsEnabled = false;
                    bttConfirmBet.IsEnabled = false;
                }
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
            grdBet.Visibility = Visibility.Collapsed;
            grTimer.Visibility = Visibility.Visible;
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
            StartTimer();
        } 

        public void SelectQuestion(QuestionCardInformation question)
        {            
            if (yourTurn == currentTurn)
            {               
                var answersQuestionsAsked = new List<AnswerPOJO>() { question.RightAnswer, question.WrongOptionOne, question.WrongOptionTwo, question.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
                CurrentQuestionToShowContract currentQuestionToShow = new CurrentQuestionToShowContract()
                {
                    IdQuestion = question.SpecificQuestionDetails.IdQuestion,
                    IdFirstAnswer = answersQuestionsAsked[0].IdAnswer,
                    IdSecondAnswer = answersQuestionsAsked[1].IdAnswer,
                    IdThirdAnswer = answersQuestionsAsked[2].IdAnswer,
                    IdFourthAnswer = answersQuestionsAsked[3].IdAnswer,
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
            grTimer.Visibility = Visibility.Visible;
            txbQuestion.Text = questionCard.SpecificQuestionDetails.EnglishQuestionDescription;
            List<AnswerPOJO> answersForThisQuestion = new List<AnswerPOJO>() { questionCard.RightAnswer, questionCard.WrongOptionOne, questionCard.WrongOptionTwo, questionCard.WrongOptionThree };
            answersOfQuestionBeingAsked = answersForThisQuestion.ToList();
            answerToCurrentQuestion = answersForThisQuestion.FirstOrDefault(ans => ans.IdAnswer == questionBeingAsked.IdAnswerOfQuestion);
            bttFirstAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFirstAnswer).EnglishAnswerDescription;
            bttSecondAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdSecondAnswer).EnglishAnswerDescription;
            bttThridAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdThirdAnswer).EnglishAnswerDescription;
            bttFourAnswer.Content = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFourthAnswer).EnglishAnswerDescription;
            StartTimer();
        }

        private void CLicSelectAnswer(object sender, RoutedEventArgs e)
        {            
            if (yourTurn == currentTurn || currentRound == ROUND_THREE)
            {
                var answerCardChoose = (Button)sender;               
                if (currentRound != ROUND_THREE)
                {
                    int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => anw.EnglishAnswerDescription.Equals(answerCardChoose.Content)).IdAnswer;
                    gameActionsClient.ChooseAnswer(roomCode, userSingleton.IdUser, idAnswerSelected, questionBeingAsked.ValueWorth, yourTurn);                
                }
                else
                {
                    bool isCorrect;
                    if (answerToCurrentQuestion.EnglishAnswerDescription.Equals(answerCardChoose.Content))
                    {
                        isCorrect = true;
                    }
                    else
                    {
                        isCorrect = false;
                    }
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

        public void ResponseSomeOneChooseAnAnswer(int idAnswerSelected, int idUserAnswering, int pointsWorth)
        {
            timer.Stop();
            bool isCorrect;
            if (answerToCurrentQuestion.EnglishAnswerDescription.Equals(answersOfQuestionBeingAsked.Find(ans => ans.IdAnswer == idAnswerSelected).EnglishAnswerDescription))
            {
                isCorrect = true;
            }
            else
            {
                isCorrect = false;
            }
            ShowResultOfAnswer(isCorrect, idAnswerSelected, pointsWorth.ToString());
            AnimationSumOrRestPoints(isCorrect, pointsWorth, idUserAnswering);
            HideQuestion();
            AssureThereAreQuestions();
        }

        private async void ShowResultOfAnswer(bool isCorrect, int idAnswerSelected, string points)
        {
            grdAnswerChoices.Visibility = Visibility.Hidden;
            cnvResultOfAwnser.Visibility = Visibility.Visible;
            txbQuestionResult.Text = questionBeingAsked.EnglishQuestionDescription;
            txbStringAnswerChoose.Text = answersOfQuestionBeingAsked.Find(ans => ans.IdAnswer == idAnswerSelected).EnglishAnswerDescription;
            if (isCorrect)
            {
                imgAnswerResult.Source = new BitmapImage(new Uri(App.Current.Resources["RightAnswerIcon"].ToString(), UriKind.Absolute));
                txbPointsEarnedOrLost.Text = "+ " + points;
            }
            else
            {
                imgAnswerResult.Source = new BitmapImage(new Uri(App.Current.Resources["WrongAnswerIcon"].ToString(), UriKind.Absolute));
                txbPointsEarnedOrLost.Text = "- " + points;
            }
            await Task.Delay(2000);
        }

        private async void AnimationSumOrRestPoints(bool isCorrect, int points, int idUser)
        {
            var playerChoosing = playersInGame.Find(player => player.IdUser == idUser);
            int idUserPlayerBody = 0;
            if (isCorrect)
            {
                playerChoosing.CurrentPointsOfRound += points;
                if (itsTeamGame)
                {
                    var playerTamBody = playersInGame.Find(pla => pla.SideTeam == playerChoosing.SideTeam && pla.IdUser != playerChoosing.IdUser);
                    playerTamBody.CurrentPointsOfRound += points;
                    idUserPlayerBody = playerTamBody.IdUser;
                }
            }
            else
            {
                playerChoosing.CurrentPointsOfRound -= points;
                if (itsTeamGame)
                {
                    var playerTamBody = playersInGame.Find(pla => pla.SideTeam == playerChoosing.SideTeam && pla.IdUser != playerChoosing.IdUser);
                    playerTamBody.CurrentPointsOfRound += points;
                    idUserPlayerBody = playerTamBody.IdUser;
                }
            }
            if (itsTeamGame)
            {
                GameTeamCard specificTeam = (GameTeamCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals("_" + playerChoosing.IdUser+ idUserPlayerBody.ToString()));
                specificTeam.UpdatePoints(playerChoosing.CurrentPointsOfRound);
            }
            else
            {
                GamePlayerCard specificPlayer = (GamePlayerCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals("_" + playerChoosing.IdUser.ToString()));
                specificPlayer.UpdatePoints(playerChoosing.CurrentPointsOfRound);
            }           
            await Task.Delay(5000);
            cnvResultOfAwnser.Visibility = Visibility.Hidden;
            grTimer.Visibility = Visibility.Hidden;
        }


        private void HideQuestion()
        {
            wrpBoardOfCards.Children.OfType<Border>().FirstOrDefault(card => card.Name.Equals("_"+questionBeingAsked.IdQuestion.ToString())).IsEnabled = false;
        }

        private async void AssureThereAreQuestions()
        {
            await Task.Delay(5000);
            int count = 0;
            if (currentTurn == yourTurn)
            {
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
            grTimer.Visibility = Visibility.Hidden;
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
            List<Border> pillarRectangles = new List<Border>() { brdFirstPlaceSpot, brdSecondPlaceSpot, brdtThirdPlaceSpot, brdForthPlacePlaceSpot}; 
            List<Border> borderPositions = new List<Border>() { brdFirstPlace, brdSecondPlace, brdThirdPlace, brdForthPlace};
            if (itsTeamGame)
            {
                var borderTeam1 = playerBorder.FirstOrDefault(pla => pla.Name.Equals("_" + team1[0].IdUser.ToString() + team1[1].IdUser.ToString()));
                var borderTeam2 = playerBorder.FirstOrDefault(pla => pla.Name.Equals("_" + team2[0].IdUser.ToString() + team2[1].IdUser.ToString()));
                if (playerInGame.FirstOrDefault(pl => pl.SideTeam == 1).CurrentPointsOfRound >= playerInGame.FirstOrDefault(pl => pl.SideTeam == 2).CurrentPointsOfRound)
                {
                    borderTeam1.Margin = borderPositions[0].Margin;
                    borderTeam2.Margin = borderPositions[1].Margin;
                    pillarRectangles[0].Background = borderTeam1.Background;
                    pillarRectangles[1].Background = borderTeam2.Background;
                }
                else
                {
                    borderTeam1.Margin = borderPositions[1].Margin;
                    borderTeam2.Margin = borderPositions[0].Margin;
                    pillarRectangles[1].Background = borderTeam1.Background;
                    pillarRectangles[0].Background = borderTeam2.Background;
                }
                stpPlayers.Children.Clear();
                int indexBorder0 = grWinnerPanel.Children.IndexOf(borderPositions[0]);
                int indexBorder1 = grWinnerPanel.Children.IndexOf(borderPositions[1]);
                grWinnerPanel.Children.RemoveAt(indexBorder0);
                grWinnerPanel.Children.RemoveAt(indexBorder1);
                grWinnerPanel.Children.Insert(indexBorder0, borderTeam1);
                grWinnerPanel.Children.Insert(indexBorder1, borderTeam2);
            }
            else
            {
                for (int i = playerInGame.Count() - 1; i >= 0; i--)
                {
                    pillarRectangles[i].Visibility = Visibility.Visible;
                    int index = grWinnerPanel.Children.IndexOf(borderPositions[i]);
                    Border borderCopy;
                    borderCopy = playerBorder.FirstOrDefault(pla => pla.Name.Equals("_" + playerInGame[i].IdUser.ToString()));
                    stpPlayers.Children.Remove(borderCopy);
                    borderCopy.Margin = borderPositions[i].Margin;
                    grWinnerPanel.Children.RemoveAt(index);
                    grWinnerPanel.Children.Insert(index, borderCopy);

                    pillarRectangles[i].Background = borderCopy.Background;
                }
            }
        }

        private void ClickLeaveGame(object sender, MouseButtonEventArgs e)
        {
            if (new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.LeaveGameConfirmation, Window.GetWindow(this)).CloseWindow)
            {
                NotifyLeavingGame();
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
                NavigationService.RemoveBackEntry();
            }
        }

        private void NotifyLeavingGame()
        {
            gameActionsClient.UnSubscribeFromGameCallBack(roomCode, userSingleton.IdUser);
        }

        public void ReceiveNotificationSomeOneLeft(int isYourTurn, PlayerInGameDataContract[] playerInGame)
        {
            if (playerInGame.Count() == 1 || itsTeamGame)
            {
                CloseWindow();
                return;
            }
            if (currentTurn == playerInGame.Count())
            {
                currentTurn = 1;
            }
            grdAnswerChoices.Visibility = Visibility.Hidden;
            yourTurn = isYourTurn;
            playersInGame = playerInGame.ToList();
            ShowIfItsYourTurn();
        }

        public void ResponseFinishGame()
        {
            CloseWindowAsync();
        }

        private async Task CloseWindowAsync()
        {
            await Task.Delay(10000);
           CloseWindow();
        }
        private void  CloseWindow()
        {
            dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationMessage, Properties.Resources.GameFinished, Window.GetWindow(this));
            MainMenu mainMenu = new MainMenu();
            this.NavigationService.Navigate(mainMenu);
            NavigationService.RemoveBackEntry();
        }


        private void StartTimer()
        {
            txbTimer.Text = timeLeft.ToString() + secondsAbbreviation;
            timeLeft = 15;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            txbTimer.Text = timeLeft.ToString() + secondsAbbreviation;
            if (timeLeft <= 0)
            {
                if(currentRound != ROUND_THREE)
                {
                    if (grdAnswerChoices.IsVisible)
                    {
                        ChooseWrongAnswer();
                    }
                }  
            }
            else
            {
                timeLeft--;
            }
        }


        private void ChooseWrongAnswer()
        {
            if (currentTurn == yourTurn)
            {
                Button answerButton = grdAnswerChoices.Children.OfType<Button>().FirstOrDefault(btt => !btt.Content.Equals(answerToCurrentQuestion.EnglishAnswerDescription));
                if (currentRound != ROUND_THREE)
                {                                       
                    int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => anw.EnglishAnswerDescription.Equals(answerButton.Content)).IdAnswer;
                    gameActionsClient.ChooseAnswer(roomCode, userSingleton.IdUser, idAnswerSelected, questionBeingAsked.ValueWorth, yourTurn);                  
                }
                else
                {
                    bool isCorrect = false;
                    answerButton.BorderBrush = new SolidColorBrush(Colors.Blue);
                    bttFirstAnswer.IsEnabled = false;
                    bttSecondAnswer.IsEnabled = false;
                    bttThridAnswer.IsEnabled = false;
                    bttFourAnswer.IsEnabled = false;
                    txbAdvicement.Visibility = Visibility.Visible;
                    int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => anw.EnglishAnswerDescription.Equals(answerButton.Content)).IdAnswer;
                    gameActionsClient.ConfirmLastQuestionAnswer(roomCode, playersInGame.FirstOrDefault(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
                }
            }
        }

        private void CLickOpenChat(object sender, MouseButtonEventArgs e)
        {
            frmChat.Content = teamChat;
            grdChat.Visibility = Visibility.Visible;
        }
        public void CloseLiveChat()
        {
            frmChat.Content = null;
            grdChat.Visibility = Visibility.Collapsed;
        }
        public void ReceiveMessageTeamChat(GenericClassOfMessageChatxY0a3WX4 message)
        {
            ((IChatForTeamsCallback)teamChat).ReceiveMessageTeamChat(message);
        }

       

    }
}
