using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.DbHelper;
using FrameDAL.Query;

namespace FrameDAL.Core
{
    public abstract class BaseSession : ISession
    {
        public bool IsClosed { get; private set; }

        protected IDbHelper db;

        internal IDbHelper DbHelper {
            get
            {
                if (IsClosed) throw new ApplicationException("Session已关闭");
                return db;
            }
            private set; 
        }

        protected class Bundle {
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
            throw new NotImplementedException();
        }

        public void Delete(object entity)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            throw new NotImplementedException();
        }

        public void Update(object entity)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            throw new NotImplementedException();
        }

        public T Get<T>(object pk)
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            throw new NotImplementedException();
        }

        public void Flush()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            throw new NotImplementedException();
        }

        public abstract IQuery CreateQuery();

        public abstract IQuery CreateQuery(string sqlText, params object[] parameters);

        public void Dispose()
        {
            Close();
        }


        public void Close()
        {
            if (IsClosed) throw new ApplicationException("Session已关闭");
            throw new NotImplementedException();
        }
    }
}
