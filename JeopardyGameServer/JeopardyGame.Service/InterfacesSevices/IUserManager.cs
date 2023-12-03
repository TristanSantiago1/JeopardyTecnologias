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
            GenericClass<int> ValidateCredentials(UserValidate newUserValidate);

            [OperationContract]
            GenericClass<int> EmailAlreadyExist(String email);

            [OperationContract]
            GenericClass<int> UserNameAlreadyExist(String userName);

            [OperationContract]
            GenericClass<int> SentEmailCodeConfirmation(String email, String subject, String code);

            [OperationContract]
            GenericClass<int> UpdateUserInformation(String editedName, String originalName);

            [OperationContract]
            List<PlayerInfo> GetPlayersInfo();



            [DataContract]
            public class PlayerInfo
            {
                [DataMember]
                public string Name { get; set; }

                [DataMember]
                public long Points { get; set; }
        }

    }

 

}
