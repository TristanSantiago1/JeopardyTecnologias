using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.ReGexs
{
    public class RegularExpresionsLibrary
    {
        private String AT_LEAST_TWO_NUMBERS = @"(?:.*\d){2,}";
        private String AT_LEAST_TWO_CAPITAL_LETTER = @"^(?=(?:[^A-Z]*[A-Z]){2})[^A-Z]*[A-Z][^A-Z]*[A-Z][^A-Z]*$";
        private String AT_LEAST_ONE_SPECIAL_CHARACTER = @"[!¡¿?=&%$#-_]";
        private String AT_LEAST_ONE_PUNTUATION_MARK = @"[.;,]";

        public String GetAt_LEAST_TWO_NUMBER()
        {
            return AT_LEAST_TWO_NUMBERS;
        }

        public String GetAt_LEAST_TWO_CAPITAL_LETTER()
        {
            return AT_LEAST_TWO_CAPITAL_LETTER;
        }

        public String GetAt_LEAST_ONE_SPECIAL_CHARACTER()
        {
            return AT_LEAST_ONE_SPECIAL_CHARACTER;
        }

        public String GetAt_LEAST_ONE_PUTUATION_MARK()
        {
            return AT_LEAST_ONE_PUNTUATION_MARK;
        }
    }  

}
