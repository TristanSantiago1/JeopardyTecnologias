using JeopardyGame.Service.InterfacesServices;
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

        private readonly JeopardyGame.Service.ServiceImplementation.UserManagerImplementation _UserManagerIntance;
        public TestsUserManager()
        {
            _UserManagerIntance = new JeopardyGame.Service.ServiceImplementation.UserManagerImplementation();
        }
 

        [Fact]
        public void TestSaveUserSucc()
        {
          
        }
    }
}
