using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    public class CascadeType
    {
        public const int All = 0x111;

        public const int Insert = 0x100;

        public const int Update = 0x010;

        public const int Delete = 0x001;
    }
}
