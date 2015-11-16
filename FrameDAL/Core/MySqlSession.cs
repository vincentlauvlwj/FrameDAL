using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using FrameDAL.DbHelper;
using FrameDAL.Query;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// MySql数据库会话
    /// </summary>
    public class MySqlSession : BaseSession
    {
        internal MySqlSession(IDbHelper db) : base(db) { }

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
            MySqlQuery query = new MySqlQuery();
            query.Session = this;
            return query;
        }
    }
}
