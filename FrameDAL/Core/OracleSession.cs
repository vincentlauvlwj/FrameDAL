using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
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
        internal OracleSession(IDbHelper db) : base(db) { }

        /// <summary>
        /// 创建Query对象，不同的数据库使用不同的Query对象
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public override IQuery CreateQuery()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭。");
            if (threadId != Thread.CurrentThread.ManagedThreadId)
                throw new InvalidOperationException("在其他的线程中使用此Session。");
            OracleQuery query = new OracleQuery();
            query.Session = this;
            return query;
        }
    }
}
