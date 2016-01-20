using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Core;

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
    /// 查询操作时，Flush()方法会自动调用，以保证数据的一致性。
    /// </summary>
    public interface ISession : IDisposable
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

        /// <summary>
        /// 将实体对象插入数据库，当主键生成器不为Assign时，此方法会根据主键生成器的配置自动为其生成主键
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <returns>插入成功后，返回主键值</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        object Add(object entity);

        object Add(object entity, bool enableCascade);

        /// <summary>
        /// 更新数据库中的实体
        /// </summary>
        /// <param name="entity">要更新的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Update(object entity);

        void Update(object entity, bool enableCascade);

        void Save(object entity);

        void Save(object entity, bool enableCascade);

        /// <summary>
        /// 在数据库中删除实体
        /// </summary>
        /// <param name="entity">要删除的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Delete(object entity);

        void Delete(object entity, bool enableCascade);

        /// <summary>
        /// 从数据库中获得实体
        /// </summary>
        /// <typeparam name="T">实体类型</typeparam>
        /// <param name="id">主键值</param>
        /// <returns>返回获得的实体，若没有结果，返回null</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        T Get<T>(object id) where T : class, new();

        T Get<T>(object id, bool enableLazy) where T : class, new();

        /// <summary>
        /// 刷新缓存，把缓存中的非查询操作全部送到数据库中执行
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void AcceptChanges();

        /// <summary>
        /// 创建Query对象，不同的数据库使用不同的Query对象
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateSqlQuery();

        /// <summary>
        /// 创建Query对象，同时使用给定参数对其进行初始化
        /// </summary>
        /// <param name="sqlText">SQL命令</param>
        /// <param name="parameters">SQL命令参数</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateSqlQuery(string sqlText, params object[] parameters);

        /// <summary>
        /// 创建命名Query对象，从配置文件中读取给定名字的SQL对其进行初始化
        /// </summary>
        /// <param name="name">SQL名字</param>
        /// <param name="parameters">SQL参数值</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateNamedSqlQuery(string name, params object[] parameters);

        /// <summary>
        /// 关闭Session，Session关闭时，若已开启事务但未提交，会自动回滚事务。若缓冲区不为空，会刷新缓冲区
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Close();
    }
}
