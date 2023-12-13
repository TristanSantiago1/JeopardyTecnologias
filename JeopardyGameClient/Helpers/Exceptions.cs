using JeopardyGame.Pages;
using JeopardyGame.ServidorServiciosJeopardy;
using JeopardyGame.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Navigation;
using Application = System.Windows.Application;
using MainMenu = JeopardyGame.Pages.MainMenu;

namespace JeopardyGame.Helpers
{
    public static class ExceptionDictionary
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

    public static class ExceptionHandler
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
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, message);
                    break;
                case ExceptionDictionary.NULL_PARAEMETER:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.MessageEntityException);
                    break;                
                case ExceptionDictionary.SMTP_EXCEPTION:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.GenericEmailIssue);
                    break;              
                default:
                    ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.MessageEntityException);
                    break;                
            }
        }

        public static void HandleCommunicationException(String message, Window currentWindow, bool needToReload)
        {

            ShowErrorMessage(Properties.Resources.txbErrorTitle, Properties.Resources.ServerErrorMessage);
            if (needToReload)
            {
                GotoLogin(currentWindow);
            }
            else
            {
                GotoMainMenu((PrincipalWindow)currentWindow);
            }
        }

        private static void GotoLogin(Window currentWindow)
        {
            PrincipalWindow principalWindow = new PrincipalWindow();
            principalWindow.Show();
            currentWindow.Close();
        }

        private static void GotoMainMenu(PrincipalWindow currentWindow)
        {
            MainMenu menu = new MainMenu(); 
            currentWindow.contentFrame.NavigationService.Navigate(menu);
            currentWindow.contentFrame.NavigationService.RemoveBackEntry();
        }

        private static void ShowErrorMessage(String title, String message)
        {
            Window dialogMessage = new DialogWindows.ErrorMessageDialogWindow(title, message, Application.Current.MainWindow);          
        }

    }

}
