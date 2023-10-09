using JeopardyGame.Service.InterfacesSevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace TestJeopardyServidor.TestService
{
   
    public class TestsUserManager
    {

        private readonly JeopardyGame.Service.ServiceImplementation.UserManager _UserManagerIntance;
        public TestsUserManager()
        {
            _UserManagerIntance = new JeopardyGame.Service.ServiceImplementation.UserManager();
        }
 

        [Fact]
        public void TestSaveUserSucc()
        {
            UserPOJO userTest = new UserPOJO();
            userTest.Name = "NameTest";
            userTest.UserName = "UserNameTest";
            userTest.EmailAddress = "emailTest";
            userTest.Password = "passwordTest";
            int result = _UserManagerIntance.SaveUser(userTest);
            Assert.NotEqual(0, result);
        }
    }
}
