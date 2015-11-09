using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace FrameDAL.Query
{
    public class MySqlQuery : BaseQuery
    {
        protected override void BeforeQuery()
        {
            if (PageSize == 0) return;
            SqlText += " limit " + FirstResult + ", " + PageSize;
        }
    }
}
