using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para EditUserProfile.xaml
    /// </summary>
    public partial class EditUserProfile : Page
    {
        public EditUserProfile()
        {
            InitializeComponent();
            DisplayUserInfo(txbEditName, txbEditUserName, txbEditEmail);
        }
        public static void DisplayUserInfo(TextBox txbEditName, TextBox txbEditUserName, TextBox txbEditEmail)
        {
            txbEditUserName.IsReadOnly = true;
            txbEditEmail.IsReadOnly = true;
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            txbEditName.Text = userSingleton.Name; 
            txbEditUserName.Text = userSingleton.UserName; 
            txbEditEmail.Text = userSingleton.Email;

        }

        private void CLicButtonChoseImage(object sender, RoutedEventArgs e)
        {

        }

        private void CLicButtonSaveChanges(object sender, RoutedEventArgs e)
        {
            String nameEdited = txbEditName.Text;
            String originalName = UserSingleton.GetMainUser().Name;
            UserManagerClient proxyServer = new UserManagerClient();
            var  result = proxyServer.UpdateUserInformation(nameEdited, originalName);
            if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                new InformationMessageDialogWindow("EXITO","Se ha guardado los cmabiso del ususario",Application.Current.MainWindow);
            }
            else
            {
                ExceptionHandler.HandleException(result.CodeEvent, "Mensaje");
                new ErrorMessageDialogWindow("ERROR", "No see ha pordido guardar los cmabiso del ususario", Application.Current.MainWindow);
            }
            proxyServer.Close();
        }

        private void CLicButtonCancelChanges(object sender, RoutedEventArgs e)
        {
            if (new ConfirmationDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.txbWarningMessCloseWin, Application.Current.MainWindow).CloseWindow)
            {
                CloseWindow();
            }
        }

        private void CloseWindow()
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();            
        }
    }
}
