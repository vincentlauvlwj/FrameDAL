using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 当实体-数据表映射错误时，抛出该异常
    /// </summary>
    public class EntityMappingException : FrameDALException
    {
        public EntityMappingException() : base() { }

        public EntityMappingException(string message) : base(message) { }

        public EntityMappingException(string message, Exception innerException) : base(message, innerException) { }
    }
}
