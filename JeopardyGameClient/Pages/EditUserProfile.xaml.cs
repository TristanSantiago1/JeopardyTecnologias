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
            Loaded += LoadedPreparedWindow;
        }

        private void LoadedPreparedWindow(object sender, RoutedEventArgs e)
        {
            InitializeImageMappings();
            ImagenInitialization();
            ReadResource();
            DisplayUserInfo();
           
        }

        public  void DisplayUserInfo()
        {
            txbEditUserName.IsReadOnly = true;
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            txbEditName.Text = userSingleton.Name;
            txbEditUserName.Text = userSingleton.UserName;
            txbEditEmail.Text = userSingleton.Email;
        }

        private void CLickButtonSaveAvatarChanges(object sender, RoutedEventArgs e)
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
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateAvatar, Application.Current.MainWindow);
                    MainMenu mainMenuPage = new MainMenu();
                    this.NavigationService.Navigate(mainMenuPage);
                    NavigationService.RemoveBackEntry();
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongUpdateAvatar, Application.Current.MainWindow);
                    RefreshWindow();
                }
                useManagerProxy.Close();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateAvatar + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateAvatar + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateAvatar + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateAvatar + " : " + Properties.Resources.lblWithoutConection);
            }
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
                    var player = (PlayerPOJO)playerWrapper; 

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
                UserManagerClient useManagerProxy = new UserManagerClient();
                int idUser = UserSingleton.GetMainUser().IdUser;
                string email = txbEditEmail.Text.Trim();
                if (CheckEmailAddressFormat() == ALLOWED_VALUES &&
                        CheckEmailExistence(email) == ALLOWED_VALUES)
                {
                    var result = useManagerProxy.UpdateEmailUser(idUser, email);
                    if (result != null)
                    {
                        UserSingleton.GetMainUser().UpdateEmailData(email);
                        dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateEmail, Application.Current.MainWindow);
                        MainMenu mainMenuPage = new MainMenu();
                        this.NavigationService.Navigate(mainMenuPage);
                        NavigationService.RemoveBackEntry();
                    }
                    else
                    {
                        RefreshWindow();
                        dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongUpdateEmail, Application.Current.MainWindow);
                    }
                    useManagerProxy.Close();
                }
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateEmail + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateEmail + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateEmail + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateEmail + " : " + Properties.Resources.lblWithoutConection);
            }
        }
        private void ClickSaveNewName(object sender, MouseButtonEventArgs e)
        {
            try
            {
                UserManagerClient useManagerProxy = new UserManagerClient();
                String nameEdited = txbEditName.Text;
                int idUser = UserSingleton.GetMainUser().IdUser;
                var result = useManagerProxy.UpdateUserInformation(idUser, nameEdited);
                if (result != null)
                {
                    UserSingleton.GetMainUser().UpdateNameData(nameEdited);
                    dialogMessage = new InformationMessageDialogWindow(Properties.Resources.txbInformationTitle, Properties.Resources.lblUpdateName, Application.Current.MainWindow);
                    MainMenu mainMenuPage = new MainMenu();
                    this.NavigationService.Navigate(mainMenuPage);
                    NavigationService.RemoveBackEntry();
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongUpdateName, Application.Current.MainWindow);
                }
                useManagerProxy.Close();
            }
            catch (EndpointNotFoundException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateName + " : " + Properties.Resources.lblEndPointNotFound);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateName + " : " + Properties.Resources.lblComunicationException);
            }
            catch (TimeoutException ex)
            {
                HandleException(ex, Properties.Resources.lblWrongUpdateName + " : " + Properties.Resources.lblTimeException);
            }
            catch (CommunicationException ex)
            {
                HandleException(ex,Properties.Resources.lblWrongUpdateName + " : " + Properties.Resources.lblWithoutConection);
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
        private int CheckEmailExistence(string email)
        {
            try
            {
                ValidateUserExistanceClient dataCheckerProxy = new();
                GenericClassOfint userIsNew = dataCheckerProxy.EmailAlreadyExist(email);
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
                            RefreshWindow();
                            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWrongEmailRepited, Application.Current.MainWindow);
                        }
                        return DISALLOWED_VALUES;
                    }
                }
                else
                {
                    return DISALLOWED_VALUES;
                }
            }
            catch (EndpointNotFoundException)
            {
                throw new EndpointNotFoundException();
            }
            catch (CommunicationObjectFaultedException)
            {
                throw new CommunicationException();
            }
            catch (TimeoutException)
            {
                throw new TimeoutException();
            }
            catch (CommunicationException)
            {
                throw new CommunicationException();
            }
        }

        private void ClickBackToMaminMenu(object sender, MouseButtonEventArgs e)
        {
            CloseWindow();
        }
        private void CloseWindow()
        {
            MainMenu mainMenuPage = new MainMenu();
            this.NavigationService.Navigate(mainMenuPage);
            NavigationService.RemoveBackEntry();
        }

        private void RefreshWindow()
        {
            EditUserProfile editUserProfilePage = new EditUserProfile();
            this.NavigationService.Navigate(editUserProfilePage);
            NavigationService.RemoveBackEntry();
        }

        private void HandleException(Exception ex, string errorMessage)
        {
            ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
            RefreshWindow();
            dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, errorMessage, Application.Current.MainWindow);
        }
    
    }
}
