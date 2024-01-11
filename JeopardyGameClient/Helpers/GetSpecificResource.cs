using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows;
using JeopardyGame.ServidorServiciosJeopardy;
using Microsoft.Win32;
using System.Windows.Controls;
using System.Globalization;
using System.Threading;
using System.Security.Cryptography;

namespace JeopardyGame.Helpers
{
    public static class GetSpecificResource
    {
        private static readonly Random generateAleatory = new Random();
        [ThreadStatic] private static Random generateAleatoryLocal;

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

        public static string GetEnglishOrSpanishDescription(string englisDescription, string spanishDescription)
        {
            if (spanishDescription is null)
            {
                return englisDescription;
            }
            if (englisDescription is null)
            {
                return spanishDescription;
            }
            bool isEnglish = App.IsEnglish;
            if (isEnglish)
            {
                return englisDescription;
            }
            else
            {
                return spanishDescription;
            }
        }

        
            

        public static int GetAleatoryNumber(int begin, int end)
        {
            if (generateAleatoryLocal == null)
            {
                int seed;
                lock (generateAleatory)
                {
                    seed = generateAleatory.Next(begin, end);
                }
            generateAleatoryLocal = new Random(seed);
            }
            return generateAleatoryLocal.Next(begin, end);
        }
        


        public static bool HasAtLeastTwoSeparateUppercaseLetters(string password)
        {
            int uppercaseCount = 0;
            bool isPreviousUppercase = false;

            foreach (char c in password)
            {
                if (char.IsUpper(c))
                {
                    uppercaseCount++;

                    if (isPreviousUppercase)
                    {
                        return false;
                    }

                    isPreviousUppercase = true;
                }
                else
                {
                    isPreviousUppercase = false;
                }
            }

            return uppercaseCount >= 2;
        }

    }



    public static class GetParentOfGraphicInterfaceComponent
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


