using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.DbHelper;
using FrameDAL.Query;

namespace FrameDAL.Core
{
    public class MySqlSession : BaseSession
    {
        public MySqlSession(IDbHelper db) : base(db) { }

        public override IQuery CreateQuery()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            IQuery query = new MySqlQuery();
            query.Session = this;
            return query;
        }
    }
}
