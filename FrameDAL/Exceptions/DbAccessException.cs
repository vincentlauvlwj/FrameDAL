using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 当访问数据库发生错误时，抛出该异常
    /// </summary>
    public class DbAccessException : FrameDALException
    {
        public DbAccessException() : base() { }

        public DbAccessException(string message) : base(message) { }

        public DbAccessException(string message, Exception innerException) : base(message, innerException) { }
    }
}
