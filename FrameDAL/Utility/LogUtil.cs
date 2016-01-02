using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;

namespace FrameDAL.Utility
{
    public class LogUtil
    {
        private string logFile;

        public LogUtil(string logFile, bool append)
        {
            logFile = logFile.Replace("\\", "/");
            if (logFile.Contains('/') && logFile[0] != '/')
            {
                string dir = logFile.Substring(0, logFile.LastIndexOf("/"));
                if (!Directory.Exists(dir)) Directory.CreateDirectory(dir);
            }
            this.logFile = logFile;
            using (StreamWriter writer = new StreamWriter(logFile, append))
            {
                writer.WriteLine();
                writer.WriteLine("--------------------------------------------------------------------------");
                writer.WriteLine("|                 FrameDAL - Powered by Vincent Lau.                     |");
                writer.WriteLine("--------------------------------------------------------------------------");
            }
        }

        public void WriteLine(string line)
        {
            using (StreamWriter writer = new StreamWriter(logFile, true))
            {
                writer.WriteLine(DateTime.Now.ToString("[yyyy-MM-dd HH:mm:ss]") + " Thread ID: " + Thread.CurrentThread.ManagedThreadId);
                writer.WriteLine(line);
            }
        }

        ~LogUtil()
        {
            WriteLine("Program exit...");
        }
    }
}
