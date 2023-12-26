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
            GenericClass<int> SaveUser(UserPOJO userPojoNew);

            [OperationContract]
            GenericClass<int> UpdateUserInformation(String editedName, String originalName);

            [OperationContract]
            GenericClass<int> UpdatePlayerPhoto(int idPlayer, int imageId);
      

          

    }

 

}
