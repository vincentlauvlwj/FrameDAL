using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.DbHelper;

namespace FrameDAL.Core
{
    public class MySqlSession : BaseSession
    {
        public MySqlSession(IDbHelper db) : base(db) { }
    }
}
