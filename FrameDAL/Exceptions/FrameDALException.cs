using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    public class FrameDALException : Exception
    {
        public FrameDALException() : base() { }

        public FrameDALException(string message) : base(message) { }

        public FrameDALException(string message, Exception innerException) : base(message, innerException) { }
    }
}
