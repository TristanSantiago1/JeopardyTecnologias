using JeopardyGame.Data.Exceptions;
using JeopardyGame.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using JeopardyGame.Service.ServiceImplementation;

namespace TestJeopardyServidor.TestService
{
    public class ConfiguracionBaseDeDatos : IDisposable
    {
        public readonly User newUser;
        public ConfiguracionBaseDeDatos()
        {
            JeopardyGame.Host.Connection.OpenConnection.GetConectionString();
            using (var context = new JeopardyDBContainer())
            {
                newUser = new User()
                {
                    EmailAddress = "pruebas@gmail.com",
                    Name = "Tester",
                    Password = "PasswordTest",
                    UserName = "testeoDona"
                };
                context.Users.Add(newUser);
                context.SaveChanges();
            }
        }
        public void Dispose()
        {
            using (var contextBD = new JeopardyDBContainer())
            {
                contextBD.Database.ExecuteSqlCommand("DELETE FROM Users where UserName = 'testeoDona' ;");
            }
        }
    }

    public class CreacionExitosaPruebas : IClassFixture<ConfiguracionBaseDeDatos>
    {
        private readonly String email = "pruebas@gmail.com";
        ConfiguracionBaseDeDatos _configuracion;
        public CreacionExitosaPruebas(ConfiguracionBaseDeDatos configuracion)
        {
            _configuracion = configuracion;
        }
        [Fact]
        public void emailExist()
        {
            ValidateUserExistenceImplementation objeto = new ValidateUserExistenceImplementation();
            var actualResponse = objeto.EmailAlreadyExist(email);
            Assert.Equal(CodesDictionary.UNSUCCESFULL_EVENT, actualResponse.CodeEvent);
        }

    }
}
