using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesSevices
{
    [ServiceContract]
    public interface IQuestionsManager
    {
        [OperationContract]
        IDictionary<string, object> GetQuestionByValue(int value, int categoryId);

        [OperationContract]
        GenericClass<bool> CheckAnswer(int questionId, string selectedAnswer);
    }
}
