using JeopardyGame.Views;
using System;
using System.Collections.Generic;
using System.Linq;
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
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : Page
    {
        public LogInUser()
        {
            InitializeComponent();
        }

        private void txbUserNameCreateAcc_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void CLicButtonEnterAccount(object sender, RoutedEventArgs e)
        {
            string userName = txbUserNameLogIn.Text;
            string password = PssPasswordLogIn.Password;

            if(!string.IsNullOrWhiteSpace(userName) && !string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Welcome to Jeopardy");
            }
            else
            {
                LblWrongUserName.Content = string.IsNullOrWhiteSpace(userName) ? "Please enter your username" : "";
                lblPasswordWrong.Content = string.IsNullOrWhiteSpace(password) ? "Please enter your password" : "";

            }
           /* bool isValid = UserManagerService.ValidateCredentials(userName, password);

            if (isValid)
            {
                MessageBox.Show("¡Bienvenido a Jeopardy!");
            }
            else
            {
                MessageBox.Show("Credenciales incorrectas. Por favor, inténtelo de nuevo.");
            }*/
        }
        private void CLicButtonRegister(object sender, RoutedEventArgs e)
        {
            UserManagerWindow userManagerWindow = new UserManagerWindow();
            userManagerWindow.Show();
            Window principalWindow = Application.Current.MainWindow;
            principalWindow.Close();
        }
    }
}
