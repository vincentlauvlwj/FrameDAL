using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;
using FrameDAL.Core;
using FrameDAL.Utility;
using FrameDAL.Linq;
using System.Runtime.InteropServices;

namespace ResumeFactory
{
    public class AssertFailedException : Exception { }

    public class BaseTest
    {
        protected ISession session;

        public void Run()
        {
            Init();

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
                catch(AssertFailedException e)
                {
                    Shell.WriteLine("AssertFailed: {0}", method.Name);
                }
                catch(Exception e)
                {
                    Shell.WriteLine("Error: {0} : {1}", method.Name, e.Message);
                }
            }

            Destroy();
        }

        public void Debug(Action fn)
        {
            Init();

            DateTime start = DateTime.Now;
            fn();
            DateTime stop = DateTime.Now;
            Shell.WriteLine("Success: {0} : {1}ms", fn.Method.Name, (stop - start).TotalMilliseconds);

            Destroy();
        }

        protected virtual void Init()
        {
            Shell.AllocConsole();
            session = AppContext.Instance.OpenSession();
            session.BeginTransaction();
        }

        protected virtual void Destroy()
        {
            session.CommitTransaction();
            session.Close();
            Shell.Pause();
            Shell.FreeConsole();
        }

        protected void Assert(bool predicate)
        {
            if(!predicate)
            {
                throw new AssertFailedException();
            }
        }

        protected void Assert(object obj1, object obj2)
        {
            Assert(object.Equals(obj1, obj2));
        }

        protected string ObjectToString<T>(T obj)
        {
            if (obj == null) return "null";
            if (IsBaseType(typeof(T))) return obj.ToString();
            StringBuilder sb = new StringBuilder();
            sb.Append(typeof(T).Name + " { ");
            PropertyInfo[] props = typeof(T).GetCachedProperties();
            for (int i = 0; i < props.Length; i++)
            {
                if (i > 0) sb.Append(", ");
                sb.Append(props[i].Name + " = " + props[i].GetValue(obj, null));
            }
            sb.Append(" }");
            return sb.ToString();
        }

        private bool IsBaseType(Type type)
        {
            return type == typeof(string) || type.IsValueType;
        }

        protected List<T> TestQuery<T>(IQueryable<T> query)
        {
            LinqQuery<T> q = query as LinqQuery<T>;
            Shell.WriteLine("\nLinqExpression:\n{0}", q.ToString());
            Shell.WriteLine("\nTranslated SQL:\n{0}", q.QueryText);
            List<T> result = q.ToList();
            StringBuilder sb = new StringBuilder();
            foreach (T item in result)
            {
                sb.AppendLine(ObjectToString(item));
            }
            Shell.WriteLine("\nResults:\n{0}", sb.ToString());
            return result;
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
            if (output != null && output.StartsWith("AssertFailed")) return ConsoleColor.Yellow;
            if (output != null && output.StartsWith("Error")) return ConsoleColor.Red;
            if (output != null && output.StartsWith("Success")) return ConsoleColor.Green;
            return ConsoleColor.Gray;
        }
    }
}
