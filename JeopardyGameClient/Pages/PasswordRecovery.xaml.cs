using JeopardyGame.ReGexs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for PasswordRecovery.xaml
    /// </summary>
    public partial class PasswordRecovery : Page
    {
        public PasswordRecovery()
        {
            InitializeComponent();
        }

        private void InitializeListeners()
        {
            psbPasswordCreateAccount.PasswordChanged += EntryPasswordChar;
            psbPasswordCreateAccount.PreviewKeyDown += EntryTextBoxPaste;


            txbUserName.PreviewKeyDown += EntryTextBoxPaste;
        }

        private void EntryPasswordChar(object sender, RoutedEventArgs e)
        {
        }

        private void EntryTextBoxCharValidation(object sender, TextCompositionEventArgs e)
        {
            TextBox currentTextBox = sender as TextBox;
            RegularExpressionsLibrary regularExpressionsLibrary = new RegularExpressionsLibrary();
            if ((regularExpressionsLibrary.ValidationTextBoxRegexes.TryGetValue(currentTextBox.Name, out Regex regex)) && (!regex.IsMatch(currentTextBox.Text + e.Text)))
            {
                e.Handled = true;
            }
        }
        private void EntryTextBoxPaste(object sender, KeyEventArgs e)
        {
            if ((Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control && (e.Key == Key.V))
            {
                e.Handled = true;
            }
        }


        private void bttConfirmUserName_Click(object sender, RoutedEventArgs e)
        {

        }

        private void bttConfirmCode_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ClickButtonCancelSaving(object sender, RoutedEventArgs e)
        {

        }

        private void ClickButtonSaveUser(object sender, RoutedEventArgs e)
        {

        }


        private void ClickViewPasswordRules(object sender, MouseButtonEventArgs e)
        {
            brdPasswordRules.Visibility = Visibility.Visible;
            imgViewPasswordRules.Visibility = Visibility.Hidden;

        }
        private void ClickClosePasswordRules(object sender, MouseButtonEventArgs e)
        {
            brdPasswordRules.Visibility = Visibility.Hidden;
            imgViewPasswordRules.Visibility = Visibility.Visible;
        }

        private void ClickSeePassword(object sender, MouseButtonEventArgs e)
        {
            lblViewPassword.Content = psbPasswordCreateAccount.Password.ToString();
            psbPasswordCreateAccount.Visibility = Visibility.Collapsed;
            lblViewPassword.Visibility = Visibility.Visible;
        }

        private void OverLeaveHidePassword(object sender, MouseEventArgs e)
        {
            if (lblViewPassword.IsVisible)
            {
                psbPasswordCreateAccount.Visibility = Visibility.Visible;
                psbPasswordCreateAccount.PasswordChar = '*';
                psbPasswordCreateAccount.Password = (string)lblViewPassword.Content;
                lblViewPassword.Visibility = Visibility.Collapsed;
            }
        }

    }
}
