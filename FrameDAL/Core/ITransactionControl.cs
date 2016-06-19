using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Core
{
    public interface ITransactionControl
    {
        /// <summary>
        /// 返回一个bool值，指示是否已在此会话上开启事务
        /// </summary>
        /// <returns>事务已开启返回true，否则返回false</returns>
        bool InTransaction();

        /// <summary>
        /// 开启事务
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void BeginTransaction();

        /// <summary>
        /// 提交事务
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void CommitTransaction();

        /// <summary>
        /// 回滚事务
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void RollbackTransaction();
    }
}
