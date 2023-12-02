using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterpretersEntityPojo
{
    public static class QuestionsInterpreter
    {
        public static QuestionPOJO FromQuestionToQuestionPOJO(Question question)
        {
            if (question == null)
            {
                return null;
            }
            QuestionPOJO questionPOJO = new()
            {
                IdQuestion = question.IdQuestion,
                SpanishQuestionDescription = question.SpanishQuestionDescription,
                EnglishQuestionDescription = question.EnglishQuestionDescription,
                IdAnswerOfQuestion = question.Awnser.IdAwnser,
                IdCategoryBelong = question.CategoryIdCategory
            };
            return questionPOJO;
        }

        public static AnswerPOJO FromAnswerToAnswerPOJO(Awnser awnser)
        {
            if (awnser == null)
            {
                return null;
            }
            AnswerPOJO answerPojo = new()
            {
                IdAnswer = awnser.IdAwnser,
                SpanishAnswerDescription = awnser.SpanishAwnserDescription,
                EnglishAnswerDescription = awnser.EnglichAwnserDescription,
                IdCategory = awnser.CategoryIdCategory,
            };
            return answerPojo;
        }

        public static CategoryPOJO FromCategoryToCategoryPOJO(Category category) 
        {
            if (category == null)
            {
                return null;
            }
            CategoryPOJO categoryPOJO = new()
            {
                IdCategory = category.IdCategory,
                SpanishCategoryDescription = category.SpanishCategoryDescription,
                EnglishCategoryDescription = category.EnglishCategoryDescription,
            };
            return categoryPOJO;
        }


    }
}
