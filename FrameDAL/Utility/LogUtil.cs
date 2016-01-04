using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;
using System.Diagnostics;

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
            using (StreamWriter writer = new LogStreamWriter(logFile, append))
            {
                writer.WriteLine("");
                writer.WriteLine("--------------------------------------------------------------------------");
                writer.WriteLine("|                 FrameDAL - Powered by Vincent Lau.                     |");
                writer.WriteLine("--------------------------------------------------------------------------");
            }
        }

        public void WriteLine(string line)
        {
            using (StreamWriter writer = new LogStreamWriter(logFile, true))
            {
                writer.WriteLine(DateTime.Now.ToString("[yyyy-MM-dd HH:mm:ss]") + " Thread ID: " + Thread.CurrentThread.ManagedThreadId);
                writer.WriteLine(line);
            }
        }

        ~LogUtil()
        {
            WriteLine("Program exit...");
        }

        private class LogStreamWriter : StreamWriter
        {
            public LogStreamWriter(string logFile, bool append) : base(logFile, append) { }

            public override void WriteLine(string value)
            {
                base.WriteLine(value);
                Debug.WriteLine(value);
            }
        }
    }
}
