using System.Windows;
using System.Windows.Controls;

namespace JeopardyGame.Views
{
    public partial class PrincipalWindow : Window
    {
        public PrincipalWindow()
        {
            InitializeComponent();
            Loaded += LoadedPrincipalWindow;
            this.HorizontalAlignment = HorizontalAlignment.Center;
            this.VerticalAlignment = VerticalAlignment.Top;
        }

        private void LoadedPrincipalWindow(object sender, RoutedEventArgs e)
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
