using JeopardyGame.Cards;
using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
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
    public partial class GameBoard : Page, IGameServiceCallback, IChatForTeamsServiceCallback
    {
        private int idHost;
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private readonly string secondsAbbreviation = Properties.Resources.lblSecondsAbrevation;
        private int timeLeft;
        private bool itsTeamGame;
        private readonly int roomCode;
        private int pointsBet;
        private List<PlayerInGameDataContract> team1;
        private List<PlayerInGameDataContract> team2;
        private string team1Name;
        private string team2Name;
        private List<QuestionCardInformation> currentQuestions;
        private List<QuestionCardInformation> questionsRoundOne;
        private List<QuestionCardInformation> questionsRoundTwo;
        private QuestionCardInformation finalQuestion;
        private List<CategoryPojo> categoriesOfGameRound1 = new List<CategoryPojo>();
        private List<CategoryPojo> categoriesOfGameRound2 = new List<CategoryPojo>();
        private List<PlayerInGameDataContract> playersInGame;        
        private int yourTurn;
        private int currentTurn;
        private int currentRound;
        private QuestionPojo questionBeingAsked;
        private AnswerPojo answerToCurrentQuestion;
        private List<AnswerPojo> answersOfQuestionBeingAsked;
        private DispatcherTimer timer;   
        private readonly UserSingleton userSingleton = UserSingleton.GetMainUser();
        private TeamChat teamChat;


        public GameBoard(List<QuestionCardInformation> questions, int roomCode)
        {
            InitializeComponent();
            currentQuestions = questions; 
            this.roomCode = roomCode;    
            Loaded += LoadedSubscribeCallBackChannel;
        }
        

        private void LoadedSubscribeCallBackChannel(object sender, RoutedEventArgs e)
        {
            try
            {
                InstanceContext context = new InstanceContext(this);
                GameServiceClient gameActionsClientProxy = new (context);
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        public async void ReceiveNotificationEverybodyIsPlaying(int idHost, int isYourTurn, PlayerInGameDataContract[] playerInGame)
        {
            try
            {
                currentTurn = 1;
                this.idHost = idHost;
                yourTurn = isYourTurn;
                playersInGame = playerInGame.ToList();
                await  PrepareWindowAsync();
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
        }

        private async Task PrepareWindowAsync()
        {                       
            VerifyThereAreTeams();
            PrepareListOfQuestionsAndCategories();            
            CreatePlayersScoresBoards();
            if (IsLoaded)
            {
                await BeginHostPresentationAsync();
            }
            if (itsTeamGame)
            {
                var player = playersInGame.Find(pl => pl.IdUser == userSingleton.IdUser);
                var playerTeam = playersInGame.Find(pla => pla.SideTeam == player.SideTeam && pla.IdUser != userSingleton.IdUser);
                if (playerTeam != null) {
                    teamChat = new TeamChat(this, playerTeam.IdUser);
                }
            }
            PrepareRoundOne();
        }

        private void VerifyThereAreTeams()
        {
            if (playersInGame.Exists(pla => pla.SideTeam == 2))
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

        private void GetUniqueCategories(List<CategoryPojo> categoriesRepeatedList, List<CategoryPojo> uniqueCategoryList)
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

        private async Task PrepareRoundTwo()
        {
            wrpBoardOfCards.Children.Clear();
            await BeginHostPresentationSecondRoundAsync();
            SetInformationInCards(categoriesOfGameRound2, questionsRoundTwo);
        }

        private async Task PrepareLastRound()
        {
            wrpBoardOfCards.Children.Clear();
            wrpBoardOfCards.Visibility = Visibility.Collapsed; 
            await BeginHostPresentationLastRound(); 
        }

        private void SetInformationInCards(List<CategoryPojo> categoriesOfGame, List<QuestionCardInformation> questionsOfRound)
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

        private async Task BeginHostPresentationAsync()
        {            
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;           
            await ShowPresentationOneAsync();
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;                     
        }

        private async Task ShowPresentationOneAsync()
        {
            string hostPath = GetSpecificResource.GetHosImage(idHost);
            imgHostImage.Source = new BitmapImage(new Uri(hostPath, UriKind.Absolute));
            string hostName = System.IO.Path.GetFileNameWithoutExtension(hostPath);
            txbHostMessage.Text = Properties.Resources.HostRound1Presentation.Replace("*", hostName);
            await Task.Delay(4000);
            string categoriesPresentation = Properties.Resources.HostCategoriesPresentation;
            categoriesPresentation = categoriesPresentation.Replace("1", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[0].EnglishCategoryDescription, categoriesOfGameRound1[0].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("2", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[1].EnglishCategoryDescription, categoriesOfGameRound1[1].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("3", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound1[2].EnglishCategoryDescription, categoriesOfGameRound1[2].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_ONE.ToString());
            txbHostMessage.Text = categoriesPresentation;
            await Task.Delay(6000);
        }

        private async Task BeginHostPresentationSecondRoundAsync()
        {
            grTimer.Visibility = Visibility.Hidden;
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;             
            await ShowPresentationTwoAsync();            
            wrpBoardOfCards.Visibility = Visibility.Visible;
            stpTurnLigth.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
            
        }

        private async Task ShowPresentationTwoAsync()
        {
            txbHostMessage.Text = Properties.Resources.HostRoun2Presentation;
            await Task.Delay(4000);
            string categoriesPresentation = Properties.Resources.HostCategoriesPresentation;
            categoriesPresentation = categoriesPresentation.Replace("1", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[0].EnglishCategoryDescription, categoriesOfGameRound2[0].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("2", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[1].EnglishCategoryDescription, categoriesOfGameRound2[1].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("3", GetSpecificResource.GetEnglishOrSpanishDescription(categoriesOfGameRound2[2].EnglishCategoryDescription, categoriesOfGameRound2[2].SpanishCategoryDescription));
            categoriesPresentation = categoriesPresentation.Replace("\\n", Environment.NewLine);
            categoriesPresentation = categoriesPresentation.Replace("*", ROUND_TWO.ToString());
            txbHostMessage.Text = categoriesPresentation;
            await Task.Delay(5000);
        }

        private async Task BeginHostPresentationLastRound()
        {
            await ShowPresentationThreeAsync();
            grdBet.Visibility = Visibility.Visible;
            grdPresentation.Visibility = Visibility.Collapsed;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            if (itsTeamGame)
            {
                string nameOfBorder;
                var playerInGame = playersInGame.Find(pl => pl.IdUser == userSingleton.IdUser);
                if (playerInGame != null && playerInGame.SideTeam == 1)
                {
                    nameOfBorder = team1Name;
                }
                else
                {
                    nameOfBorder = team2Name;
                }
                GameTeamCard currentPointsOfPlayer = (GameTeamCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals(nameOfBorder));
                if (currentPointsOfPlayer!= null && currentPointsOfPlayer.GetPoints() < 0)
                {
                    txbPointsToBet.Text = "0";
                    txbPointsToBet.IsEnabled = false;
                }
            }
            else
            {
                GamePlayerCard currentPointsOfPlayer = (GamePlayerCard)playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
                if (currentPointsOfPlayer != null && currentPointsOfPlayer.GetPoints() < 0)
                {
                    txbPointsToBet.Text = "0";
                    txbPointsToBet.IsEnabled = false;
                }
            }                      
        }

        private async Task ShowPresentationThreeAsync()
        {
            grTimer.Visibility = Visibility.Hidden;
            wrpBoardOfCards.Visibility = Visibility.Hidden;
            stpTurnLigth.Visibility = Visibility.Hidden;
            grdPresentation.Visibility = Visibility.Visible;
            txbHostMessage.Text = Properties.Resources.HostRound3Presentation;
            await Task.Delay(4000);
        }

        private void ClickConfirmBet(object sender, RoutedEventArgs e)
        {
            string pointsToBets = txbPointsToBet.Text;
            if (!string.IsNullOrEmpty(pointsToBets))
            {
                pointsBet = int.Parse(txbPointsToBet.Text);
                List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();               
                if (itsTeamGame && playersBorders.Count >= 2)
                {
                    ConfirmBetFoSinglePlayer(playersBorders);
                }
                else
                {
                    ConfirmBetForTeam(playersBorders);
                }
            }                  
        }

        private void ConfirmBetFoSinglePlayer(List<Border> playersBorders)
        {
            string nameOfBorder;
            var playerInGameSide = playersInGame.Find(pl => pl.IdUser == userSingleton.IdUser);
            if (playerInGameSide != null && playerInGameSide.SideTeam == 1)
            {
                nameOfBorder = team1Name;
            }
            else
            {
                nameOfBorder = team2Name;
            }
            var currentPointsOfPlayer = playersBorders.Find(pla => pla.Name.Equals(nameOfBorder));
            if (pointsBet <= ((GameTeamCard)currentPointsOfPlayer).GetPoints() || pointsBet == 0)
            {
                ConfirmBet();
            }
        }

        private void ConfirmBetForTeam(List<Border> playersBorders)
        {
            var currentPointsOfPlayer = playersBorders.Find(pl => pl.Name.Equals("_" + userSingleton.IdUser.ToString()));
            if (currentPointsOfPlayer != null && pointsBet <= ((GamePlayerCard)currentPointsOfPlayer).GetPoints() || pointsBet == 0)
            {
                ConfirmBet();
            }
        }

        private void ConfirmBet()
        {
            try
            {
                GameServiceClient gameActionsCallBackClientProxy = new (new InstanceContext(this));
                gameActionsCallBackClientProxy.RenewGameCallBack(roomCode, userSingleton.IdUser);
                GameOperationsClient gameActionsClientProxy = new();
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
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
            answersOfQuestionBeingAsked = new List<AnswerPojo>() { finalQuestion.RightAnswer, finalQuestion.WrongOptionOne, finalQuestion.WrongOptionTwo, finalQuestion.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
            answerToCurrentQuestion = answersOfQuestionBeingAsked.Find(answer => answer.IdAnswer == finalQuestion.SpecificQuestionDetails.IdAnswerOfQuestion);
            bttFirstAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[0].EnglishAnswerDescription, answersOfQuestionBeingAsked[0].SpanishAnswerDescription);
            bttSecondAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[1].EnglishAnswerDescription, answersOfQuestionBeingAsked[1].SpanishAnswerDescription);
            bttThridAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[2].EnglishAnswerDescription, answersOfQuestionBeingAsked[2].SpanishAnswerDescription);
            bttFourAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answersOfQuestionBeingAsked[3].EnglishAnswerDescription, answersOfQuestionBeingAsked[3].SpanishAnswerDescription);
            StartTimer();
        } 

        public void SelectQuestion(QuestionCardInformation question)
        {            
            if (yourTurn == currentTurn)
            {               
                var answersQuestionsAsked = new List<AnswerPojo>() { question.RightAnswer, question.WrongOptionOne, question.WrongOptionTwo, question.WrongOptionThree }.OrderBy(order => Guid.NewGuid()).ToList();
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
                    GameOperationsClient gameActionsClientProxy = new();
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
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
                }
            }            
        }

        public void ResponseSomeOneSelectAQuestion(CurrentQuestionToShowContract questionToShow, int currentRound, int idUser)
        {
            this.currentRound = currentRound;
            QuestionCardInformation questionCard = currentQuestions.Find(quest => quest.SpecificQuestionDetails.IdQuestion == questionToShow.IdQuestion);
            if (questionCard != null)
            {
                questionBeingAsked = questionCard.SpecificQuestionDetails;
                grdAnswerChoices.Visibility = Visibility.Visible;
                grTimer.Visibility = Visibility.Visible;
                txbQuestion.Text = GetSpecificResource.GetEnglishOrSpanishDescription(questionCard.SpecificQuestionDetails.EnglishQuestionDescription, questionCard.SpecificQuestionDetails.SpanishQuestionDescription);
                List<AnswerPojo> answersForThisQuestion = new List<AnswerPojo>() { questionCard.RightAnswer, questionCard.WrongOptionOne, questionCard.WrongOptionTwo, questionCard.WrongOptionThree };
                answersOfQuestionBeingAsked = answersForThisQuestion.ToList();
                answerToCurrentQuestion = answersForThisQuestion.Find(ans => ans.IdAnswer == questionBeingAsked.IdAnswerOfQuestion);
                var answerbtt1 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFirstAnswer);
                bttFirstAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt1.EnglishAnswerDescription, answerbtt1.SpanishAnswerDescription);
                var answerbtt2 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdSecondAnswer);
                bttSecondAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt2.EnglishAnswerDescription, answerbtt2.SpanishAnswerDescription);
                var answerbtt3 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdThirdAnswer);
                bttThridAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt3.EnglishAnswerDescription, answerbtt3.SpanishAnswerDescription);
                var answerbtt4 = answersForThisQuestion.Find(answer => answer.IdAnswer == questionToShow.IdFourthAnswer);
                bttFourAnswer.Content = GetSpecificResource.GetEnglishOrSpanishDescription(answerbtt4.EnglishAnswerDescription, answerbtt4.SpanishAnswerDescription);
                StartTimer();
            }            
        }

        private void ClickSelectAnswer(object sender, RoutedEventArgs e)
        {            
            if (yourTurn == currentTurn || currentRound == ROUND_THREE)
            {
                var answerCardChoose = (Button)sender;
                try
                {
                    if (currentRound != ROUND_THREE)
                    {
                        ConfirmAnswer(answerCardChoose);
                    }
                    else
                    {
                        ConfirmLastQuestionAnswer(answerCardChoose);
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
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
                }
            }            
        }

        private void ConfirmAnswer(Button answerCardChoose)
        {           
            GameOperationsClient gameActionsClientProxy = new();
            var answerSelected = answersOfQuestionBeingAsked.Find(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerCardChoose.Content));
            if(answerSelected != null)
            {
                try
                {
                    gameActionsClientProxy.ChooseAnswer(roomCode, userSingleton.IdUser, answerSelected.IdAnswer, questionBeingAsked.ValueWorth, yourTurn);
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
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
                }
            }
            
        }

        private void ConfirmLastQuestionAnswer(Button answerCardChoose)
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
            GameOperationsClient gameActionsClientProxy = new();
            answerCardChoose.BorderBrush = new SolidColorBrush(Colors.Blue);
            bttFirstAnswer.IsEnabled = false;
            bttSecondAnswer.IsEnabled = false;
            bttThridAnswer.IsEnabled = false;
            bttFourAnswer.IsEnabled = false;
            txbAdvicement.Visibility = Visibility.Visible;
            try
            {
                gameActionsClientProxy.ConfirmLastQuestionAnswer(roomCode, playersInGame.Find(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
            }
            
        }

        public  async void ResponseSomeOneChooseAnAnswer(int idAnswerSelected, int idUserAnswering, int pointsWorth)
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
            await ShowResultOfAnswer(isCorrect, idAnswerSelected, pointsWorth.ToString());
            SumOrRestPoints(isCorrect, pointsWorth, idUserAnswering);            
            HideQuestion();
            AssureThereAreQuestions();
            cnvResultOfAwnser.Visibility = Visibility.Hidden;
            grTimer.Visibility = Visibility.Hidden;
        }

        private async Task ShowResultOfAnswer(bool isCorrect, int idAnswerSelected, string points)
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

        private void SumOrRestPoints(bool isCorrect, int points, int idUser)
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
                    specificTeam.UpdatePoints(points + specificTeam.GetPoints());
                    playersInGame.Where(pl => pl.SideTeam == playerChoosing.SideTeam).ToList().ForEach(pl => pl.CurrentPointsOfRound = specificTeam.GetPoints());
                }
            }
            else
            {
                playerChoosing.CurrentPointsOfRound -= points;
                if (itsTeamGame)
                {
                    specificTeam.UpdatePoints(specificTeam.GetPoints() - points);
                    playersInGame.Where(pl => pl.SideTeam == playerChoosing.SideTeam).ToList().ForEach(pl => pl.CurrentPointsOfRound = specificTeam.GetPoints());
                }
            }
            if (!itsTeamGame)
            {
                GamePlayerCard specificPlayer = (GamePlayerCard)stpPlayers.Children.OfType<Border>().FirstOrDefault(pla => pla.Name.Equals("_" + playerChoosing.IdUser.ToString()));
                if (specificPlayer != null)
                {
                    specificPlayer.UpdatePoints(playerChoosing.CurrentPointsOfRound);
                }
            }
        }


        private void HideQuestion()
        {
            var cardToHide = wrpBoardOfCards.Children.OfType<Border>().FirstOrDefault(card => card.Name.Equals("_" + questionBeingAsked.IdQuestion.ToString()));
            if (cardToHide != null)
            {
                cardToHide.IsEnabled = false;
            }
        }

        private void AssureThereAreQuestions()
        {
            if (currentTurn == yourTurn && wrpBoardOfCards.Children.OfType<Border>().Count(card => card.IsEnabled) <= 3)
            {
                try
                {
                    GameOperationsClient gameActionsClientProxy = new();
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
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
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
            var userTurn = playersInGame.Find(pla => pla.TurnOfPlayer == currentTurn);            
            List<Border> specificPlayer = stpPlayers.Children.OfType<Border>().ToList();
            if (itsTeamGame && userTurn != null)
            {
                ResaltTeamPlayersBorder(specificPlayer, userTurn);
            }
            else
            {
                ResaltSinglePlayerBorder(specificPlayer, userTurn);
            }
            ChangeColorOfTrunLigth();
        }

        private void ResaltSinglePlayerBorder(List<Border> specificPlayer, PlayerInGameDataContract userTurn)
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

        private void ResaltTeamPlayersBorder(List<Border> specificPlayer, PlayerInGameDataContract userTurn)
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

        private void ChangeColorOfTrunLigth()
        {
            if (yourTurn == currentTurn)
            {
                ellYourTurn.Fill = Brushes.Green;
            }
            else
            {
                ellYourTurn.Fill = Brushes.Gray;
            }
        }

        public async void ResponseBeginRound(int isYourTurn, int roundToStart, PlayerInGameDataContract[] playerInGam)
        {
            playersInGame = playersInGame.ToList();
            switch (roundToStart)
            {
                case 2:
                    currentRound = roundToStart;
                    await PrepareRoundTwo();
                    break;
                case 3:
                    currentRound = roundToStart;
                    await PrepareLastRound();
                    break;
            }
        }

        public void ResponseShowWinner(PlayerInGameDataContract[] playerInGame, int poinstWereSaved)
        {
            currentRound = 4;
            playersInGame = playerInGame.ToList();
            CreatePlayersScoresBoards();
            List<PlayerInGameDataContract> playersOredered = playerInGame.OrderByDescending(pl => pl.CurrentPointsOfRound).ToList();
            grdAnswerChoices.Visibility = Visibility.Hidden;
            grTimer.Visibility = Visibility.Hidden;
            grWinnerPanel.Visibility = Visibility.Visible;
            List<Border> playersBorders = stpPlayers.Children.OfType<Border>().ToList();
            SetPlayerInPositionSpots(playersBorders, playersOredered);  
            if(userSingleton.IdState != 3)
            {
                if (poinstWereSaved == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbGameFinish, Properties.Resources.GameFinished, Window.GetWindow(this), DialogWindowManager.INFORMATION);
                }
                else
                {
                    DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToSavePoinstAfterGame, Window.GetWindow(this), DialogWindowManager.ERROR);
                }
            }
            else
            {
                DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblGuestEndOfGame, Window.GetWindow(this), DialogWindowManager.INFORMATION);
            }
        }

        private  void SetPlayerInPositionSpots(List<Border> playerBorder, List<PlayerInGameDataContract> playerInGame)
        {            
            List<Border> pillarRectangles = new List<Border>() { brdFirstPlaceSpot, brdSecondPlaceSpot, brdtThirdPlaceSpot, brdForthPlacePlaceSpot}; 
            List<Border> borderPositions = new List<Border>() { brdFirstPlace, brdSecondPlace, brdThirdPlace, brdForthPlace};
            if (itsTeamGame)
            {
                var borderTeam1 = playerBorder.Find(pla => pla.Name.Equals(team1Name));
                var borderTeam2 = playerBorder.Find(pla => pla.Name.Equals(team2Name));
                var playersTeam1 = playerInGame.Find(pl => pl.SideTeam == 1);
                var playerTeam2 = playerInGame.Find(pl => pl.SideTeam == 2);
                if (playersTeam1 != null && playerTeam2 != null && borderTeam1 != null && borderTeam2 != null)
                {
                    if (playersTeam1.CurrentPointsOfRound >= playerTeam2.CurrentPointsOfRound)
                    {
                        borderTeam1.Margin = new Thickness(1, 1, 0, 0);
                        borderTeam2.Margin = new Thickness(240,100,0,0);
                        pillarRectangles[0].Background = borderTeam1.Background;
                        pillarRectangles[1].Background = borderTeam2.Background;
                    }
                    else
                    {
                        borderTeam1.Margin = new Thickness(1,1,0,0);
                        borderTeam2.Margin = new Thickness(240, 100, 0, 0); 
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
            }
            else
            {
                for (int i = playerInGame.Count - 1; i >= 0; i--)
                {
                    pillarRectangles[i].Visibility = Visibility.Visible;
                    int index = grWinnerPanel.Children.IndexOf(borderPositions[i]);
                    Border borderCopy;
                    borderCopy = playerBorder.Find(pla => pla.Name.Equals("_" + playerInGame[i].IdUser.ToString()));
                    if (borderCopy != null)
                    {
                        stpPlayers.Children.Remove(borderCopy);
                        borderCopy.Margin = borderPositions[i].Margin;
                        grWinnerPanel.Children.RemoveAt(index);
                        grWinnerPanel.Children.Insert(index, borderCopy);
                        pillarRectangles[i].Background = borderCopy.Background;
                    }
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
                if (currentRound != ROUND_THREE && grdAnswerChoices.IsVisible)
                {
                    ChooseWrongAnswer();
                }
            }
            else
            {
                timeLeft--;
            }
        }

        private void ChooseWrongAnswer()
        {
            string descriptionAnswerToQuestion = GetSpecificResource.GetEnglishOrSpanishDescription(answerToCurrentQuestion.EnglishAnswerDescription, answerToCurrentQuestion.SpanishAnswerDescription);
            Button answerButton = grdAnswerChoices.Children.OfType<Button>().FirstOrDefault(btt => !btt.Content.Equals(descriptionAnswerToQuestion));
            if (currentTurn == yourTurn && answerButton != null)
            {               
                try
                {
                   
                    if (currentRound != ROUND_THREE)
                    {
                        ConfirmWrongAnswer(answerButton);
                    }
                    else
                    {
                        ConfirmWrongLastQuestionAnswer(answerButton);
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
                catch (SocketException ex)
                {
                    HandleException(ex, Properties.Resources.lblFailToStartGame + " : " + Properties.Resources.lblEndPointNotFound);
                }
            }
        }


        private void ConfirmWrongAnswer(Button answerButton)
        {
            try
            {
                GameOperationsClient gameActionsClientProxy = new();
                var answerSelected = answersOfQuestionBeingAsked.Find(anw => GetSpecificResource.GetEnglishOrSpanishDescription(anw.EnglishAnswerDescription, anw.SpanishAnswerDescription).Equals(answerButton.Content));
                if (answerSelected != null)
                {
                    gameActionsClientProxy.ChooseAnswer(roomCode, userSingleton.IdUser, answerSelected.IdAnswer, questionBeingAsked.ValueWorth, yourTurn);
                }
            }
            catch (EndpointNotFoundException ex)
            {
                throw new EndpointNotFoundException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                throw new CommunicationObjectFaultedException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (TimeoutException ex)
            {
                throw new TimeoutException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (CommunicationException ex)
            {
                throw new CommunicationException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (SocketException)
            {
                throw new SocketException(); 
            }
        }

        private void ConfirmWrongLastQuestionAnswer(Button answerButton)
        {           
            try
            {
                GameOperationsClient gameActionsClientProxy = new();
                bool isCorrect = false;
                answerButton.BorderBrush = new SolidColorBrush(Colors.Blue);
                bttFirstAnswer.IsEnabled = false;
                bttSecondAnswer.IsEnabled = false;
                bttThridAnswer.IsEnabled = false;
                bttFourAnswer.IsEnabled = false;
                txbAdvicement.Visibility = Visibility.Visible;
                gameActionsClientProxy.ConfirmLastQuestionAnswer(roomCode, playersInGame.Find(pla => pla.IdUser == userSingleton.IdUser), pointsBet, isCorrect);
            }
            catch (EndpointNotFoundException ex)
            {
                throw new EndpointNotFoundException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                throw new CommunicationObjectFaultedException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (TimeoutException ex)
            {
                throw new TimeoutException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (CommunicationException ex)
            {
                throw new CommunicationException(Properties.Resources.lblFailToChooseAnswer, ex);
            }
            catch (SocketException)
            {
                throw new SocketException();
            }
        }

        private void ClickLeaveGame(object sender, MouseButtonEventArgs e)
        {
            if(currentRound == 4)
            {
                CloseWindow();
            }
            else if(DialogWindowManager.ShowWindowConfirmation(Properties.Resources.txbWarningTitle, Properties.Resources.LeaveGameConfirmation, Window.GetWindow(this)))
            {
                NotifyLeavingGame();
                CloseWindow();
            }
            
        }
        private void CloseWindow()
        {
            if(timer != null)
            {
                timer.Stop();
            }
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
                GameOperationsClient gameActionsClientProxy = new();
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
            catch (SocketException ex)
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
                    if (itsTeamGame)
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblFinishGameBecauseOfTeamLeft, Window.GetWindow(this), DialogWindowManager.INFORMATION);
                    }
                    else
                    {
                        DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblFinishGameBecauseJustOnePlayer, Window.GetWindow(this), DialogWindowManager.INFORMATION);
                    }
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
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
            catch (SocketException ex)
            {
                HandleException(ex, Properties.Resources.lblEndPointNotFound);
            }
            UserSingleton.CleanSingleton();
        }


        private void ClickOpenChat(object sender, MouseButtonEventArgs e)
        {
            teamChat.RenewCallBackChannel();
            grdChat.Visibility = Visibility.Visible;
            frmChat.Content = teamChat;
        }

        public void CloseLiveChat()
        {
            grdChat.Visibility = Visibility.Collapsed;
        }

        public void ReceiveMessageTeamChat(GenericClassOfMessageChatxY0a3WX4 message)
        {
            ((IChatForTeamsServiceCallback)teamChat).ReceiveMessageTeamChat(message);
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            DialogWindowManager.ShowInfoOrErrorWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow, DialogWindowManager.ERROR);
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
