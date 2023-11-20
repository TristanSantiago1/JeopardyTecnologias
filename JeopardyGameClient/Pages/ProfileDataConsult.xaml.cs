using JeopardyGame.ServidorServiciosJeopardy;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System;
using System.Windows.Controls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para ProfileDataConsult.xaml
    /// </summary>
    public partial class ProfileDataConsult : Page
    {
        public ProfileDataConsult()
        {
            InitializeComponent();
            DisplayUserInfo(lblNameEditAccount, lblUserNameEditAccount, lblAddresEditAccount);
        }

        public static void DisplayUserInfo(Label lblNameEditAccount, Label lblUserNameEditAccount, Label lblAddressEditAccount)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            lblUserNameEditAccount.Content = userSingleton.UserName;
            lblNameEditAccount.Content = userSingleton.Name;
            lblAddressEditAccount.Content = userSingleton.Email;

        }

        private void ClickEditUserInformation(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            EditUserProfile editUserProfilePage = new EditUserProfile();
            this.NavigationService.Navigate(editUserProfilePage);
            NavigationService.RemoveBackEntry();
        }

        private void ClickSingOut(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
        }
    }
}
