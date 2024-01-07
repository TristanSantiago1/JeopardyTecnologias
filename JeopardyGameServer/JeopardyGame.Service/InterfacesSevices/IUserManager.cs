using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Service.InterfacesServices
{
       [ServiceContract]   
        public interface IUserManager
        {
            [OperationContract]
            GenericClass<int> SaveUser(UserPojo userPojoNew, string codeEntered);

            [OperationContract]
            GenericClass<int> UpdateUserInformation(int idUser, String editedName);

            [OperationContract]
            GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId);
            [OperationContract]
            GenericClass<int> UpdateEmailUser(int idUser, string email);

            [OperationContract]
            GenericClass<int> UpdatePasswordUser(string userName, string password);

    }

 

}
