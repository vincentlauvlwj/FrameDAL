using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Exceptions
{
    public class EntityMappingException : FrameDALException
    {
        public EntityMappingException() : base() { }

        public EntityMappingException(string message) : base(message) { }

        public EntityMappingException(string message, Exception innerException) : base(message, innerException) { }
    }
}
