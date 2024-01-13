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
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(subject) || string.IsNullOrEmpty(bodyMessage))
            {
                return CodesDictionary.NULL_PARAEMETER;
            }
            var smtpClient = new SmtpClient(Properties.Resources.smptGmail, 587)
            {
                EnableSsl = true,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(Properties.Resources.JeopardyEmail, Properties.Resources.JeopardyPassword)

            };
            try
            {
                Task success = smtpClient.SendMailAsync(new MailMessage(from: Properties.Resources.JeopardyEmail, to: email, subject, bodyMessage));
                if (success != null)
                {
                    resultToReturn = CodesDictionary.SUCCESFULL_EVENT;
                   
                }
                else
                {
                    resultToReturn = CodesDictionary.UNSUCCESFULL_EVENT;
                    
                }
            }
            catch (ArgumentNullException ex)
            {

                GenericClassServer<int> result = new GenericClassServer<int>();
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (ArgumentOutOfRangeException ex)
            {
                GenericClassServer<int> result = new GenericClassServer<int>();
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (FormatException ex)
            {
                GenericClassServer<int> result = new GenericClassServer<int>();
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (ArgumentException ex)
            {
                GenericClassServer<int> result = new GenericClassServer<int>();
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }
            catch (SmtpException ex)
            {
                GenericClassServer<int> result = new GenericClassServer<int>();
                resultToReturn = ExceptionHandler.HandleExceptionDataAccesLevel(result, ex).CodeEvent;
                ExceptionHandler.LogException(ex, CodesDictionary.FATAL_EXCEPTION);
            }           
            return resultToReturn;
        }

    }
}
