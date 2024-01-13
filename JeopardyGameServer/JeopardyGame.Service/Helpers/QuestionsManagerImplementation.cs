using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data.Helpers;
using JeopardyGame.Service.DataDictionaries;
using JeopardyGame.Service.Helpers;
using JeopardyGame.Service.InterpretersEntityPojo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using static JeopardyGame.Service.DataDictionaries.ActiveGamesDictionary;

namespace JeopardyGame.Service.ServiceImplementation
{
    public static class QuestionsManagerImplementation
    {
        private const int SPECIAL_CATEGORY = 1;
        private const int ROUND_ONE = 1;
        private const int ROUND_TWO = 2;
        private const int ROUND_THREE = 3;
        private const int ID_LAST_QUESTION = 19;
        private const int LIMIT_OF_CARDS_FOR_ONE_ROUND = 9;

        public static  GenericClass<List<QuestionCardInformation>> GetQuestionForBoard(int roomCode)
        {
            GenericClass<List<QuestionCardInformation>> resultToReturn = new GenericClass<List<QuestionCardInformation>>();
            if (!RoomCodeExist(roomCode))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }
            int isGameCreated = CreateGame(roomCode);
            if (isGameCreated == CodesDictionary.SUCCESFULL_EVENT)
            {
                var questionCardsInformation = GetQuestionInformation();               
                resultToReturn.ObjectSaved = questionCardsInformation.ObjectSaved;
                resultToReturn.CodeEvent = questionCardsInformation.CodeEvent;                
            }
            else
            {
                resultToReturn.CodeEvent = isGameCreated;
            }
            return resultToReturn;
        }

        private static int CreateGame(int roomCode)
        {
            Game newGame = new()
            {
                RoomCode = roomCode,
                Host_IdHost = ChoseHost()
            };
            return GameDataOperation.SaveNewGameInDataBase(newGame).CodeEvent;
        }

        private static int ChoseHost()
        {
            var idHosts = GameDataOperation.GetHostIds();
            if (idHosts.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                int idHost = idHosts.ObjectSaved.OrderBy(h => AleatoryGenerator.GetAleatoryNumber()).First();
                return idHost;
            }
            return idHosts.CodeEvent;
        }

        private static bool RoomCodeExist(int roomCode)
        {
            var lobby = ActiveLobbiesDictionary.GetSpecificActiveLobby(roomCode);            
            return (lobby != null); 
        }

