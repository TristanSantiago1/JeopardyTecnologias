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
            DisplayUserInfo(lblNameEditAcc, lblUserNameEditAcc, lblAddresEditAcc);
        }

        public static void DisplayUserInfo(Label lblNameEditAcc, Label lblUserNameEditAcc, 
            Label lblAddresEditAcc)
        {
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            lblUserNameEditAcc.Content = userSingleton.UserName;
            lblNameEditAcc.Content = userSingleton.Name;
            lblAddresEditAcc.Content = userSingleton.Email;

        }

        private void ClicEditUserInformation(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            EditUserProfile editUserProfilePage = new EditUserProfile();
            this.NavigationService.Navigate(editUserProfilePage);
            NavigationService.RemoveBackEntry();
        }

        private void ClicSingOut(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
        }
    }
}
