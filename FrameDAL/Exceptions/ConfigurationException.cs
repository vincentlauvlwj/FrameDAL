using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    public class ConfigurationException : FrameDALException
    {
        public ConfigurationException() : base() { }

        public ConfigurationException(string message) : base(message) { }

        public ConfigurationException(string message, Exception innerException) : base(message, innerException) { }
    }
}
