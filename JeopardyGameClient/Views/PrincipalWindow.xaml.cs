using System.Windows;
using System.Windows.Controls;

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
            this.HorizontalAlignment = HorizontalAlignment.Center;
            this.VerticalAlignment = VerticalAlignment.Top;
        }

        private void PrincipalWindowLoaded(object sender, RoutedEventArgs e)
        {
            contentFrame.Navigate(new Pages.PrincipalPage());
            contentFrame.Visibility = Visibility.Visible;
        }

        public void ShowOverlayPage(Page overlayPage)
        {
            overlayFrame.Content = overlayPage;
            overlayFrame.Visibility = Visibility.Visible;
        }
       

    }
}
