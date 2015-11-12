using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 当配置文件有错误时，抛出该异常
    /// </summary>
    public class ConfigurationException : FrameDALException
    {
        public ConfigurationException() : base() { }

        public ConfigurationException(string message) : base(message) { }

        public ConfigurationException(string message, Exception innerException) : base(message, innerException) { }
    }
}
