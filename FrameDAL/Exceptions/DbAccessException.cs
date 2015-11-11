using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    public class DbAccessException : FrameDALException
    {
        public DbAccessException() : base() { }

        public DbAccessException(string message) : base(message) { }

        public DbAccessException(string message, Exception innerException) : base(message, innerException) { }
    }
}
