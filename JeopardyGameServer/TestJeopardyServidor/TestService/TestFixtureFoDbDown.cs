using JeopardyGame.Data;
using JeopardyGame.Data.DataAccess;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestJeopardyServidor.TestService
{
    public class TestFixtureFoDbDown : IDisposable
    {
        public readonly Game gameTest;
        public readonly User userTest1;
        public readonly Player playerTest;
        public readonly State stateTest;
        public readonly List<Category> categories;
        public readonly List<Question> questions;
        public GamePlayer gamePlayerTest;
        public int idUser;
        public int idPlayer;
        public TestFixtureFoDbDown()
        {
            StopSqlServerService();
            userTest1 = new User()
            {
                IdUser = 0,
                EmailAddress = "userTest@gmail.com",
                Name = "",
                Password = "PasswordTest",
                UserName = "userNameTest"
            };
            playerTest = new Player()
            {
                IdPlayer = 0,
                GeneralPoints = 0,
                IdAvatarActual = 0,
                NoReports = 0,
                State_idState = 3,
                User_IdUser = idUser,
            };
            stateTest = new State()
            {
                IdState = 3,
                StateDescription = "Guest"
            };
            gameTest = new Game()
            {
                RoomCode = 22222,
                Host_IdHost = 2
            };
            categories = new List<Category>() { new Category() { IdCategory = 1, EnglishCategoryDescription = "Biology", SpanishCategoryDescription = "Biologia" } };
            questions = new List<Question>() { new Question() { CategoryIdCategory = 1, EnglishQuestionDescription = "Whats", SpanishQuestionDescription = "que", IdQuestion = 1, RigthAwnser = "1", ValueWorth = 300 } };
            gamePlayerTest = new GamePlayer()
            {
                Game_RoomCode = gameTest.RoomCode,
                PlaceInGame = 1,
                Player_IdPlayer = playerTest.IdPlayer,
                PointsInGame = 10,
                Game = gameTest
            };

        }

        public void Dispose()
        {
            StartSqlServerService();
        }
        private void StopSqlServerService()
        {
            ExecuteCommand("net stop MSSQL$SQLEXPRESS");
        }

        private void StartSqlServerService()
        {
            ExecuteCommand("net start MSSQL$SQLEXPRESS");
        }

        private void ExecuteCommand(string command)
        {
            using (var process = new Process())
            {
                process.StartInfo.FileName = "cmd.exe";
                process.StartInfo.Arguments = $"/c {command}";
                process.StartInfo.RedirectStandardOutput = true;
                process.StartInfo.UseShellExecute = false;
                process.StartInfo.CreateNoWindow = true;
                process.Start();
                process.WaitForExit();
            }
        }

    }
}
