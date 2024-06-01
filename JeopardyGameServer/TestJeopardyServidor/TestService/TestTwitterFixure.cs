using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using JeopardyGame.Data.Exceptions;
using JeopardyGame.Service.ServiceImplementation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using Xunit.Abstractions;

namespace TestJeopardyServidor.TestService
{
    public class TestTwitterFixure : IDisposable
    {
        public readonly User newUser;
        public TestTwitterFixure() {

            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var context = new JeopardyDBContainer())
            {
                newUser = new User()
                {
                    EmailAddress = "pruebas@gmail.com",
                    Name = "",
                    Password = "PasswordTest",
                    UserName = "testeoDona",
                    TwitterUserName = "Perritos"
                };
                context.Users.Add(newUser);
                context.SaveChanges();
            }
        }
        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                contextBD.Database.ExecuteSqlCommand(Properties.BdActions.DeleteUsers);

                contextBD.Database.ExecuteSqlCommand(Properties.BdActions.RestoreTwitter);
            }
        }
        public class TestTwitter : IClassFixture<TestTwitterFixure>
        {
            private readonly String twitterUserNameValidate = "Gatitos";
            private readonly String twitterUserNameInvalidate = "Perritos";
            private readonly int idUserExistents = 22;
            private readonly int idUserDontExistents = 1;

            TestTwitterFixure _configuracion;
            public TestTwitter(TestTwitterFixure configuracion)
            {
                _configuracion = configuracion;
            }
            [Fact]
            public void twitterUserExistSucces()
            {
                var actualResponse = UserManagerDataOperation.ValidateIfTwitterAlredadyExist(twitterUserNameValidate);
                Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
            }

            [Fact]
            public void twitterUserExistUnsucces()
            {
                var actualResponse = UserManagerDataOperation.ValidateIfTwitterAlredadyExist(twitterUserNameInvalidate);
                Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
            }

            [Fact]
            public void saveTwitterUserSucces()
            {
                var actualResponse = UserManagerDataOperation.SaveUpdateTwitterUserName(idUserExistents, twitterUserNameValidate);
                Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
            }
            [Fact]
            public void saveTwitterUserUnsucces()
            {
                var actualResponse = UserManagerDataOperation.SaveUpdateTwitterUserName(idUserDontExistents, twitterUserNameInvalidate);
                Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
            }

            [Fact]
            public void SaveTwitterServiceSucces()
            {
                UserManagerImplementation userManager = new UserManagerImplementation();
                var actualResponse = userManager.SaveUpdateTwitterUserName(idUserExistents, twitterUserNameValidate);
                Assert.Equal(CodesDictionary.SUCCESFULL_EVENT, actualResponse.CodeEvent);
            }


            [Fact]
            public void SaveTwitterServiceUnucces()
            {
                UserManagerImplementation userManager = new UserManagerImplementation();
                var actualResponse = userManager.SaveUpdateTwitterUserName(idUserDontExistents, twitterUserNameValidate);
                Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
            }
        }
    }
}
