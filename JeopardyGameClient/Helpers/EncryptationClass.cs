using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Helpers
{
    public static class EncryptionClass
    { 
        public static string EncryptPassword(string password)
        {
            byte[] salt; //Extra character for each password
            new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
            var passBaseKeyDerFun2 = new Rfc2898DeriveBytes(password, salt, 10000, HashAlgorithmName.SHA256);
            byte[] hash = passBaseKeyDerFun2.GetBytes(20);
            byte[] hashBytes = new byte[36];
            Array.Copy(salt, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);
            string hashedPassword = Convert.ToBase64String(hashBytes);
            return hashedPassword;
        }

    }
}
