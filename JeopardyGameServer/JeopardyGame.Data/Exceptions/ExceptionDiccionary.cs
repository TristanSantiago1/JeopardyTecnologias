using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Data.Exceptions
{
    public class ExceptionDictionary
    {
        public static String FATAL_EXCEPTION = "Fatal";
        public static String ERROR = "Error";
        public static String UNKNOW = "Unknow";

        public static int SUCCESFULL_EVENT = -100;
        public static int UNSUCCESFULL_EVENT = -99; 
        public static int NULL_PARAEMETER = -200;
        public static int ARGUMENT_NULL = -210;
        public static int ARGUMENT_OUT_OF_RANGE_EXCEPTION = -211;
        public static int FORMMAT_EXCEPTION = -212;
        public static int RANK_EXCEPTION = -213;
        public static int EMAIL_FORMAT_INVALID = -219; 
        public static int INVALID_OPERATION = -220; 
        public static int NO_DB_CONECTION = -300;
        public static int SAVE_CHANGES_ERROR = -310;
        public static int SQL_ERROR = -350;
        public static int ENTITY_ERROR = -360;
        public static int SMTP_EXCEPTION = -400;
        public static int UNKOWN_EXCEPTION_OCURRED = -500;
    }
    

}
