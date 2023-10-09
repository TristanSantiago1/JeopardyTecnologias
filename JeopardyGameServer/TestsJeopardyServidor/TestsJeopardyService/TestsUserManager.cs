using JeopardyGame.Service.InterfacesSevices;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Text;

namespace TestsJeopardyServidor.TestsJeopardyService
{
    /// <summary>
    /// Descripción resumida de TestsUserManager
    /// </summary>
    [TestClass]
    public class TestsUserManager
    {
        
        private readonly JeopardyGame.Service.ServiceImplementation.UserManager _UserManagerIntance ;
        public TestsUserManager()
        {
            _UserManagerIntance = new JeopardyGame.Service.ServiceImplementation.UserManager();
        }

        private TestContext testContextInstance;

        /// <summary>
        ///Obtiene o establece el contexto de las pruebas que proporciona
        ///información y funcionalidad para la serie de pruebas actual.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Atributos de prueba adicionales
        //
        // Puede usar los siguientes atributos adicionales conforme escribe las pruebas:
        //
        // Use ClassInitialize para ejecutar el código antes de ejecutar la primera prueba en la clase
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup para ejecutar el código una vez ejecutadas todas las pruebas en una clase
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Usar TestInitialize para ejecutar el código antes de ejecutar cada prueba 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup para ejecutar el código una vez ejecutadas todas las pruebas
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestSaveUserSucc()
        {
            UserPOJO userTest = new UserPOJO();
            userTest.Name = "NameTest";
            userTest.UserName = "UserNameTest";
            userTest.EmailAddress = "emailTest";
            userTest.Password = "passwordTest";
            int result = _UserManagerIntance.SaveUser(userTest);
            Assert.AreNotEqual(0, result);
        }
    }
}
