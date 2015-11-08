using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Query;

namespace FrameDAL.Core
{
    public interface ISession : IDisposable
    {
        void BeginTransaction();

        void CommitTransaction();

        void RollbackTransaction();

        void Add(object entity);

        void Delete(object entity);

        void Update(object entity);

        T Get<T>(object pk);

        void Flush();

        IQuery CreateQuery();

        IQuery CreateQuery(string sqlText, params object[] parameters);
    }
}
