using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Core
{
    public abstract class BaseSession : ISession
    {
        public void BeginTransaction()
        {
            throw new NotImplementedException();
        }

        public void CommitTransaction()
        {
            throw new NotImplementedException();
        }

        public void RollbackTransaction()
        {
            throw new NotImplementedException();
        }

        public void Add(object entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(object entity)
        {
            throw new NotImplementedException();
        }

        public void Update(object entity)
        {
            throw new NotImplementedException();
        }

        public T Get<T>(object pk)
        {
            throw new NotImplementedException();
        }

        public void Flush()
        {
            throw new NotImplementedException();
        }

        public Query.IQuery CreateQuery()
        {
            throw new NotImplementedException();
        }

        public Query.IQuery CreateQuery(string sqlText, params object[] parameters)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }
    }
}
