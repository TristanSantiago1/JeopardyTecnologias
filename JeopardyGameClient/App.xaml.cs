using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace JeopardyGame
{
    //<summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            var StartWindow = new Views.PrincipalWindow();
            StartWindow.Show();

            var logInUserPage = new Pages.LogInUser();
            StartWindow.Content = logInUserPage;

        }

    }
}
