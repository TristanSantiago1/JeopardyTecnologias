using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestJeopardyServidor.TestService
{
    public class TestFixtureFoDbDown : IDisposable
    {
        public TestFixtureFoDbDown()
        {
            StopSqlServerService();
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
