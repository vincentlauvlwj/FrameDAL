using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.DbHelper;
using FrameDAL.Query;
using FrameDAL.Attributes;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 各种Session类的基类，实现了Session的一些通用的方法，不同的数据库使用不同的Session。
    /// Session代表了一个数据库会话，可使用它提供的方法将从数据库中存取实体。会话会根据需要自行打开或关闭
    /// 数据库连接。一个会话可多次打开连接和关闭连接，长久不关闭会话并不会占用太大的系统资源，但用完请一定
    /// 要记得关闭，否则可能会导致缓存中的某些操作丢失。
    /// Session类实现了IDisposable接口，因此可以使用using代码块的自动释放资源的特性。
    /// Session是线程不安全的，在不同的线程内使用同一个Session对象可能会造成不可预知的错误。
    /// Session对象可通过AppContext.OpenSession()方法获得。
    /// Session对象维护了一个缓冲区，当事务未开启时进行的非查询操作将会暂存在缓冲区内，调用Flush()方法可
    /// 将缓冲区内的操作一次性送到数据库中执行。调用Close(), Dispose(), BeginTransaction()方法或者执行
    /// 查询操作时，Flush()方法会自动调用，以保证数据的一致性。
    /// </summary>
    public abstract class BaseSession : ISession
    {
        /// <summary>
        /// 获得一个bool值，指示Session是否已经关闭
        /// </summary>
        public bool IsClosed { get; private set; }

        protected IDbHelper db;

        internal IDbHelper DbHelper 
        {
            get
            {
                if (IsClosed) throw new InvalidOperationException("Session已关闭");
                return db;
            }
            private set
            {
                db = value;
            }
        }

        protected class Bundle 
        {
            public string SqlText;
            public object[] Parameters;
        }

        protected Queue<Bundle> cache;

        protected BaseSession(IDbHelper db)
        {
            this.db = db;
            IsClosed = false;
            cache = new Queue<Bundle>();
        }

        /// <summary>
        /// 将一个非查询操作放入缓冲区
        /// </summary>
        /// <param name="sqlText">SQL命令</param>
        /// <param name="parameters">SQL命令的参数</param>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        internal virtual void AddToCache(string sqlText, object[] parameters)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            Bundle bundle = new Bundle();
            bundle.SqlText = sqlText;
            bundle.Parameters = parameters;
            cache.Enqueue(bundle);
        }

        /// <summary>
        /// 开启事务，具体的实现依赖于IDbHelper.BeginTransaction()方法
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void BeginTransaction()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            DbHelper.BeginTransaction();
            Flush();
        }

        /// <summary>
        /// 提交事务，具体的实现依赖于DbHelper
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void CommitTransaction()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            DbHelper.CommitTransaction();
        }

        /// <summary>
        /// 回滚事务，具体的实现依赖于DbHelper
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void RollbackTransaction()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            DbHelper.RollbackTransaction();
        }

        /// <summary>
        /// 将实体对象插入数据库，当主键生成器不为Assign时，此方法会根据主键生成器的配置自动为其生成主键
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <returns>插入成功后，返回主键值</returns>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public object Add(object entity)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            PropertyInfo idProp = AppContext.Instance.GetIdProperty(entity.GetType());
            Id id = AppContext.Instance.GetId(idProp);
            switch (id.GeneratorType)
            {
                case GeneratorType.Uuid:
                    AppContext.Instance.SetPropertyValue(entity, idProp, Guid.NewGuid().ToString());
                    break;

                case GeneratorType.Sequence:
                    object nextval = CreateQuery("select " + id.SeqName + ".nextval from dual").ExecuteScalar();
                    AppContext.Instance.SetPropertyValue(entity, idProp, nextval);
                    break;

                default:
                    break;
            }

            List<object> parameters = new List<object>();
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(entity.GetType()))
            {
                if (AppContext.Instance.GetColumn(prop) == null) continue;
                parameters.Add(prop.GetValue(entity, null));
            }
            CreateQuery(AppContext.Instance.GetInsertSql(entity.GetType()), parameters.ToArray()).ExecuteNonQuery();

            if (id.GeneratorType == GeneratorType.Identity)
            {
                object pk = CreateQuery("select @@Identity from dual").ExecuteScalar();
                AppContext.Instance.SetPropertyValue(entity, idProp, pk);
            }
            return idProp.GetValue(entity, null);
        }

        /// <summary>
        /// 在数据库中删除实体
        /// </summary>
        /// <param name="entity">要删除的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void Delete(object entity)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            object pk = AppContext.Instance.GetIdProperty(entity.GetType()).GetValue(entity, null);
            CreateQuery(AppContext.Instance.GetDeleteSql(entity.GetType()), pk).ExecuteNonQuery();
        }

        /// <summary>
        /// 更新数据库中的实体
        /// </summary>
        /// <param name="entity">要更新的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void Update(object entity)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            List<object> parameters = new List<object>();
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(entity.GetType()))
            {
                if (AppContext.Instance.GetColumn(prop) == null) continue;
                parameters.Add(prop.GetValue(entity, null));
            }
            parameters.Add(AppContext.Instance.GetIdProperty(entity.GetType()).GetValue(entity, null));
            CreateQuery(AppContext.Instance.GetUpdateSql(entity.GetType()), parameters.ToArray()).ExecuteNonQuery();
        }

        /// <summary>
        /// 从数据库中获得实体
        /// </summary>
        /// <typeparam name="T">实体类型</typeparam>
        /// <param name="pk">主键值</param>
        /// <returns>返回获得的实体</returns>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public T Get<T>(object pk)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            return CreateQuery(AppContext.Instance.GetSelectSql(typeof(T)), pk).ExecuteGetEntity<T>();
        }

        /// <summary>
        /// 刷新缓存，把缓存中的非查询操作全部送到数据库中执行
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void Flush()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            if (cache.Count == 0) return;
            if (db.InTransaction())
            {
                while (cache.Count != 0)
                {
                    Bundle bundle = cache.Dequeue();
                    CreateQuery(bundle.SqlText, bundle.Parameters).ExecuteNonQuery();
                }
            }
            else
            {
                try
                {
                    BeginTransaction();
                    CommitTransaction();
                }
                catch
                {
                    RollbackTransaction();
                    throw;
                }
            }
        }

        /// <summary>
        /// 创建Query对象，不同的数据库使用不同的Query对象，此方法由子类实现。
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public abstract IQuery CreateQuery();

        /// <summary>
        /// 创建Query对象，同时使用给定参数对其进行初始化
        /// </summary>
        /// <param name="sqlText">SQL命令</param>
        /// <param name="parameters">SQL命令参数</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public IQuery CreateQuery(string sqlText, params object[] parameters)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            IQuery query = CreateQuery();
            query.Session = this;
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
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public IQuery CreateNamedQuery(string name, params object[] parameters)
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            IQuery query = CreateQuery();
            query.Session = this;
            query.SqlText = AppContext.Instance.GetNamedSql(name);
            query.Parameters = parameters;
            return query;
        }
        
        /// <summary>
        /// 释放Session对象占有的资源，与Close()方法效果相同
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void Dispose()
        {
            Close();
        }

        /// <summary>
        /// 关闭Session，Session关闭时，若已开启事务但未提交，会自动回滚事务。若缓冲区不为空，会刷新缓冲区
        /// </summary>
        /// <exception cref="InvalidOperationException">Session已关闭</exception>
        public void Close()
        {
            if (IsClosed) throw new InvalidOperationException("Session已关闭");
            if (db.InTransaction())
            {
                db.RollbackTransaction();
                cache.Clear();
            }
            else
            {
                Flush();
            }
            IsClosed = true;
        }
    }
}
