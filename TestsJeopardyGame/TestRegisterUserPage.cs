using JeopardyGame.Pages;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Text;

namespace TestsJeopardyGame
{
    [TestClass]
    public class TestRegisterUserPage
    {
        private readonly UserRegister _UserRegister;

        public TestRegisterUserPage()
        {
            _UserRegister = new JeopardyGame.Pages.UserRegister();
        }

        [TestMethod]
        public void CheckPasswordSucc()
        {
            int result = _UserRegister.CheckPassword();
            Assert.AreEqual(1, result);
        }

        [TestMethod]
        public void CheckPasswordFail()
        {
            int result = _UserRegister.CheckPassword();
            Assert.AreEqual(0, result);
        }

        [TestMethod]
        public void CheckEmailSuccess()
        {
            int result = _UserRegister.CheckEmailAddress();
            Assert.AreEqual(1, result);
        }

        [TestMethod]
        public void CheckEmailFail()
        {
            int result = _UserRegister.CheckEmailAddress();
            Assert.AreEqual(1, result);
        }

        [TestMethod]
        public void CheckEmtyFieldsSucces()
        {
            int result = _UserRegister.CheckEmptyFields();
            Assert.AreEqual(1, result);
        }

        [TestMethod]
        public void CheckEmtyFieldsFail()
        {
            int result = _UserRegister.CheckEmptyFields();
            Assert.AreEqual(0, result);
        }
    }
}
