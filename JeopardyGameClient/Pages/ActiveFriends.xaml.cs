using JeopardyGame.DialogWindows;
using JeopardyGame.Helpers;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static JeopardyGame.Pages.LobbyPage;
using ExceptionDictionary = JeopardyGame.Exceptions.ExceptionDictionary;
using JeopardyGame.Exceptions;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para ActiveFriends.xaml
    /// </summary>
    public partial class ActiveFriends : Page, INotifyUserAvailabilityCallback
    {
        private LobbyPage lobbyPage;
        private NotifyUserAvailabilityClient userAvailabilityProxy;
        public event EventHandler InviteButtonClicked;
        public const int NULL_INT_VALUE = 0;
        private Window dialogMessage;

        public ActiveFriends(int idUser)
        {
            try
            {
                InitializeComponent();
                InstanceContext context = new InstanceContext(this);
                userAvailabilityProxy = new(context);
                userAvailabilityProxy.SubscribeToAvailabityCallBackChannel(idUser);
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

        public void StartPage(LobbyPage lobby)
        {
            lobbyPage = lobby;
            GetFriend();
            SetFriend();
        }

        private void ClickCloseListFriends(object sender, MouseButtonEventArgs e)
        {
            lobbyPage.CloseFriendList();
        }

        private void GetFriend()
        {
            try {
                UserSingleton mainCurrentUser = UserSingleton.GetMainUser();
                ConsultUserInformationClient consultInformationProxy = new ConsultUserInformationClient();
                var user = consultInformationProxy.ConsultUserById(mainCurrentUser.IdUser);
                ConsultFriendsClient friendManagerProxy = new ConsultFriendsClient();
                var friends = friendManagerProxy.GetUserFriends(user.ObjectSaved);
                if (friends.CodeEvent == ExceptionDictionary.SUCCESFULL_EVENT)
                {
                    foreach (var item in friends.ObjectSaved)
                    {
                        FriendAvailabilityInformation activeFriendProxy = new FriendAvailabilityInformation();
                        activeFriendProxy.IdUser = item.IdUser;
                        activeFriendProxy.Name = item.UserName;
                        activeFriendProxy.EmailAddress = item.EmailAddress;
                        activeFriendProxy.IdStatusOfAvailability = item.IdStatusAvailability;
                        FriendList.RegisterNewFriendInDictionary(item.IdUser, activeFriendProxy);
                    }
                }
                else
                {
                    dialogMessage = new ErrorMessageDialogWindow(Properties.Resources.txbWarningTitle, Properties.Resources.lblWithoutFriends, Application.Current.MainWindow);
                }
                friendManagerProxy.Close();
                consultInformationProxy.Close();
            }
            catch (EndpointNotFoundException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (CommunicationObjectFaultedException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblWithoutConection, Application.Current.MainWindow);
            }
            catch (TimeoutException ex)
            {
                ExceptionHandlerForLogs.LogException(ex, ExceptionDictionary.FATAL_EXCEPTION);
                new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.lblTimeExpired, Application.Current.MainWindow);
            }
        }

        private void SetFriend()
        {   
            stcFriendList.Children.Clear();
            stcFriendList.Orientation = Orientation.Vertical;
            int roomCode = GameCodeContainer.RoomCode;
            Dictionary<int, FriendAvailabilityInformation> friendList = FriendList.GetActiveFriendsList();
            if (friendList != null)
            {               
                foreach (var item in friendList)
                {                    
                    FriendCard friendCard = new FriendCard(item.Value.Name, item.Value.IdStatusOfAvailability, Properties.Resources.bttInvite);
                    friendCard.InviteButtonClicked += (sender, e) =>
                    {
                        string friendEmail = item.Value.EmailAddress;
                        string subject = Properties.Resources.txbTitleEmailInvitation;
                        string body = Properties.Resources.tbxBodyInvitation + " "+ $"{roomCode}";
                        SendEmailForInvitationToGame(friendEmail, subject, body);
                        dialogMessage = new InformationMessageDialogWindow(Properties.Resources.tbxEmailSend, Properties.Resources.txbInfoEmailSend, Application.Current.MainWindow);
                    };
                    stcFriendList.Children.Add(friendCard);
                }
            }            
        }

        public void ResponseOfPlayerAvailability(int status, int idFriend)
        {
            Dictionary<int, FriendAvailabilityInformation> friendList = FriendList.GetActiveFriendsList();
            if (friendList.ContainsKey(idFriend))
            {
                FriendList.ChangeStatusOfFriend(idFriend, status);
            }
            SetFriend();
        }

        public void VerifyPlayerAvailability()
        {
        }
        
        private void SendEmailForInvitationToGame(string email, string subject, string body)
        {
            EmailSenderManagerClient emailSenderProxy = new EmailSenderManagerClient();
            UserSingleton userSingleton = UserSingleton.GetMainUser();
            UserPOJO user = new UserPOJO()
            {
                IdUser = userSingleton.IdUser,
                UserName = userSingleton.UserName,
                EmailAddress = email,
            };
            GenericClassOfint sentEmailResult = emailSenderProxy.SentEmailInvitingToGame(user, subject, body);
            if (sentEmailResult.CodeEvent != ExceptionDictionary.SUCCESFULL_EVENT)
            {
                ExceptionHandler.HandleException(sentEmailResult.CodeEvent, String.Empty);
                dialogMessage =  new InformationMessageDialogWindow(Properties.Resources.tbxEmailSend, Properties.Resources.txbInfoEmailSend, Application.Current.MainWindow);
            }
            if (sentEmailResult.ObjectSaved == NULL_INT_VALUE)
            {
                dialogMessage =  new ErrorMessageDialogWindow(Properties.Resources.txbErrorTitle, Properties.Resources.SentEmailIssue, Application.Current.MainWindow);
                
            }
        }

    }

}
