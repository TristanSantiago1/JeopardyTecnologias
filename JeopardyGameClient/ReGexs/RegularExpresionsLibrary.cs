using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace JeopardyGame.ReGexs
{
    public class RegularExpresionsLibrary
    {
        private static String AT_LEAST_TWO_NUMBERS = @"(?:.*\d.*\D.*\d)|(?:.*\D.*\d.*\D.*\d)";
        private static String AT_LEAST_TWO_CAPITAL_LETTER = @"^(?=(?:[^A-Z]*[A-Z]){2})[^A-Z]*(?:[A-Z](?![A-Z])[^A-Z]*)+$";
        private static String AT_LEAST_ONE_SPECIAL_CHARACTER = @"[!¡¿?=&%$#\-_]";
        private static String AT_LEAST_ONE_PUNTUATION_MARK = @"[.;,]";
        private static string NAME_RULES_CHAR = "^[a-zA-Z0-9_áéíóúÁÉÍÓÚ]{1,30}$";
        private static string USERNAME_RULES_CHAR = "^[a-zA-Z0-9_áéíóúÁÉÍÓÚ]{1,15}$";
        private static string EMAIL_RULES_CHAR = "^(?=.{1,90}$)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        private static string EMAIL_ALLOW_CHAR = "^[a-zA-Z0-9@,._=]{1,90}$";


        public Dictionary<string, Regex> validationTextBoxRegexes = new Dictionary<string, Regex>
        {
            { "txbNameCreateAcc", new Regex(NAME_RULES_CHAR) },
            { "txbUserNameCreateAcc", new Regex(USERNAME_RULES_CHAR) },
            {"txbEmailCreateAcc", new Regex(EMAIL_ALLOW_CHAR) }
        };

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

        public String GetNAME_RULES_CHAR()
        {
            return NAME_RULES_CHAR;
        }

        public String GetUSERNAME_RULES_CHAR()
        {
            return USERNAME_RULES_CHAR;
        }

        public String GetEMAIL_RULES_CHAR()
        {
            return EMAIL_RULES_CHAR;
        }

    }

}
