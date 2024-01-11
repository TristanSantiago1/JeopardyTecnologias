using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.Helpers
{
    public static class AleatoryGenerator
    {
        private static readonly Random generateAleatory = new Random();
        [ThreadStatic] private static Random generateAleatoryLocal;

        public static int GetAleatoryNumberWithRange(int begin, int end)
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

        public static int GetAleatoryNumber()
        {
            if (generateAleatoryLocal == null)
            {
                int seed;
                lock (generateAleatory)
                {
                    seed = generateAleatory.Next();
                }
                generateAleatoryLocal = new Random(seed);
            }
            return generateAleatoryLocal.Next();
        }


        public static char GetAleatoryCharacters(char begin, char end, int amount)
        {
            if (generateAleatoryLocal == null)
            {
                int seed;
                lock (generateAleatory)
                {
                    seed = generateAleatory.Next(begin, end + amount);
                }
                generateAleatoryLocal = new Random(seed);
            }
            return (char)generateAleatoryLocal.Next(begin, end + amount);
        }
    }
}
