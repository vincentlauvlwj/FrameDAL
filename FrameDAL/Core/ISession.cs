using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Linq;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// Session代表了一个数据库会话，可使用它提供的方法将从数据库中存取实体。会话会根据需要自行打开或关闭
    /// 数据库连接。一个会话可多次打开连接和关闭连接，长久不关闭会话并不会占用太大的系统资源，但用完请一定
    /// 要记得关闭，否则可能会导致缓存中的某些操作丢失。
    /// Session接口继承了IDisposable接口，因此可以使用using代码块的自动释放资源的特性。
    /// Session是线程不安全的，在不同的线程内使用同一个Session对象会抛出InvalidOperationException。
    /// Session对象可通过AppContext.OpenSession()方法获得。
    /// Session对象维护了一个缓冲区，当事务未开启时进行的非查询操作将会暂存在缓冲区内，调用Flush()方法可
    /// 将缓冲区内的操作一次性送到数据库中执行。调用Close(), Dispose(), BeginTransaction()方法或者执行
    /// 查询操作时，AccepChanges()方法会自动调用，以保证数据的一致性。
    /// </summary>
    public interface ISession : ITransactionControl, IObjectOperator, IDisposable
    {
        /// <summary>
        /// 获得一个bool值，指示Session是否已经关闭
        /// </summary>
        bool IsClosed { get; }
        /// <summary>
        /// 刷新缓存，把缓存中的非查询操作全部送到数据库中执行
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void AcceptChanges();

        /// <summary>
        /// 关闭Session，Session关闭时，若已开启事务但未提交，会自动回滚事务。若缓冲区不为空，会刷新缓冲区
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Close();
    }
}
