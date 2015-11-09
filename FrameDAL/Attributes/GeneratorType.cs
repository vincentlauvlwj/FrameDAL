using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    public enum GeneratorType
    {
        Assign = 1,
        Uuid = 2,
        Identity = 3,
        Sequence = 4
    }
}
