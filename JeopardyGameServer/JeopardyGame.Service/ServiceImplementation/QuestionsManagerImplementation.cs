using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.ServiceImplementation
{
    public partial class QuestionsManagerImplementation : IQuestionsManager
    {
        public readonly HashSet<int> usedQuestionIds = new HashSet<int>();
        public GenericClass<bool> CheckAnswer(int questionId, string selectedAnswer)
        {
            GenericClass<bool> resultToReturn = new GenericClass<bool>();

            if (string.IsNullOrEmpty(selectedAnswer))
            {
                return NullParametersHandler.HandleNullParametersService(resultToReturn);
            }

            using (var contextBD = new JeopardyDBContainer())
            {
                var question = contextBD.Questions.Find(questionId);

                if (question != null && selectedAnswer == question.RigthAwnser)
                {
                    resultToReturn.ObjectSaved = true;
                    resultToReturn.CodeEvent = ExceptionDictionary.SUCCESFULL_EVENT;
                    return resultToReturn;
                }
            }

            resultToReturn.ObjectSaved = false;
            resultToReturn.CodeEvent = ExceptionDictionary.UNSUCCESFULL_EVENT;
            return resultToReturn;

        }
        public IDictionary<string, object> GetQuestionByValue(int value, int categoryId)
        {
            IDictionary<string, object> dict = new Dictionary<string, object>();
            try
            {
                using (var contextBD = new JeopardyDBContainer())
                {
                    var random = new Random();
                    var availableQuestions = contextBD.Questions
                        .Where(q => q.ValueWorth == value &&
                         q.Awnsers.Any(a => a.Category.IdCategory == categoryId))
                            .ToList();



                    if (availableQuestions.Any())
                    {
                        var randomIndex = random.Next(0, availableQuestions.Count);
                        var selectedQuestion = availableQuestions[randomIndex];

                        usedQuestionIds.Add(selectedQuestion.IdQuestion);

                        IDictionary<string, object> questionData = new Dictionary<string, object>
                    {
                        { "Id", selectedQuestion.IdQuestion },
                        { "Description", selectedQuestion.EnglishQuestionDescription },
                        { "CorrectAnswer", selectedQuestion.RigthAwnser }
                    };

                        dict = questionData;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al buscar la pregunta: " + ex.Message);
            }
            return dict;

        }
    }
}
    

