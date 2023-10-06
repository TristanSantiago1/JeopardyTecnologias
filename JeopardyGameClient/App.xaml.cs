using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace JeopardyGame
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            // Crea la ventana que quieres establecer como principal
            Views.UserManagerWindow mainWindow = new Views.UserManagerWindow();

            // Establece la ventana como la ventana principal
            this.MainWindow = mainWindow;

            // Muestra la ventana
            mainWindow.Show();
        }

    }
}
