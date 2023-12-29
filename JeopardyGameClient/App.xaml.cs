using System.Windows;

namespace JeopardyGame
{
    public partial class App : Application
    {
        private static bool isEnglish = false;

        public static bool IsEnglish { get => isEnglish; set => isEnglish = value; }

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            Views.PrincipalWindow mainWindow = new Views.PrincipalWindow();
            mainWindow.WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            this.MainWindow = mainWindow;
            mainWindow.Show();
        }

        App()
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-EU");
        }

        public static void ChangeLanguage (string language)
        {
            if (language.Equals("en-EU"))
            {
                IsEnglish = true;
            }
            else
            {
                IsEnglish = false;
            }
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(language);
        }

    }
}
