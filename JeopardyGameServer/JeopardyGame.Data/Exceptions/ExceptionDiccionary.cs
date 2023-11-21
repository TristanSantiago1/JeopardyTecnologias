using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.Exceptions
{
    public class ExceptionDictionary
    {
        private static readonly String _FATAL_EXCEPTION = "Fatal";
        private static readonly String _ERROR = "Error";
        private static readonly String _UNKNOW = "Unknow";

        private static readonly int _SUCCESFULL_EVENT = -100;
        private static readonly int _UNSUCCESFULL_EVENT = -99;
        private static readonly int _NULL_PARAEMETER = -200;
        private static readonly int _ARGUMENT_NULL = -210;
        private static readonly int _ARGUMENT_OUT_OF_RANGE_EXCEPTION = -211;
        private static readonly int _FORMMAT_EXCEPTION = -212;
        private static readonly int _RANK_EXCEPTION = -213;
        private static readonly int _EMAIL_FORMAT_INVALID = -219;
        private static readonly int _INVALID_OPERATION = -220;
        private static readonly int _NO_DB_CONECTION = -300;
        private static readonly int _SAVE_CHANGES_ERROR = -310;
        private static readonly int _SQL_ERROR = -350;
        private static readonly int _ENTITY_ERROR = -360;
        private static readonly int _SMTP_EXCEPTION = -400;
        private static readonly int _UNKOWN_EXCEPTION_OCURRED = -500;

        public static string FATAL_EXCEPTION => _FATAL_EXCEPTION;

        public static string ERROR => _ERROR;

        public static string UNKNOW => _UNKNOW;

        public static int SUCCESFULL_EVENT => _SUCCESFULL_EVENT;

        public static int UNSUCCESFULL_EVENT => _UNSUCCESFULL_EVENT;

        public static int NULL_PARAEMETER => _NULL_PARAEMETER;

        public static int ARGUMENT_NULL => _ARGUMENT_NULL;

        public static int ARGUMENT_OUT_OF_RANGE_EXCEPTION => _ARGUMENT_OUT_OF_RANGE_EXCEPTION;

        public static int FORMMAT_EXCEPTION => _FORMMAT_EXCEPTION;

        public static int RANK_EXCEPTION => _RANK_EXCEPTION;

        public static int EMAIL_FORMAT_INVALID => _EMAIL_FORMAT_INVALID;

        public static int INVALID_OPERATION => _INVALID_OPERATION;

        public static int NO_DB_CONECTION => _NO_DB_CONECTION;

        public static int SAVE_CHANGES_ERROR => _SAVE_CHANGES_ERROR;

        public static int SQL_ERROR => _SQL_ERROR;

        public static int ENTITY_ERROR => _ENTITY_ERROR;

        public static int SMTP_EXCEPTION => _SMTP_EXCEPTION;

        public static int UNKOWN_EXCEPTION_OCURRED => _UNKOWN_EXCEPTION_OCURRED;
    }
    

}
