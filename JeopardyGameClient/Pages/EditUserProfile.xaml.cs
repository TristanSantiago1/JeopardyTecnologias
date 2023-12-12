using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
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
        String imageResource = "";
        public EditUserProfile()
        {
            InitializeComponent();
            ImagenInit();
            ShowPlayerImage();
            ReadResource();
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

        private void CLicButtonSaveChanges(object sender, RoutedEventArgs e)
        {
            String nameEdited = txbEditName.Text;
            String originalName = UserSingleton.GetMainUser().Name;
            UserManagerClient proxyServer = new UserManagerClient();
            var result = proxyServer.UpdateUserInformation(nameEdited, originalName);
            int idPlayer = UserSingleton.GetMainUser().IdPlayer;

            Dictionary<string, int> imageIdMappings = new Dictionary<string, int>
            {
                { "Alacran", 1 },
                { "AvatarCarro", 2 },
                { "BatMan", 3 },
                {"Caballo",4 },
                {"IronMan",5 },
                {"RealMadrid",6 },
                {"SpiterMan",7 }
            };
            imageIdMappings.TryGetValue(imageResource, out int imageId);
            var resultPhoto = proxyServer.UpdatePlayerPhoto(idPlayer, imageId);

            if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
            {
                new InformationMessageDialogWindow("EXITO", "Se ha guardado los cmabiso del ususario", Application.Current.MainWindow);
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

        private void ImageSelector(object sender, SelectionChangedEventArgs e)
        {
            if (lxtImageSelector.SelectedItem != null)
            {

                Bitmap bmp = (Bitmap)Properties.ResourcesImage.ResourceManager.GetObject(lxtImageSelector.SelectedItem.ToString());

                BitmapSource bmpImage = Imaging.CreateBitmapSourceFromHBitmap(
                    bmp.GetHbitmap(),
                    IntPtr.Zero,
                    Int32Rect.Empty,
                    BitmapSizeOptions.FromEmptyOptions()
                    );

                imageProfile.Source = bmpImage;
                imageResource = lxtImageSelector.SelectedItem.ToString();
            }
        }
        private void ReadResource()
        {
            lxtImageSelector.Items.Add("Alacran");
            lxtImageSelector.Items.Add("AvatarCarro");
            lxtImageSelector.Items.Add("BatMan");
            lxtImageSelector.Items.Add("Caballo");
            lxtImageSelector.Items.Add("IronMan");
            lxtImageSelector.Items.Add("RealMadrid");
            lxtImageSelector.Items.Add("SpiterMan");
        }
        private void ShowPlayerImage()
        {
            int idPlayer = UserSingleton.GetMainUser().IdPlayer;
            UserManagerClient proxyServer = new UserManagerClient();
            var avatarId = proxyServer.recoverPlayerPhoto(idPlayer);

            Dictionary<int, string> imageIdMappings = new Dictionary<int, string>
                {
                    { 1, "Alacran" },
                    { 2, "AvatarCarro" },
                    { 3, "BatMan" },
                    { 4, "Caballo" },
                    { 5, "IronMan" },
                    { 6, "RealMadrid" },
                    { 7, "SpiterMan" }
                };

            if (avatarId != null && avatarId.ObjectSaved != 0)
            {
                int avatarValue = avatarId.ObjectSaved;

                if (imageIdMappings.ContainsKey(avatarValue))
                {
                    string avatarName = imageIdMappings[avatarValue];

                    Bitmap bmp = (Bitmap)Properties.ResourcesImage.ResourceManager.GetObject(avatarName);

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
        private void ImagenInit()
        {
            Bitmap bmp = (Bitmap)Properties.ResourcesImage.ResourceManager.GetObject("RealMadrid");

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
