using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.Helpers
{
    public static class EmailSender
    {

        public static  int SentEmail(String email, String subject, String bodyMessage)
        {
            int resultToReturn;
            GenericClassServer<int> result = new GenericClassServer<int>();
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(subject) || string.IsNullOrEmpty(bodyMessage))
            {
                return ExceptionDictionary.NULL_PARAEMETER;
            }
            var smtpClient = new SmtpClient("smtp.Gmail.com", 587)
            {
                EnableSsl = true,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("jeopardy.tec@Gmail.com", "lqen ymkw itqt rrmn")//Pasar estas credenciales a un appconfig o properties
            };

            try
            {
                Task success = smtpClient.SendMailAsync(new MailMessage(from: "jeopardy.tec@Gmail.com", to: email, subject, bodyMessage));
                if (success != null)
                {
                    return ExceptionDictionary.SUCCESFULL_EVENT;
                   
                }
                else
                {
                    return ExceptionDictionary.UNSUCCESFULL_EVENT;
                    
                }
            }
            catch (ArgumentNullException ex)
            {
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (ArgumentOutOfRangeException ex)
            {
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (FormatException ex)
            {
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (ArgumentException ex)
            {
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }
            catch (SmtpException ex)
            {
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            }           
            return resultToReturn;
        }

    }
}
