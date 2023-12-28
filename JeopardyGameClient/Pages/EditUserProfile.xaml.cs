using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ReGexs;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Text.RegularExpressions;
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
        private const int DISALLOWED_VALUES = 0;
        private const int ALLOWED_VALUES = 1;

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
            try
            {
                UserManagerClient useManagerProxy = new UserManagerClient();
                int idPlayer = UserSingleton.GetMainUser().IdPlayer;
                imageIdMappings.TryGetValue(imageResource, out int imageId);
                var resultPhoto = useManagerProxy.UpdatePlayerPhoto(idPlayer, imageId);

                if (resultPhoto != null)
                {
                    UserSingleton.GetMainUser().UpdateAvatarData(imageId);
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateInformation, Application.Current.MainWindow);
                    MainMenu mainMenuPage = new MainMenu();
                    this.NavigationService.Navigate(mainMenuPage);
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

        private void ClickViewAvatarList(object sender, MouseButtonEventArgs e)
        {
            brdAvatarList.Visibility = Visibility.Visible;
            imgViewAvartarList.Visibility = Visibility.Hidden;
        }

        private void ClickCloseAvatarList(object sender, MouseButtonEventArgs e)
        {
            brdAvatarList.Visibility = Visibility.Hidden;
            imgViewAvartarList.Visibility = Visibility.Visible;
        }

        private void ClickSaveNewEmail(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (CheckEmailAddressFormat() == ALLOWED_VALUES &&
                        CheckUserNameAndEmailExistence(userToSave) == ALLOWED_VALUES)
                {
                    GoToCodeConfirmationWindow(userToSave);
                }
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
        private void ClickSaveNewName(object sender, MouseButtonEventArgs e)
        {
            try
            {
                UserManagerClient useManagerProxy = new UserManagerClient();
                String nameEdited = txbEditName.Text;
                String originalName = UserSingleton.GetMainUser().Name;
                var result = useManagerProxy.UpdateUserInformation(nameEdited, originalName);
                if (result != null)
                {
                    UserSingleton.GetMainUser().UpdateNameData(nameEdited);
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateInformation, Application.Current.MainWindow);
                    MainMenu mainMenuPage = new MainMenu();
                    this.NavigationService.Navigate(mainMenuPage);
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
        private int CheckEmailAddressFormat()
        {
            RegularExpressionsLibrary regexInstance = new RegularExpressionsLibrary();
            Regex regexExpression = new Regex(regexInstance.GetEMAIL_RULES_CHAR());
            int answer;
            String email = txbEditEmail.Text.Trim();
            if (!regexExpression.IsMatch(email))
            {
                lblEmailWarning.Content = Properties.Resources.lblInvalidEmail;
                lblEmailWarning.Visibility = Visibility.Visible;
                answer = DISALLOWED_VALUES;
            }
            else
            {
                lblEmailWarning.Content = string.Empty;
                lblEmailWarning.Visibility = Visibility.Collapsed;
                answer = ALLOWED_VALUES;
            }
            return answer;
        }
        private int CheckUserNameAndEmailExistence(UserPOJO userToVerify)
        {
            try
            {
                ValidateUserExistanceClient dataCheckerProxy = new();
                GenericClassOfint userIsNew = dataCheckerProxy.UserAlreadyExist(userToVerify);
                dataCheckerProxy.Close();
                if (userIsNew.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT || userIsNew.CodeEvent == ExceptionDictionary.UNSUCCESFULL_EVENT)
                {
                    if (userIsNew.ObjectSaved == ALLOWED_VALUES)
                    {
                        return ALLOWED_VALUES;
                    }
                    else
                    {
                        if (userIsNew.ObjectSaved == ExceptionDictionary.EMAIL_ALREADY_EXIST)
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblRepeatedEmail, Application.Current.MainWindow);
                        }
                        else if (userIsNew.ObjectSaved == ExceptionDictionary.USERNAME_ALREADY_EXIST)
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblRepeatedUserName, Application.Current.MainWindow);
                        }
                        else
                        {
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblFailToRegisterUser, Application.Current.MainWindow);
                        }
                        return DISALLOWED_VALUES;
                    }
                }
                else
                {
                    return DISALLOWED_VALUES;
                }
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
            return DISALLOWED_VALUES;
        }
        private void GoToCodeConfirmationWindow(UserPOJO userToSave)
        {
            CodeConfirmation codeConfirmation = new CodeConfirmation(txbEditEmail.Text.Trim(), userToSave);
            this.NavigationService.Navigate(codeConfirmation);
            NavigationService.RemoveBackEntry();
        }
    }
}
