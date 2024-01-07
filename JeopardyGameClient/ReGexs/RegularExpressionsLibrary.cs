using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace JeopardyGame.ReGexs
{
    public class RegularExpressionsLibrary
    {
        private static readonly String _AT_LEAST_TWO_NUMBERS = @"(?:.*\d.*\D.*\d)|(?:.*\D.*\d.*\D.*\d)";
        private static readonly String _AT_LEAST_TWO_CAPITAL_LETTER = @"^(?=(?:[^A-Z]*[A-Z]){2})[^A-Z]*(?:[A-Z](?![A-Z])[^A-Z]*)+$";
        private static readonly String _AT_LEAST_ONE_SPECIAL_CHARACTER = @"[!¡¿?=&%$#\-_]";
        private static readonly String _AT_LEAST_ONE_PUNTUATION_MARK = @"[.:;,]";
        private static readonly string _NAME_RULES_CHAR = "^[a-zA-Z0-9_áéíóúÁÉÍÓÚ ]{1,30}$";
        private static readonly string _USERNAME_RULES_CHAR = "^[a-zA-Z0-9_áéíóúÁÉÍÓÚ]{1,15}$";
        private static readonly string _EMAIL_RULES_CHAR = "^(?=.{1,90}$)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        private static readonly string _EMAIL_ALLOW_CHAR = "^[a-zA-Z0-9@,._=]{1,90}$";


        public Dictionary<string, Regex> ValidationTextBoxRegexes { get; set; } = new Dictionary<string, Regex>
        {
            { "txbNameCreateAcc", new Regex(_NAME_RULES_CHAR) },
            { "txbUserNameCreateAcc", new Regex(_USERNAME_RULES_CHAR) },
            { "txbEmailCreateAcc", new Regex(_EMAIL_ALLOW_CHAR) }
        };

        public String GetAt_LEAST_TWO_NUMBER()
        {
            return _AT_LEAST_TWO_NUMBERS;
        }

        public String GetAt_LEAST_TWO_CAPITAL_LETTER()
        {
            return _AT_LEAST_TWO_CAPITAL_LETTER;
        }

        public String GetAt_LEAST_ONE_SPECIAL_CHARACTER()
        {
            return _AT_LEAST_ONE_SPECIAL_CHARACTER;
        }

        public String GetAt_LEAST_ONE_PUTUATION_MARK()
        {
            return _AT_LEAST_ONE_PUNTUATION_MARK;
        }

        public String GetNAME_RULES_CHAR()
        {
            return _NAME_RULES_CHAR;
        }

        public String GetUSERNAME_RULES_CHAR()
        {
            return _USERNAME_RULES_CHAR;
        }

        public String GetEMAIL_RULES_CHAR()
        {
            return _EMAIL_RULES_CHAR;
        }

    }

}
