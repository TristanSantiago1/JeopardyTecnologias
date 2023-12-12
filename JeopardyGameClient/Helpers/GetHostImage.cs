using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows;

namespace JeopardyGame.Helpers
{
    public static class GetHostImage
    {
        public static string GetHosImage(int idHost)
        {
            return idHost switch
            {
                2 => App.Current.Resources["HostPedro"].ToString(),
                4 => App.Current.Resources["HostCR7"].ToString(),
                5 => App.Current.Resources["HostMike"].ToString(),
                _ => App.Current.Resources["HostMike"].ToString(),
            };
        }

        public static string GetAvatarImage(int idAvatar)
        {
            return idAvatar switch
            {
                1 => App.Current.Resources["AvatarScorpion"].ToString(),
                2 => App.Current.Resources["AvatarCar"].ToString(),
                3 => App.Current.Resources["AvatarBatMan"].ToString(),
                4 => App.Current.Resources["AvatarHorse"].ToString(),
                5 => App.Current.Resources["AvatarIronMan"].ToString(),
                6 => App.Current.Resources["AvatarMadrid"].ToString(),
                7 => App.Current.Resources["AvatarSpiterMan"].ToString(),
                _ => App.Current.Resources["AvatarCar"].ToString(),
            };
        }

    }

    public static class GetParent
    {
        public static T FindParent<T>(DependencyObject child) where T : DependencyObject
        {
            DependencyObject parent = VisualTreeHelper.GetParent(child);
            while (parent != null && !(parent is T))
            {
                parent = VisualTreeHelper.GetParent(parent);
            }
            return (T)parent;
        }

    }

}
