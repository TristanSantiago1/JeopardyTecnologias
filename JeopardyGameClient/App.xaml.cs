using System.Windows;

namespace JeopardyGame
{
    public partial class App : Application
    {

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            Views.PrincipalWindow mainWindow = new Views.PrincipalWindow();
            this.MainWindow = mainWindow;
            mainWindow.Show();
        }

        App()
        {
            //System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("es-MX");
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-EU");

        }

        public static void ChangeLanguaje (string languaje)
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(languaje);
        }

    }
}
