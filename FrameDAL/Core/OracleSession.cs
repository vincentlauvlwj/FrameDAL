using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Query;
using FrameDAL.DbHelper;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// Oracle数据库会话
    /// </summary>
    public class OracleSession : BaseSession
    {
        public OracleSession(IDbHelper db) : base(db) { }

        /// <summary>
        /// 创建Query对象，不同的数据库使用不同的Query对象
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public override IQuery CreateQuery()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            IQuery query = new OracleQuery();
            query.Session = this;
            return query;
        }
    }
}
