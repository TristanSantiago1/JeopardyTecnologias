using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace JeopardyGame.Helpers
{
    public class Exceptions
    {

    }
    public class ExceptionDictionary
    {
        public const int SUCCESFULL_EVENT = -100;
        public const int UNSUCCESFULL_EVENT = -99;
        public const int NULL_PARAEMETER = -200;
        public const int ARGUMENT_NULL = -210;
        public const int ARGUMENT_OUT_OF_RANGE_EXCEPTION = -211;
        public const int FORMMAT_EXCEPTION = -212;
        public const int RANK_EXCEPTION = -213;
        public const int EMAIL_FORMAT_INVALID = -219;
        public const int INVALID_OPERATION = -220;
        public const int NO_DB_CONECTION = -300;
        public const int SAVE_CHANGES_ERROR = -310;
        public const int SQL_ERROR = -350;
        public const int ENTITY_ERROR = -360;
        public const int SMTP_EXCEPTION = -400;
        public const int UNKOWN_EXCEPTION_OCURRED = -500;
    }

    public class ExceptionHandler
    {
        public static void HandleException(int codeException, String message)
        {
            switch (codeException)
            {               
                case ExceptionDictionary.ENTITY_ERROR:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle,Properties.Resources.MessageEntityException);
                    break;
                case ExceptionDictionary.SQL_ERROR:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.MessageSQLException);
                    break;              
                case ExceptionDictionary.NO_DB_CONECTION:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.MessageSQLException);
                    break;
                case ExceptionDictionary.UNSUCCESFULL_EVENT:
                    ShowErrorMessage("j", "k");
                    break;
                case ExceptionDictionary.NULL_PARAEMETER:
                    break;                
                case ExceptionDictionary.SMTP_EXCEPTION:
                    break;              
                default:
                    break;                
            }
        }
    

        private static void ShowErrorMessage(String title, String message)
        {
            new DialogWindows.ErrorMessageDialogWindow(title, message, Application.Current.MainWindow);          
        }

    }

}
