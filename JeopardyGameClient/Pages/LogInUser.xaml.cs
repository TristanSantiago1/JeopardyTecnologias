using JeopardyGame.Views;
using System.Windows;
using System.Windows.Controls;

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

            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(password))
            {
                LblWrongUserName.Content = string.IsNullOrEmpty(userName) ? "Please enter a username" : "";
                lblPasswordWrong.Content = string.IsNullOrEmpty(password) ? "Please enter a password" : "";
                return;
            }

            ServidorServiciosJeopardy.UserManagerClient proxyServer = new ServidorServiciosJeopardy.UserManagerClient();

            ServidorServiciosJeopardy.UserValidate userValidate = new ServidorServiciosJeopardy.UserValidate
            {
                UserName = userName,
                Password = password
            };

            int result = proxyServer.validateCredentials(userValidate);

            proxyServer.Close();

            if (result == 1)
            {
                Lobby lobbyJeopardy = new Lobby();
                lobbyJeopardy.Show();
                Window principalWindow = Application.Current.MainWindow;
                principalWindow.Close();

            }
            else if (result == 0)
            {
                MessageBox.Show("Invalid credentials, please try again");
            }

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
