using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace JeopardyGame.Pages
{
    /// <summary>
    /// Lógica de interacción para idiomSelect.xaml
    /// </summary>
    public partial class idiomSelect : Page
    {
        public idiomSelect()
        {
            InitializeComponent();
            LoadSelectedLanguage();
        }

        private void ClicSpanishIdiom(object sender, MouseButtonEventArgs e)
        {
            ChangeLanguage("es-MX");
        }

        private void ClicEnglishIdiom(object sender, MouseButtonEventArgs e)
        {
            ChangeLanguage("en");
        }

        private void ChangeLanguage(string selectedLanguage)
        {
            App.ChangeLanguaje(selectedLanguage);
            RegistryKey key = Registry.CurrentUser.CreateSubKey("Software\\JeopardyGame");
            key.SetValue("SelectedLanguage", selectedLanguage);
            key.Close();
            if (selectedLanguage == "es-MX")
            {
                lblGameLanguaje.Content = Properties.Resources.lblUserNameLogIn;
                lblSpanish.Content = Properties.Resources.lblSpanish;
                lblEnglish.Content = Properties.Resources.lblEnglish;


            }
            else if (selectedLanguage == "en")
            {
                lblGameLanguaje.Content = Properties.Resources.lblUserNameLogIn;
                lblSpanish.Content = Properties.Resources.lblSpanish;
                lblEnglish.Content = Properties.Resources.lblEnglish;
            }
        }
        private void LoadSelectedLanguage()
        {
            RegistryKey key = Registry.CurrentUser.OpenSubKey("Software\\JeopardyGame");
            if (key != null)
            {
                string selectedLanguage = key.GetValue("SelectedLanguage") as string;
                ChangeLanguage(selectedLanguage);
                key.Close();
            }
        }
    }
}
