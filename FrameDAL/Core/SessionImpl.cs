using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Threading;
using FrameDAL.DbHelper;
using FrameDAL.Core;
using FrameDAL.Attributes;
using FrameDAL.Utility;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// ISession接口的实现类。
    /// Session代表了一个数据库会话，可使用它提供的方法将从数据库中存取实体。在一个会话中，可以有多次数据
    /// 库操作。会话根据需要自行打开或关闭数据库连接。一个会话可多次打开连接和关闭连接，长久不关闭会话并不
    /// 会占用太大的系统资源，但用完请一定要记得关闭，否则可能会导致缓存中的某些操作丢失。
    /// Session类实现了IDisposable接口，因此可以使用using代码块的自动释放资源的特性。
    /// Session是线程不安全的，在不同的线程内使用同一个Session对象会抛出InvalidOperationException。
    /// Session对象可通过AppContext.OpenSession()方法获得。
    /// Session对象维护了一个缓冲区，当事务未开启时进行的非查询操作将会暂存在缓冲区内，调用Flush()方法可
    /// 将缓冲区内的操作一次性送到数据库中执行。调用Close(), Dispose(), BeginTransaction()方法或者执行
    /// 查询操作时，Flush()方法会自动调用，以保证数据的一致性。
    /// </summary>
    public class SessionImpl : ISession
    {
        /// <summary>
        /// 获得一个bool值，指示Session是否已经关闭
        /// </summary>
        public bool IsClosed { get; private set; }

        private int threadId;

        private IDbHelper db;

        internal IDbHelper DbHelper 
        {
            get
            {
                CheckSessionStatus();
                return db;
            }
        }

        private class CacheBundle 
        {
            public string SqlText { get; set; }
            public object[] Parameters { get; set; }
            public object EntityRetrieveId { get; set; }
        }

        private Queue<CacheBundle> cache;

        internal SessionImpl(IDbHelper db)
        {
            this.db = db;
            IsClosed = false;
            threadId = Thread.CurrentThread.ManagedThreadId;
            cache = new Queue<CacheBundle>();
        }

        internal virtual int? ExecuteOrCache(string sqlText, object[] parameters)
        {
            CheckSessionStatus();
            return ExecuteOrCache(sqlText, parameters, null);
        }

        private int ExecuteRetrieveId(string sqlText, object[] parameters, object entityRetrieveId)
        {
            int count = db.ExecuteNonQuery(sqlText, parameters);
            if(entityRetrieveId != null)
            {
                PropertyInfo idProp = entityRetrieveId.GetType().GetIdProperty();
                object id = db.ExecuteScalar(db.Dialect.GetGeneratedKeySql(idProp.GetIdAttribute().SeqName));
                idProp.SetValueSafely(entityRetrieveId, id);
            }
            return count;
        }

        private int? ExecuteOrCache(string sqlText, object[] parameters, object entityRetrieveId)
        {
            CheckSessionStatus();
            if (db.InTransaction())
            {
                return ExecuteRetrieveId(sqlText, parameters, entityRetrieveId);
            }
            else
            {
                CacheBundle bundle = new CacheBundle();
                bundle.SqlText = sqlText;
                bundle.Parameters = parameters;
                bundle.EntityRetrieveId = entityRetrieveId;
                cache.Enqueue(bundle);
                return null;
            }
        }

        /// <summary>
        /// 返回一个bool值，指示是否已在此会话上开启事务
        /// </summary>
        /// <returns>事务已开启返回true，否则返回false</returns>
        public bool InTransaction()
        {
            return DbHelper.InTransaction();
        }

        /// <summary>
        /// 开启事务，具体的实现依赖于IDbHelper.BeginTransaction()方法
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void BeginTransaction()
        {
            CheckSessionStatus();
            DbHelper.BeginTransaction();
        }

        /// <summary>
        /// 提交事务，具体的实现依赖于DbHelper
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void CommitTransaction()
        {
            CheckSessionStatus();
            DbHelper.CommitTransaction();
        }

        /// <summary>
        /// 回滚事务，具体的实现依赖于DbHelper
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void RollbackTransaction()
        {
            CheckSessionStatus();
            DbHelper.RollbackTransaction();
        }
        
        /// <summary>
        /// 将实体对象插入数据库，当主键生成器不为Assign时，此方法会根据主键生成器的配置自动为其生成主键
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <returns>插入成功后，返回主键值</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public object Add(object entity)
        {
            return Add(entity, AppContext.Instance.Configuration.EnableCascade);
        }

        private object[] GetInsertParameters(object entity, bool enableCascade)
        {
            List<object> parameters = new List<object>();
            foreach (PropertyInfo prop in entity.GetType().GetCachedProperties())
            {
                ColumnAttribute col = prop.GetColumnAttribute();
                if (col != null && !col.ReadOnly)
                {
                    parameters.Add(prop.GetValue(entity, null));
                }
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                if (manyToOne != null && (manyToOne.Cascade & CascadeType.Insert) != 0 && enableCascade)
                {
                    parameters.Add(prop.GetValue(entity, null));
                }
            }
            return parameters.ToArray();
        }

        public object Add(object entity, bool enableCascade)
        {
            CheckSessionStatus();
            PropertyInfo idProp = entity.GetType().GetIdProperty();
            IdAttribute id = idProp.GetIdAttribute();
            switch (id.GeneratorType)
            {
                case GeneratorType.Uuid:
                    idProp.SetValueSafely(entity, Guid.NewGuid().ToString());
                    break;

                case GeneratorType.Sequence:
                    object nextval = CreateSqlQuery("select " + id.SeqName + ".nextval from dual").ExecuteScalar();
                    idProp.SetValueSafely(entity, nextval);
                    break;

                default:
                    break;
            }

            foreach (PropertyInfo prop in entity.GetType().GetCachedProperties())
            {
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                if (manyToOne != null && (manyToOne.Cascade & CascadeType.Insert) != 0 && enableCascade)
                {
                    
                }
            }

            ExecuteOrCache(
                db.Dialect.GetInsertSql(entity.GetType(), enableCascade),
                GetInsertParameters(entity, enableCascade),
                id.GeneratorType == GeneratorType.Identity ? entity : null);

            foreach (PropertyInfo prop in entity.GetType().GetCachedProperties())
            {
                OneToManyAttribute oneToMany = prop.GetOneToManyAttribute();
                if (oneToMany != null && (oneToMany.Cascade & CascadeType.Insert) != 0 && enableCascade)
                {

                }
                ManyToManyAttribute manyToMany = prop.GetManyToManyAttribute();
                if (manyToMany != null && (manyToMany.Cascade & CascadeType.Insert) != 0 && enableCascade)
                { 
                    
                }
            }
            return idProp.GetValue(entity, null);
        }

        /// <summary>
        /// 更新数据库中的实体
        /// </summary>
        /// <param name="entity">要更新的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void Update(object entity)
        {
            Update(entity, AppContext.Instance.Configuration.EnableCascade);
        }

        private object[] GetUpdateParameters(object entity, bool enableCascade)
        {
            List<object> parameters = new List<object>();
            foreach (PropertyInfo prop in entity.GetType().GetCachedProperties())
            {
                ColumnAttribute col = prop.GetColumnAttribute();
                if (col != null && !col.ReadOnly)
                {
                    parameters.Add(prop.GetValue(entity, null));
                }
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                if (manyToOne != null && (manyToOne.Cascade & CascadeType.Update) != 0 && enableCascade)
                {
                    parameters.Add(prop.GetValue(entity, null));
                }
            }
            parameters.Add(entity.GetType().GetIdProperty().GetValue(entity, null));
            return parameters.ToArray();
        }

        public void Update(object entity, bool enableCascade)
        {
            CheckSessionStatus();
            ExecuteOrCache(
                db.Dialect.GetUpdateSql(entity.GetType(), enableCascade),
                GetUpdateParameters(entity, enableCascade));
        }

        /// <summary>
        /// 在数据库中删除实体
        /// </summary>
        /// <param name="entity">要删除的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void Delete(object entity)
        {
            CheckSessionStatus();
            object id = entity.GetType().GetIdProperty().GetValue(entity, null);
            ExecuteOrCache(db.Dialect.GetDeleteSql(entity.GetType()), new object[] { id });
        }

        /// <summary>
        /// 从数据库中获得实体
        /// </summary>
        /// <typeparam name="T">实体类型</typeparam>
        /// <param name="id">主键值</param>
        /// <returns>返回获得的实体，若没有结果，返回null</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public T Get<T>(object id) where T : class, new()
        {
            return Get<T>(id, AppContext.Instance.Configuration.EnableLazy);
        }

        public T Get<T>(object id, bool enableLazy) where T : class, new()
        {
            CheckSessionStatus();
            Dictionary<string, string> resultMap;
            ISqlQuery query = CreateSqlQuery();
            query.SqlText = db.Dialect.GetSelectSql(typeof(T), enableLazy, out resultMap);
            query.Parameters = new object[] { id };
            query.ResultMap = resultMap;
            return query.ExecuteGetEntity<T>(enableLazy);
        }

        /// <summary>
        /// 刷新缓存，把缓存中的非查询操作全部送到数据库中执行
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void AcceptChanges()
        {
            CheckSessionStatus();
            if (cache.Count == 0) return;
            try
            {
                db.BeginTransaction();
                while (cache.Count != 0)
                {
                    CacheBundle bundle = cache.Dequeue();
                    ExecuteRetrieveId(bundle.SqlText, bundle.Parameters, bundle.EntityRetrieveId);
                }
                db.CommitTransaction();
            }
            catch
            {
                if (db.InTransaction()) db.RollbackTransaction();
                throw;
            }
        }

        /// <summary>
        /// 创建Query对象
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public ISqlQuery CreateSqlQuery()
        {
            CheckSessionStatus();
            return new SqlQueryImpl(this);
        }

        /// <summary>
        /// 创建Query对象，同时使用给定参数对其进行初始化
        /// </summary>
        /// <param name="sqlText">SQL命令</param>
        /// <param name="parameters">SQL命令参数</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public ISqlQuery CreateSqlQuery(string sqlText, params object[] parameters)
        {
            CheckSessionStatus();
            ISqlQuery query = CreateSqlQuery();
            query.SqlText = sqlText;
            query.Parameters = parameters;
            return query;
        }

        /// <summary>
        /// 创建命名Query对象，从配置文件中读取给定名字的SQL对其进行初始化
        /// </summary>
        /// <param name="name">SQL名字</param>
        /// <param name="parameters">SQL参数值</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public ISqlQuery CreateNamedSqlQuery(string name, params object[] parameters)
        {
            CheckSessionStatus();
            ISqlQuery query = CreateSqlQuery();
            query.SqlText = AppContext.Instance.Configuration.GetNamedSql(name);
            query.Parameters = parameters;
            return query;
        }
        
        /// <summary>
        /// 释放Session对象占有的资源，与Close()方法效果相同
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void Dispose()
        {
            Close();
        }

        /// <summary>
        /// 关闭Session，Session关闭时，若已开启事务但未提交，会自动回滚事务。若缓冲区不为空，会刷新缓冲区
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        public void Close()
        {
            CheckSessionStatus();
            if (db.InTransaction())
            {
                db.RollbackTransaction();
                cache.Clear();
            }
            else
            {
                AcceptChanges();
            }
            IsClosed = true;
        }

        private void CheckSessionStatus()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭。");
            if (threadId != Thread.CurrentThread.ManagedThreadId)
                throw new InvalidOperationException("在其他的线程中使用此Session。");
        }
    }
}
