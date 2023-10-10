using System.Windows;

namespace JeopardyGame.Views
{
    /// <summary>
    /// Lógica de interacción para PrincipalWindow.xaml
    /// </summary>
    public partial class PrincipalWindow : Window
    {
        public PrincipalWindow()
        {
            InitializeComponent();
            Loaded += PrincipalWindowLoaded;
        }

        private void PrincipalWindowLoaded(object sender, RoutedEventArgs e)
        {
            contentFrame.Navigate(new Pages.LogInUser());
        }

    }
}
