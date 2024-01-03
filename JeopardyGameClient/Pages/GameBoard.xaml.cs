using JeopardyGame.Cards;
using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Threading;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;

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
        private string team1Name;
        private string team2Name;
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
        private readonly UserSingleton userSingleton = UserSingleton.GetMainUser();
        private Window dialogMessage;
        private static TeamChat teamChat;


        public GameBoard(List<QuestionCardInformation> questions, int roomCode, int idLeader)
        {
            InitializeComponent();
            currentQuestions = questions; 
            this.roomCode = roomCode;       
            this.idLeader = idLeader;
            Loaded += LoadedSubscribeCallBackChannel;
        }
        

        private void LoadedSubscribeCallBackChannel(object sender, RoutedEventArgs e)
        {
            try
            {
                InstanceContext context = new InstanceContext(this);
                GameActionsClient gameActionsClientProxy = new GameActionsClient(context);
                gameActionsClientProxy.SubscribeToGameCallBack(roomCode, userSingleton.IdUser, userSingleton.IdCurrentAvatar);
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblWithoutConection);
            }
        }

        public void ReceiveNotificationEverybodyIsPlaying(bool isEveryBodyPlaying, int isYourTurn, PlayerInGameDataContract[] playerInGame)
        {
            try
            {
                currentTurn = 1;
                yourTurn = isYourTurn;
                playersInGame = playerInGame.ToList();
                PrepareWindow();
                ShowIfItsYourTurn();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblWithoutConection);
            }
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
            if (itsTeamGame)
            {
                var player = playersInGame.Find(pl => pl.IdUser == userSingleton.IdUser);              
                teamChat = new TeamChat(this, playersInGame.FirstOrDefault(pla => pla.SideTeam == player.SideTeam && pla.IdUser != userSingleton.IdUser).IdUser);
            }
            PrepareRoundOne();
        }

        private void VerifyThereAreTeams()
        {
            if (playersInGame.Any(pla => pla.SideTeam == 2))
            {
                itsTeamGame = true;
                imgChatIcon.Visibility = Visibility.Visible;
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
                team1Name = "_"+team1[0].IdUser.ToString()+ team1[1].IdUser.ToString();
                team2Name = "_" + team2[0].IdUser.ToString()+ team2[1].IdUser.ToString();
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
                GameCategoryCard categoryCard = new(GetSpecificResource.GetEnglishOrSpanishDescription(category.EnglishCategoryDescription, category.SpanishCategoryDescription));
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
            string hostPath = GetSpecificResource.GetHosImage(1);
            imgHostImage.Source = new BitmapImage(new Uri(hostPath, UriKind.Absolute));
            string hostName = System.IO.Path.GetFileNameWithoutExtension(hostPath);
            txbHostMessage.Text = Properties.Resources.HostRound1Presentation.Replace("*", hostName);  
            await Task.Delay(7000);
            string categoriesPresentation = Properties.Resources.HostCategoriesPresentation;
            categoriesPresentation = categoriesPresentation.Replace("1", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[0].EnglishCategoryDescription, categoriesOfGameRound1[0].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("2", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[1].EnglishCategoryDescription, categoriesOfGameRound1[1].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("3", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[2].EnglishCategoryDescription, categoriesOfGameRound1[2].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_ONE.ToString());
            txbHostMessage.Text = categoriesPresentation;
            await Task.Delay(6000);
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
            categoriesPresentation = categoriesPresentation.Replace("1", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[0].EnglishCategoryDescription, categoriesOfGameRound2[0].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("2", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[1].EnglishCategoryDescription, categoriesOfGameRound2[1].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("3", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[2].EnglishCategoryDescription, categoriesOfGameRound2[2].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_TWO.ToString());
            txbHostMessage.Text = categoriesPresentation; 
            await Task.Delay(5000);
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
            await Task.Delay(4000);
            grdBet.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            if (itsTeamGame)
            {
                string nameOfBorder;
                if (playersInGame.FirstOrDefault(pl => pl.IdUser == userSingleton.IdUser).SideTeam == 1)
                {
                    nameOfBorder = team1Name;
                }
                else
                {
                    nameOfBorder = team2Name;
                }
                GameTeamCard currentPointsOfPlayer = (GameTeamCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals(nameOfBorder));
                if (currentPointsOfPlayer.GetPoints() < 0)
                {
                    txbPointsToBet.Text = "0";
                    txbPointsToBet.IsEnabled = false;
                }
            }
            else
            {
                GamePlayerCard currentPointsOfPlayer = (GamePlayerCard)playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
                if (currentPointsOfPlayer.GetPoints() < 0)
                {
                    txbPointsToBet.Text = "0";
                    txbPointsToBet.IsEnabled = false;
                }
            }                      
        }

        private void ClickConfirmBet(object sender, RoutedEventArgs e)
        {
            string pointsToBets = txbPointsToBet.Text;
            if (!string.IsNullOrEmpty(pointsToBets))
            {
                pointsBet = int.Parse(txbPointsToBet.Text);
                List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();               
                if (itsTeamGame)
                {
                    string nameOfBorder;
                    if (playersInGame.FirstOrDefault(pl => pl.IdUser == userSingleton.IdUser).SideTeam == 1)
                    {
                        nameOfBorder = team1Name;
                    }
                    else
                    {
                        nameOfBorder = team2Name;
                    }
                    var currentPointsOfPlayer = playersBorders.FirstOrDefault(pla => pla.Name.Equals(nameOfBorder));
                    if (pointsBet <= ((GameTeamCard)currentPointsOfPlayer).GetPoints() || pointsBet >= 0)
                    {
                        GameActionsOperationsClient gameActionsClientProxy = new();
                        gameActionsClientProxy.ConfirmBet(roomCode, userSingleton.IdUser);
                        txbPointsToBet.IsEnabled = false;
                        bttConfirmBet.IsEnabled = false;
                    }
                }
                else
                {
                    var currentPointsOfPlayer = playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
                    if (pointsBet <= ((GamePlayerCard)currentPointsOfPlayer).GetPoints() || pointsBet >= 0)
                    {
                        try
                        {
                            GameActionsClient gameActionsCallBackClientProxy = new GameActionsClient(new InstanceContext(this));
                            gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);

                            GameActionsOperationsClient gameActionsClientProxy = new();
                            gameActionsClientProxy.ConfirmBet(roomCode, userSingleton.IdUser);
                            txbPointsToBet.IsEnabled = false;
                            bttConfirmBet.IsEnabled = false;
                        }
                        catch (EndpointNotFoundException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToMakeBet + " : " + Properties.Resources.lblEndPointNotFound);
                        }
                        catch (CommunicationObjectFaultedException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToMakeBet + " : " + Properties.Resources.lblComunicationException);
                        }
                        catch (TimeoutException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToMakeBet + " : " + Properties.Resources.lblTimeException);
                        }
                        catch (CommunicationException ex)
                        {
                            HandleException(ex, Properties.Resources.lblFailToMakeBet + " : " + Properties.Resources.lblWithoutConection);
                        }
                    }
                }
            }                  
        }

        private void EntryBetPoints(object sender, TextCompositionEventArgs e)
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
            txbQuestion.Text =  GetSpecificResource.GetEnglishOrSpanishDescription(questionBeingAsked.EnglishQuestionDescription, questionBeingAsked.SpanishQuestionDescription);
            answersOfQuestionBeingAsked = new List<AnswerPOJO>() { finalQuestion.RightAnswer, finalQuestion.WrongOptionOne, finalQuestion.WrongOptionTwo, finalQuestion.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
            answerToCurrentQuestion = answersOfQuestionBeingAsked.Where(answer => answer.IdAnswer == finalQuestion.SpecificQuestionDetails.IdAnswerOfQuestion).FirstOrDefault();
            bttFirstAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[0].EnglishAnswerDescription, answersOfQuestionBeingAsked[0].SpanishAnswerDescription);
            bttSecondAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[1].EnglishAnswerDescription, answersOfQuestionBeingAsked[1].SpanishAnswerDescription);
            bttThridAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[2].EnglishAnswerDescription, answersOfQuestionBeingAsked[2].SpanishAnswerDescription);
            bttFourAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[3].EnglishAnswerDescription, answersOfQuestionBeingAsked[3].SpanishAnswerDescription);
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
                try
                {
                    GameActionsClient gameActionsCallBackClientProxy = new GameActionsClient(new InstanceContext(this));
                    gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);

                    GameActionsOperationsClient gameActionsClientProxy = new();
                    gameActionsClientProxy.ChooseQuestionOfBoard(roomCode, userSingleton.IdUser, question.NumberOfRound, currentQuestionToShow);
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChoseQuestion + " : " + Properties.Resources.lblEndPointNotFound);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChoseQuestion + " : " + Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChoseQuestion + " : " + Properties.Resources.lblTimeException);
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChoseQuestion + " : " + Properties.Resources.lblWithoutConection);
                }
            }            
        }

        public void ResponseSomeOneSelectAQuestion(CurrentQuestionToShowContract questionToShow, int currentRound, int idUser)
        {
            this.currentRound = currentRound;
            QuestionCardInformation questionCard = currentQuestions.FirstOrDefault(quest => quest.SpecificQuestionDetails.IdQuestion == questionToShow.IdQuestion);
            questionBeingAsked = questionCard.SpecificQuestionDetails;
            grdAnswerChoices.Visibility = Visibility.Visible;
            grTimer.Visibility = Visibility.Visible;
            txbQuestion.Text = GetSpecificResource.GetEnglishOrSpanishDescription(questionCard.SpecificQuestionDetails.EnglishQuestionDescription, questionCard.SpecificQuestionDetails.SpanishQuestionDescription);
            List<AnswerPOJO> answersForThisQuestion = new List<AnswerPOJO>() { questionCard.RightAnswer, questionCard.WrongOptionOne, questionCard.WrongOptionTwo, questionCard.WrongOptionThree };
            answersOfQuestionBeingAsked = answersForThisQuestion.ToList();
            answerToCurrentQuestion = answersForThisQuestion.FirstOrDefault(ans => ans.IdAnswer == questionBeingAsked.IdAnswerOfQuestion);
            var answerbtt1 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFirstAnswer);
            bttFirstAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt1.EnglishAnswerDescription, answerbtt1.SpanishAnswerDescription);
            var answerbtt2 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdSecondAnswer);
            bttSecondAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt2.EnglishAnswerDescription, answerbtt2.SpanishAnswerDescription); ;
            var answerbtt3 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdThirdAnswer);
            bttThridAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt3.EnglishAnswerDescription, answerbtt3.SpanishAnswerDescription); ;
            var answerbtt4 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFourthAnswer);
            bttFourAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt4.EnglishAnswerDescription, answerbtt4.SpanishAnswerDescription); ;
            StartTimer();
        }

        private void ClickSelectAnswer(object sender, RoutedEventArgs e)
        {            
            if (yourTurn == currentTurn || currentRound == ROUND_THREE)
            {
                var answerCardChoose = (Button)sender;
                try
                {

                    GameActionsClient gameActionsCallBackClientProxy = new GameActionsClient(new InstanceContext(this));
                    gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);

                    if (currentRound != ROUND_THREE)
                    {
                        GameActionsOperationsClient gameActionsClientProxy = new();
                        int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerCardChoose.Content)).IdAnswer;
                        gameActionsClientProxy.ChooseAnswer(roomCode, userSingleton.IdUser, idAnswerSelected, questionBeingAsked.ValueWorth, yourTurn);
                    }
                    else
                    {
                        bool isCorrect;
                        if (GetSpecificResource.GetEnglishOrSpanishDescription(answerToCurrentQuestion.EnglishAnswerDescription, answerToCurrentQuestion.SpanishAnswerDescription).Equals(answerCardChoose.Content))
                        {
                            isCorrect = true;
                        }
                        else
                        {
                            isCorrect = false;
                        }
                        GameActionsOperationsClient gameActionsClientProxy = new();
                        answerCardChoose.BorderBrush = new SolidColorBrush(Colors.Blue);
                        bttFirstAnswer.IsEnabled = false;
                        bttSecondAnswer.IsEnabled = false;
                        bttThridAnswer.IsEnabled = false;
                        bttFourAnswer.IsEnabled = false;
                        txbAdvicement.Visibility = Visibility.Visible;
                        int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerCardChoose.Content)).IdAnswer;
                        gameActionsClientProxy.ConfirmLastQuestionAnswer(roomCode, playersInGame.FirstOrDefault(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblEndPointNotFound);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblTimeException);
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblWithoutConection);
                }
            }            
        }

        public void ResponseSomeOneChooseAnAnswer(int idAnswerSelected, int idUserAnswering, int pointsWorth)
        {
            timer.Stop();
            bool isCorrect;
            string descriptionOfCurrentQuestion = GetSpecificResource.GetEnglishOrSpanishDescription(answerToCurrentQuestion.EnglishAnswerDescription, answerToCurrentQuestion.SpanishAnswerDescription);
            var answerSelected = answersOfQuestionBeingAsked.Find(ans => ans.IdAnswer == idAnswerSelected);
            if (descriptionOfCurrentQuestion.Equals(GetSpecificResource.GetEnglishOrSpanishDescription(answerSelected.EnglishAnswerDescription, answerSelected.SpanishAnswerDescription)))
            {
                isCorrect = true;
            }
            else
            {
                isCorrect = false;
            }
            ShowResultOfAnswer(isCorrect, idAnswerSelected, pointsWorth.ToString());
            SumOrRestPoints(isCorrect, pointsWorth, idUserAnswering);
            HideQuestion();
            AssureThereAreQuestions();
        }

        private async void ShowResultOfAnswer(bool isCorrect, int idAnswerSelected, string points)
        {
            grdAnswerChoices.Visibility = Visibility.Hidden;
            cnvResultOfAwnser.Visibility = Visibility.Visible;
            txbQuestionResult.Text = GetSpecificResource.GetEnglishOrSpanishDescription( questionBeingAsked.EnglishQuestionDescription, questionBeingAsked.SpanishQuestionDescription);
            var answerSelected = answersOfQuestionBeingAsked.Find(ans => ans.IdAnswer == idAnswerSelected);
            txbStringAnswerChoose.Text = GetSpecificResource.GetEnglishOrSpanishDescription(answerSelected.EnglishAnswerDescription, answerSelected.SpanishAnswerDescription);
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

        private async void SumOrRestPoints(bool isCorrect, int points, int idUser)
        {
            var playerChoosing = playersInGame.Find(player => player.IdUser == idUser);
            GameTeamCard specificTeam = null;
            if (itsTeamGame)
            {
                string nameOfBorder;
                if (playerChoosing.SideTeam == 1)
                {
                    nameOfBorder = team1Name;
                }
                else
                {
                    nameOfBorder = team2Name;
                }
                specificTeam = (GameTeamCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals(nameOfBorder));
            }
            if (isCorrect)
            {
                playerChoosing.CurrentPointsOfRound += points;
                if (itsTeamGame)
                {                   
                    int sum = specificTeam.GetPoints();
                    specificTeam.UpdatePoints(sum += points);
                    playersInGame.Where(pl => pl.SideTeam == playerChoosing.SideTeam).ToList().ForEach(pl => pl.CurrentPointsOfRound = specificTeam.GetPoints());
                }
            }
            else
            {
                playerChoosing.CurrentPointsOfRound -= points;
                if (itsTeamGame)
                {
                    int sum = specificTeam.GetPoints();
                    specificTeam.UpdatePoints(sum -= points);
                    playersInGame.Where(pl => pl.SideTeam == playerChoosing.SideTeam).ToList().ForEach(pl => pl.CurrentPointsOfRound = specificTeam.GetPoints());
                }
            }
            if (!itsTeamGame)
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
                    try
                    {
                        GameActionsClient gameActionsCallBackClientProxy = new GameActionsClient(new InstanceContext(this));
                        gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);

                        GameActionsOperationsClient gameActionsClientProxy = new();
                        gameActionsClientProxy.FinishRound(roomCode, playersInGame.ToArray(), currentRound);

                    }
                    catch (EndpointNotFoundException ex)
                    {
                        HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblEndPointNotFound);
                    }
                    catch (CommunicationObjectFaultedException ex)
                    {
                        HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblComunicationException);
                    }
                    catch (TimeoutException ex)
                    {
                        HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblTimeException);
                    }
                    catch (CommunicationException ex)
                    {
                        HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblWithoutConection);
                    }
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
            var userTurn = playersInGame.FirstOrDefault(pla => pla.TurnOfPlayer == currentTurn);            
            List<Border> specificPlayer = stpPlayers.Children.OfType<Border>().ToList();
            if (itsTeamGame)
            {
                string nameOfBorder;
                if (userTurn.SideTeam == 1)
                {
                    nameOfBorder = team1Name;
                }
                else
                {
                    nameOfBorder = team2Name;
                }                
                foreach (Border card in specificPlayer)
                {
                    GameTeamCard playerCard = card as GameTeamCard;
                    if (playerCard.Name.Equals(nameOfBorder))
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
                    if (playerCard.Name.Equals("_" + userTurn.IdUser))
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
            }
        }

        public void ResponseShowWinner(PlayerInGameDataContract[] playerInGame, int arePointsSaved)
        {
            currentRound = 4;
            playersInGame = playerInGame.ToList();
            CreatePlayersScoresBoards();
            playerInGame.OrderBy(pl => pl.CurrentPointsOfRound);
            grdAnswerChoices.Visibility = Visibility.Hidden;
            grTimer.Visibility = Visibility.Hidden;
            grWinnerPanel.Visibility = Visibility.Visible;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            SetPlayerInPositionSpots(playersBorders, playerInGame);  
            if(userSingleton.IdState != 3)
            {
                if (arePointsSaved == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationMessage, Properties.Resources.GameFinished, Window.GetWindow(this));
                }
                else
                {
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationMessage, Properties.Resources.lblFailToSavePoinstAfterGame, Window.GetWindow(this));
                }
            }
            else
            {
                dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationMessage, Properties.Resources.lblFailToSavePoinstAfterGame, Window.GetWindow(this));
            }
        }

        private  void SetPlayerInPositionSpots(List<Border> playerBorder, PlayerInGameDataContract[] playerInGame)
        {            
            List<Border> pillarRectangles = new List<Border>() { brdFirstPlaceSpot, brdSecondPlaceSpot, brdtThirdPlaceSpot, brdForthPlacePlaceSpot}; 
            List<Border> borderPositions = new List<Border>() { brdFirstPlace, brdSecondPlace, brdThirdPlace, brdForthPlace};
            if (itsTeamGame)
            {
                var borderTeam1 = playerBorder.FirstOrDefault(pla => pla.Name.Equals(team1Name));
                var borderTeam2 = playerBorder.FirstOrDefault(pla => pla.Name.Equals(team2Name));
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
                borderTeam1.Width = double.NaN;
                borderTeam1.Height = double.NaN;
                borderTeam2.Width = double.NaN;
                borderTeam2.Height = double.NaN;
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
        
        private void StartTimer()
        {
            txbTimer.Text = timeLeft.ToString() + secondsAbbreviation;
            if(currentRound == ROUND_ONE)
            {
                timeLeft = 15;
            }
            else
            {
                timeLeft = 10;
            }
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
                if (currentRound != ROUND_THREE)
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
                string descriptionAnswerToQuestion = GetSpecificResource.GetEnglishOrSpanishDescription(answerToCurrentQuestion.EnglishAnswerDescription, answerToCurrentQuestion.SpanishAnswerDescription);
                Button answerButton = grdAnswerChoices.Children.OfType<Button>().FirstOrDefault(btt => !btt.Content.Equals(descriptionAnswerToQuestion));
                try
                {
                    GameActionsClient gameActionsCallBackClientProxy = new GameActionsClient(new InstanceContext(this));
                    gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);

                    if (currentRound != ROUND_THREE)
                    {
                        GameActionsOperationsClient gameActionsClientProxy = new();
                        int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerButton.Content)).IdAnswer;
                        gameActionsClientProxy.ChooseAnswer(roomCode, userSingleton.IdUser, idAnswerSelected, questionBeingAsked.ValueWorth, yourTurn);
                    }
                    else
                    {
                        GameActionsOperationsClient gameActionsClientProxy = new();
                        bool isCorrect = false;
                        answerButton.BorderBrush = new SolidColorBrush(Colors.Blue);
                        bttFirstAnswer.IsEnabled = false;
                        bttSecondAnswer.IsEnabled = false;
                        bttThridAnswer.IsEnabled = false;
                        bttFourAnswer.IsEnabled = false;
                        txbAdvicement.Visibility = Visibility.Visible;
                        int idAnswerSelected = answersOfQuestionBeingAsked.FirstOrDefault(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerButton.Content)).IdAnswer;
                        gameActionsClientProxy.ConfirmLastQuestionAnswer(roomCode, playersInGame.FirstOrDefault(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
                    }
                }
                catch (EndpointNotFoundException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblEndPointNotFound);
                }
                catch (CommunicationObjectFaultedException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblComunicationException);
                }
                catch (TimeoutException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblTimeException);
                }
                catch (CommunicationException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToChooseAnswer + " : " + Properties.Resources.lblWithoutConection);
                }
            }
        }

        private void ClickLeaveGame(object sender, MouseButtonEventArgs e)
        {
            if(currentRound == 4)
            {
                CloseWindow();
            }
            if (new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.LeaveGameConfirmation, Window.GetWindow(this)).CloseWindow)
            {
                NotifyLeavingGame();
                CloseWindow();
            }
        }
        private void CloseWindow()
        {
            if (userSingleton.IdState != 3)
            {
                MainMenu mainMenu = new MainMenu();
                this.NavigationService.Navigate(mainMenu);
                NavigationService.RemoveBackEntry();
            }
            else
            {
                DeleteSingleton();
                PrincipalPage principalPage = new PrincipalPage();
                this.NavigationService.Navigate(principalPage);
                NavigationService.RemoveBackEntry();
            }
        }


        private void NotifyLeavingGame()
        {
            try
            {
                GameActionsOperationsClient gameActionsClientProxy = new();
                gameActionsClientProxy.UnSubscribeFromGameCallBack(roomCode, userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);  
            }
        }

        public void ReceiveNotificationSomeOneLeft(int isYourTurn, PlayerInGameDataContract[] playerInGame)
        {
            try
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
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
            }
        }

 
        private void DeleteSingleton()
        {
            try
            {
                GuestPlayerManagerClient guestPlayerManagerProxy = new();
                guestPlayerManagerProxy.DeleteGuest(userSingleton.IdUser);
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWithoutConection);
            }
            UserSingleton.CleanSingleton();
        }


        private void ClickOpenChat(object sender, MouseButtonEventArgs e)
        {
            teamChat.RenewCallBackChannel();
            grdChat.Visibility = Visibility.Visible;
        }

        public void CloseLiveChat()
        {
            grdChat.Visibility = Visibility.Collapsed;
        }

        public void ReceiveMessageTeamChat(GenericClassOfMessageChatxY0a3WX4 message)
        {
            ((IChatForTeamsCallback)teamChat).ReceiveMessageTeamChat(message);
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
            NotifyLeavingGame();
            ReturnPage();
        }

        
        private void ReturnPage()
        {
            UserSingleton.CleanSingleton();
            LogInUser logInUserPage = new LogInUser();
            this.NavigationService.Navigate(logInUserPage);
            NavigationService.RemoveBackEntry();
        }

    }
}
