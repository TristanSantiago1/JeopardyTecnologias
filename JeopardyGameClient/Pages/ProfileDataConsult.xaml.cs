using JeopardyGame.ServidorServiciosJeopardy;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System;
using System.Windows.Controls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Collections.Generic;
using JeopardyGame.Helpers;
using System.Drawing;
using System.Linq;
using System.Windows.Interop;
using System.Windows.Media.Imaging;
using System.Windows;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para ProfileDataConsult.xaml
    /// </summary>
    public partial class ProfileDataConsult : Page
    {
        private Dictionary<string, int> imageIdMappings;
        public ProfileDataConsult()
        {
            InitializeComponent();
            InitializeImageMappings();
            ImagenInit();
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
        private void InitializeImageMappings()
        {
            imageIdMappings = new Dictionary<string, int>
        {
            { "Alacran", 1 },
            { "AvatarCarro", 2 },
            { "BatMan", 3 },
            {"Caballo",4 },
            {"IronMan",5 },
            {"RealMadrid",6 },
            {"SpiterMan",7 }
        };
        }
        private void ImagenInit()
        {
            int idPlayer = UserSingleton.GetMainUser().IdPlayer;
            ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();

            var playerInfo = consultInformationProxy.ConsultPlayerById(idPlayer);
            consultInformationProxy.Close();

            if (playerInfo != null && playerInfo.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                var playerWrapper = playerInfo.ObjectSaved;

                if (playerWrapper != null && playerWrapper is PlayerPOJO)
                {
                    var player = (PlayerPOJO)playerWrapper;//Porque no sacas el id de la imagen del Singleton???

                    int imageId = player.IdActualAvatar;

                    string imageName = imageIdMappings.FirstOrDefault(x => x.Value == imageId).Key;

                    if (!string.IsNullOrEmpty(imageName))
                    {
                        Bitmap bmp = (Bitmap)Properties.ResourcesImage.ResourceManager.GetObject(imageName);

                        BitmapSource bmpImage = Imaging.CreateBitmapSourceFromHBitmap(
                            bmp.GetHbitmap(),
                            IntPtr.Zero,
                            Int32Rect.Empty,
                            BitmapSizeOptions.FromEmptyOptions()
                        );

                        imageProfile.Source = bmpImage;
                    }
                }
            }

        }
    }
}
