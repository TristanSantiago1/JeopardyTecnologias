using JeopardyGame.Views;
using Microsoft.Win32;
using System.Windows;
using System.Windows.Controls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para LogInUser.xaml
    /// </summary>
    public partial class LogInUser : System.Windows.Controls.Page
    {
        public LogInUser()
        {
            InitializeComponent();
            RegistryKey key = Registry.CurrentUser.OpenSubKey("Software\\JeopardyGame");
            if (key != null)
            {
                string selectedLanguage = key.GetValue("SelectedLanguage") as string;
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(selectedLanguage);

                foreach (ComboBoxItem item in LanguajeComboBox.Items)
                {
                    if (item.Tag.ToString() == selectedLanguage)
                    {
                        LanguajeComboBox.SelectedItem = item;
                        break;
                    }
                }
            }
        }

        private void txbUserNameCreateAcc_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void CLicButtonEnterAccount(object sender, RoutedEventArgs e)
        {
            string userName = txbUserNameLogIn.Text;
            string password = PssPasswordLogIn.Password;

            if (string.IsNullOrEmpty(userName))
            {
                LblWrongUserName.Content = JeopardyGame.Properties.Resources.LblWrongUserName;
                LblWrongUserName.Visibility = Visibility.Visible;
            }
            else
            {
                LblWrongUserName.Visibility = Visibility.Collapsed;
            }


            if (string.IsNullOrEmpty(password))
            {
                lblPasswordWrong.Content = JeopardyGame.Properties.Resources.lblPasswordWrong;
                lblPasswordWrong.Visibility = Visibility.Visible;
            }
            else
            {
                lblPasswordWrong.Visibility = Visibility.Collapsed;
            }

            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(password))
            {
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
                MainMenu mainMenuPage = new MainMenu();
                this.NavigationService.Navigate(mainMenuPage);
                NavigationService.RemoveBackEntry();
              
            }
            else if (result == 0)
            {
                MessageBox.Show("Invalid credentials, please try again");
            }

        }
        private void CLicButtonRegister(object sender, RoutedEventArgs e)
        {
            UserRegister userRegistrerPage = new UserRegister();
            this.NavigationService.Navigate(userRegistrerPage);
            NavigationService.RemoveBackEntry();
        
        }

        private void LanguageComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (LanguajeComboBox.SelectedItem != null)
            {
                ComboBoxItem selectedItem = (ComboBoxItem)LanguajeComboBox.SelectedItem;
                string selectedLanguage = selectedItem.Tag.ToString();
                App.ChangeLanguaje(selectedLanguage);
                RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
                key.SetValue("SelectedLanguage", selectedLanguage);
                key.Close();

                if (selectedLanguage == "es-MX")
                {
                    lblUserNameLogIn.Content = JeopardyGame.Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = JeopardyGame.Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = JeopardyGame.Properties.Resources.btnEnter;
                    btnRegistrer.Content = JeopardyGame.Properties.Resources.btnRegistrer;
                }
                else if (selectedLanguage == "en-EU")
                {
                    lblUserNameLogIn.Content = JeopardyGame.Properties.Resources.lblUserNameLogIn;
                    lblPasswordLogIn.Content = JeopardyGame.Properties.Resources.lblPasswordLogIn;
                    btnEnter.Content = JeopardyGame.Properties.Resources.btnEnter;
                    btnRegistrer.Content = JeopardyGame.Properties.Resources.btnRegistrer;

                }

            }

        }
        
        
    }
}
