using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace JeopardyGame.DialogWindows
{
    public static class DialogWindowManager
    {
        private  const int _ERROR = 1;
        private const int _INFORMATION = 2;
        private const int _CONFIRMATION = 3;

        public static int ERROR => _ERROR;

        public static int INFORMATION => _INFORMATION;

        public static int CONFIRMATION => _CONFIRMATION;

        public static void ShowInfoOrErrorWindow(string title, string message, Window windowToShowOver, int typeDilog)
        {
            if (windowToShowOver != null)
            {
                Window window;
                if (typeDilog == ERROR)
                {
                   window = new ErrorMessageDialogWindow(title, message, windowToShowOver);               
                }
                else
                {
                    window = new InformationMessageDialogWindow(title, message, windowToShowOver);
                }
                ShowWindow(windowToShowOver, window);
            }
        }


        public static bool ShowWindowConfirmation(string title, string message, Window windowToShowOver)
        {
            ConfirmationDialogWindow window = new ConfirmationDialogWindow(title, message, windowToShowOver);
            ShowWindow(windowToShowOver, window);
            return window.CloseWindow;            
        }

        private static  void ShowWindow(Window mainWindow, Window dialogWindow)
        {
            if (mainWindow != null)
            {
                double left = mainWindow.Left + (mainWindow.Width - dialogWindow.Width) / 2;
                double top = mainWindow.Top + (mainWindow.Height - dialogWindow.Height) / 2;
                dialogWindow.Left = left;
                dialogWindow.Top = top;
                dialogWindow.VerticalAlignment = VerticalAlignment.Center;
                dialogWindow.ShowDialog();
            }
        }

    }
}
