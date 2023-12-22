using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.ServiceModel;
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
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using ExceptionHandlerForLogs = JeopardyGame.Exceptions.ExceptionHandlerForLogs;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para EditUserProfile.xaml
    /// </summary>
    public partial class EditUserProfile : Page
    {
        private Window dialogMessage;
        String imageResource = "";
        private Dictionary<string, int> imageIdMappings;

        public EditUserProfile()
        {
            InitializeComponent();
            InitializeImageMappings();
            ImagenInitialization();
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

        private void CLickButtonSaveChanges(object sender, RoutedEventArgs e)
        {
            try {
                String nameEdited = txbEditName.Text;
                String originalName = UserSingleton.GetMainUser().Name;
                UserManagerClient useManagerProxy = new UserManagerClient();
                var result = useManagerProxy.UpdateUserInformation(nameEdited, originalName);
                int idPlayer = UserSingleton.GetMainUser().IdPlayer;

                imageIdMappings.TryGetValue(imageResource, out int imageId);
                var resultPhoto = useManagerProxy.UpdatePlayerPhoto(idPlayer, imageId);

                if (result.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateInformation, Application.Current.MainWindow);
                    MainMenu mainMenu = new MainMenu();
                    this.NavigationService.Navigate(mainMenu);
                    NavigationService.RemoveBackEntry();
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongUpdateInformation, Application.Current.MainWindow);
                }
                useManagerProxy.Close();
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        private void CLickButtonCancelChanges(object sender, RoutedEventArgs e)
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

        private void SelectImage(object sender, SelectionChangedEventArgs e)
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

        private void ImagenInitialization()
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
                    var player = (PlayerPOJO)playerWrapper; ////Aqui proque no sacas directamente el idActualAvatar directamente del Wrapper??

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

    }
}
