using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.DataDictionaries
{
    public static class QuestionsForLobbyDictionary
    {
        private static Dictionary<int, GenericClass<List<QuestionCardInformation>>> questionsForLobby = new Dictionary<int, GenericClass<List<QuestionCardInformation>>>();

        public static void RegisterNewSetOfQuestionsInDictionary(int roomCode, GenericClass<List<QuestionCardInformation>> questionsSelected)
        {
            if (roomCode != 0 && questionsSelected != null && !questionsForLobby.ContainsKey(roomCode))
            {
                questionsForLobby.Add(roomCode, questionsSelected);
            }
        }

        public static GenericClass<List<QuestionCardInformation>> GetSpecificSetOfQuestionsForLobby(int roomCode)
        {
            if (roomCode != 0)
            {
                foreach (var question in questionsForLobby)
                {
                    if (question.Key == roomCode)
                    {
                        return question.Value;
                    }
                }
            }
            return null;
        }
        public static void RemoveSetOFQuestionsFromDictionary(int roomCode)
        {
            if (roomCode != 0 && questionsForLobby.ContainsKey(roomCode))
            {
                questionsForLobby.Remove(roomCode);
            }
        }
        public static Dictionary<int, GenericClass<List<QuestionCardInformation>>> GetAllActiveSetsOfQuestions()
        {
            return questionsForLobby;
        }
    }
}
