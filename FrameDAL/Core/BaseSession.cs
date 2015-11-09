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
    public abstract class BaseSession : ISession
    {
        public bool IsClosed { get; private set; }

        protected IDbHelper db;

        internal IDbHelper DbHelper 
        {
            get
            {
                if (IsClosed) throw new ApplicationException("Session已关闭");
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

        internal virtual void AddToCache(string sqlText, object[] parameters)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            Bundle bundle = new Bundle();
            bundle.SqlText = sqlText;
            bundle.Parameters = parameters;
            cache.Enqueue(bundle);
        }

        public void BeginTransaction()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            DbHelper.BeginTransaction();
            Flush();
        }

        public void CommitTransaction()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            DbHelper.CommitTransaction();
        }

        public void RollbackTransaction()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            DbHelper.RollbackTransaction();
        }

        public void Add(object entity)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            PropertyInfo idProp = AppContext.Instance.GetIdProperty(entity.GetType());
            Id id = AppContext.Instance.GetId(idProp);
            switch (id.GeneratorType)
            {
                case GeneratorType.Uuid:
                    idProp.SetValue(entity, Guid.NewGuid().ToString(), null);
                    break;

                case GeneratorType.Sequence:
                    object nextval = CreateQuery("select " + id.SeqName + ".nextval from dual").ExecuteScalar();
                    idProp.SetValue(entity, nextval, null);
                    break;

                default:
                    break;
            }
            PropertyInfo[] props = AppContext.Instance.GetProperties(entity.GetType());
            object[] parameters = new object[props.Length];
            for (int i = 0; i < props.Length; i++)
            {
                parameters[i] = props[i].GetValue(entity, null);
            }
            CreateQuery(AppContext.Instance.GetInsertSql(entity.GetType()), parameters).ExecuteNonQuery();
        }

        public void Delete(object entity)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            object pk = AppContext.Instance.GetIdProperty(entity.GetType()).GetValue(entity, null);
            CreateQuery(AppContext.Instance.GetDeleteSql(entity.GetType()), pk).ExecuteNonQuery();
        }

        public void Update(object entity)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            PropertyInfo[] props = AppContext.Instance.GetProperties(entity.GetType());
            object[] parameters = new object[props.Length + 1];
            for (int i = 0; i < props.Length; i++)
            {
                parameters[i] = props[i].GetValue(entity, null);
            }
            parameters[props.Length] = AppContext.Instance.GetIdProperty(entity.GetType()).GetValue(entity, null);
            CreateQuery(AppContext.Instance.GetUpdateSql(entity.GetType()), parameters).ExecuteNonQuery();
        }

        public T Get<T>(object pk)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            return CreateQuery(AppContext.Instance.GetSelectSql(typeof(T)), pk).ExecuteGetEntity<T>();
        }

        public void Flush()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
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

        public abstract IQuery CreateQuery();

        public IQuery CreateQuery(string sqlText, params object[] parameters)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            IQuery query = CreateQuery();
            query.Session = this;
            query.SqlText = sqlText;
            query.Parameters = parameters;
            return query;
        }

        public void Dispose()
        {
            Close();
        }

        public void Close()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
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
