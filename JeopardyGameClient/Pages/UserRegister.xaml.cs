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
    /// Lógica de interacción para UserRegister.xaml
    /// </summary>
    public partial class UserRegister : Page
    {
        public UserRegister()
        {
            InitializeComponent();
            List<Label> ListBoxRules = CreateRuleLabels();
            foreach (var rule in ListBoxRules)
            {
                lsbPasswordRules.Items.Add(rule);
            }
        }

        private int CheckEmptyFields()
        {
            if (txbNameCreateAcc.Text.Trim().Length == 0 || txbUserNameCreateAcc.Text.Trim().Length == 0 ||
               txbEmailCreateAcc.Text.Trim().Length == 0 || txbPasswordCreateAcc.Text.Trim().Length == 0)
            {
                return 0;
            }
            return 1;
        }
        private int CheckPassword()
        {
            String passwordChecked = txbPasswordCreateAcc.Text.Trim();
            // if (passwordChecked.Length < 10) ResaltBrokenRule(Label );
            return 1;
        }
        private List<Label> CreateRuleLabels()
        {
            Label PasswordLengthRule = new Label(); PasswordLengthRule.Content = "Reglas 1";
            PasswordLengthRule.Foreground = Brushes.White; PasswordLengthRule.FontSize = 10;
            Label PasswordNumbershRule = new Label(); PasswordNumbershRule.Content = "Reglas 1";
            PasswordNumbershRule.Foreground = Brushes.White; PasswordNumbershRule.FontSize = 10;
            Label PasswordCapitalsRule = new Label(); PasswordCapitalsRule.Content = "Reglas 1";
            PasswordCapitalsRule.Foreground = Brushes.White; PasswordCapitalsRule.FontSize = 10;
            Label PasswordPuntuationRule = new Label(); PasswordPuntuationRule.Content = "Reglas 1";
            PasswordPuntuationRule.Foreground = Brushes.White; PasswordPuntuationRule.FontSize = 10;
            Label PasswordSameEmailRule = new Label(); PasswordSameEmailRule.Content = "Reglas 1";
            PasswordSameEmailRule.Foreground = Brushes.White; PasswordSameEmailRule.FontSize = 10;
            List<Label> passwordRules = new List<Label>();
            passwordRules.Add(PasswordLengthRule); passwordRules.Add(PasswordNumbershRule);
            passwordRules.Add(PasswordCapitalsRule); passwordRules.Add(PasswordPuntuationRule);
            passwordRules.Add(PasswordSameEmailRule);
            return passwordRules;
        }

        private void ResaltBrokenRule(Label missingRule)
        {

        }

        private void ClicViewPasswordRules(object sender, MouseButtonEventArgs e)
        {
            lsbPasswordRules.Visibility = Visibility.Visible;
            imgViewPasswordRules.Visibility = Visibility.Hidden;
            
        }

        private void CLicButtonSaveUser(object sender, RoutedEventArgs e)
        {
            String nombre = txbNameCreateAcc.Text;
            String UserName = txbUserNameCreateAcc.Text;
            String Email = txbEmailCreateAcc.Text;
            String pasword = txbPasswordCreateAcc.Text;
        }

        private void CLicButtonCancelSaving(object sender, RoutedEventArgs e)
        {

        }

    }
}