        private static GenericClassServer<List<QuestionCardInformation>> GetQuestionInformation()
        {           
            GenericClassServer<List<QuestionCardInformation>> listOfQuestions = new GenericClassServer<List<QuestionCardInformation>>();
            GenericClassServer<List<Category>> categoriesConsulted = GameDataOperation.Get10Categories();
            if (categoriesConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                var questionPool = GameDataOperation.GetQuestionsByCategory(categoriesConsulted.ObjectSaved);
                if (questionPool.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                {
                    var answerPool = GameDataOperation.GetAwnsersOfQuestions(questionPool.ObjectSaved);
                    if (answerPool.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
                    {
                        listOfQuestions.ObjectSaved = OrderQuestionsInCards(questionPool.ObjectSaved);
                        listOfQuestions.ObjectSaved = OrderAnswersInCards(answerPool.ObjectSaved, listOfQuestions.ObjectSaved);
                        listOfQuestions.CodeEvent = CodesDictionary.SUCCESFULL_EVENT;
                    }
                    else
                    {
                        listOfQuestions.CodeEvent = answerPool.CodeEvent; 
                    }
                }
                else 
                {
                    listOfQuestions.CodeEvent =questionPool.CodeEvent;
                }
            }
            else
            {
                listOfQuestions.CodeEvent = categoriesConsulted.CodeEvent;
            }
            return listOfQuestions;
        }

        private static List<QuestionCardInformation> OrderQuestionsInCards(List<Question> questionPool)
        {
            List<QuestionCardInformation> questionCardInformation = new List<QuestionCardInformation>();
            int iterator = 1;
            foreach (var question in questionPool)
            {
                if (question.CategoryIdCategory != SPECIAL_CATEGORY)
                {
                    QuestionCardInformation questionCard = new QuestionCardInformation()
                    {
                        IdQuestionCard = iterator,
                        NumberOfRound = SetNumberOfRound(iterator),
                        CategoryOfQuestion = QuestionsInterpreter.FromCategoryToCategoryPOJO(question.Category),
                        SpecificQuestionDetails = new()
                        {
                            IdQuestion = question.IdQuestion,
                            SpanishQuestionDescription = question.SpanishQuestionDescription,
                            EnglishQuestionDescription = question.EnglishQuestionDescription,
                            IdAnswerOfQuestion = question.Awnser.IdAwnser,
                            IdCategoryBelong = question.CategoryIdCategory,                            
                            ValueWorth = (int)question.ValueWorth
                        }                        
                    };
                    if(questionCard.NumberOfRound == ROUND_TWO)
                    {
                        questionCard.SpecificQuestionDetails.ValueWorth = 2 * ((int)(question.ValueWorth));
                    }
                    questionCardInformation.Add(questionCard);
                    iterator++;
                }                               
            }
            Question specialQuestion = questionPool.First(question => question.CategoryIdCategory == SPECIAL_CATEGORY);
            QuestionCardInformation specialQuestionCard = new QuestionCardInformation()
            {
                IdQuestionCard = ID_LAST_QUESTION,
                NumberOfRound = ROUND_THREE,
                CategoryOfQuestion = QuestionsInterpreter.FromCategoryToCategoryPOJO(specialQuestion.Category),
                SpecificQuestionDetails = new()
                 {
                    IdQuestion = specialQuestion.IdQuestion,
                    SpanishQuestionDescription = specialQuestion.SpanishQuestionDescription,
                    EnglishQuestionDescription = specialQuestion.EnglishQuestionDescription,
                    IdAnswerOfQuestion = specialQuestion.Awnser.IdAwnser,
                    IdCategoryBelong = specialQuestion.CategoryIdCategory,
                    ValueWorth = (int)specialQuestion.ValueWorth 
                }
            };
            questionCardInformation.Add(specialQuestionCard);
            return questionCardInformation;
        }

        private static List<QuestionCardInformation> OrderAnswersInCards(List<Awnser> answerPool, List<QuestionCardInformation> questionCardInformation)
        {
            foreach (var questionCard in questionCardInformation)
            {
                var answersOfQuestion = answerPool.Where(answer => answer.CategoryIdCategory  == questionCard.SpecificQuestionDetails.IdCategoryBelong).ToList();
                questionCard.RightAnswer = QuestionsInterpreter.FromAnswerToAnswerPOJO(answersOfQuestion.Find(
                    answer => answer.IdAwnser == questionCard.SpecificQuestionDetails.IdAnswerOfQuestion));
                answersOfQuestion.Remove(answersOfQuestion.Find(answer => answer.IdAwnser == questionCard.SpecificQuestionDetails.IdAnswerOfQuestion));
                questionCard.WrongOptionOne = QuestionsInterpreter.FromAnswerToAnswerPOJO(answersOfQuestion[0]);
                answersOfQuestion.Remove(answersOfQuestion[0]);
                questionCard.WrongOptionTwo = QuestionsInterpreter.FromAnswerToAnswerPOJO(answersOfQuestion[0]);
                answersOfQuestion.Remove(answersOfQuestion[0]);
                questionCard.WrongOptionThree = QuestionsInterpreter.FromAnswerToAnswerPOJO(answersOfQuestion[0]);
            }            
            return questionCardInformation;
        }

        private static int SetNumberOfRound(int iterator)
        {
            if (iterator <= LIMIT_OF_CARDS_FOR_ONE_ROUND)
            {
                return ROUND_ONE;
            }
            else
            {
                return ROUND_TWO;
            }
        }

        public static int RegistryGamePlayers(int roomCode, List<PlayerPlayingInGame> playerInGames)
        {            
            int result = CodesDictionary.SUCCESFULL_EVENT;
            var gameConsulted = GameDataOperation.GetGameByRoomCode(roomCode);
            if (gameConsulted.CodeEvent == CodesDictionary.SUCCESFULL_EVENT)
            {
                foreach (var player in playerInGames)
                {
                    if (!GuestPlayerManagerImplementation.IsUserNameInBlackList(player.UserName))
                    {
                        GamePlayer gamePlayer = new()
                        {
                            PointsInGame = player.FinalPoints,
                            PlaceInGame = (short)player.NumberOfPlayerInGame,
                            Player_IdPlayer = player.IdPlayer,
                            Game_RoomCode = roomCode,
                            Game = gameConsulted.ObjectSaved,
                        };
                        int isSaved = GameDataOperation.SaveGamePlayerInDataBase(gamePlayer);
                        if (isSaved != CodesDictionary.SUCCESFULL_EVENT)
                        {
                            result = isSaved;
                        }
                    }
                }               
            }
            else
            {
                result = gameConsulted.CodeEvent;
            }
            return result;
        }

    }
}
    

