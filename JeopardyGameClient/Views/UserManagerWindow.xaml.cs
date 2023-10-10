using System.Windows;

namespace JeopardyGame.Views
{
    /// <summary>
    /// Lógica de interacción para UserManagerWindow.xaml
    /// </summary>
    public partial class UserManagerWindow : Window
    {
        public UserManagerWindow()
        {
            InitializeComponent();
            Loaded += UserWindowLoaded;            
        }

        private void UserWindowLoaded(object sender, RoutedEventArgs e)
        {
            CurrentPage.Navigate(new JeopardyGame.Pages.UserRegister());
            this.HorizontalAlignment = HorizontalAlignment.Center; 
            this.VerticalAlignment = VerticalAlignment.Top;
        }

        public void CloseWindow()
        {
            this.Close();
        }

    }
}
