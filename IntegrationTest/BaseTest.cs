using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;
using FrameDAL.Core;
using System.Runtime.InteropServices;

namespace ResumeFactory
{
    public class BaseTest
    {
        protected ISession session;

        public void Run()
        {
            Shell.AllocConsole();
            session = AppContext.Instance.OpenSession();
            session.BeginTransaction();

            foreach(MethodInfo method in this.GetType().GetMethods().Where(m => m.Name.StartsWith("Test")))
            {
                try
                {
                    Action fn = (Action)Delegate.CreateDelegate(typeof(Action), this, method);
                    DateTime start = DateTime.Now;
                    fn();
                    DateTime stop = DateTime.Now;
                    Shell.WriteLine("Success: {0} : {1}ms", method.Name, (stop - start).TotalMilliseconds);
                }
                catch(Exception e)
                {
                    Shell.WriteLine("Failed: {0} : {1}", method.Name, e.Message);
                }
            }

            session.CommitTransaction();
            session.Close();
            Shell.Pause();
            Shell.FreeConsole();
        }

        protected void Assert(bool predicate)
        {
            if(!predicate)
            {
                throw new Exception("assert failed");
            }
        }

        protected void Assert(object obj1, object obj2)
        {
            Assert(object.Equals(obj1, obj2));
        }
    }

    static class Shell
    {
        [DllImport("kernel32.dll")]
        public static extern Boolean AllocConsole();
        [DllImport("kernel32.dll")]
        public static extern Boolean FreeConsole();

        public static void WriteLine(string format, params object[] args)
        {
            WriteLine(string.Format(format, args));
        }

        public static void WriteLine(string output)
        {
            Console.ForegroundColor = GetConsoleColor(output);
            Console.WriteLine(@"[{0}] {1}", DateTime.Now.ToShortTimeString(), output);
        }

        public static void Pause()
        {
            WriteLine("Press any key to continue...");
            Console.ReadKey();
        }

        private static ConsoleColor GetConsoleColor(string output)
        {
            if (output.StartsWith("Failed")) return ConsoleColor.Red;
            if (output.StartsWith("Success")) return ConsoleColor.Green;
            return ConsoleColor.Gray;
        }
    }
}
