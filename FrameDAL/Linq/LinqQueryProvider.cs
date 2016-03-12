using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using FrameDAL.Core;
using FrameDAL.Utility;

namespace FrameDAL.Linq
{
    public class LinqQueryProvider : IQueryProvider
    {
        private ISession session;

        public LinqQueryProvider(ISession session)
        {
            this.session = session;
        }

        public IQueryable<TElement> CreateQuery<TElement>(Expression expression)
        {
            return new LinqQuery<TElement>(this, expression);
        }

        public IQueryable CreateQuery(Expression expression)
        {
            Type elementType = TypeUtil.GetElementType(expression.Type);
            return (IQueryable)Activator.CreateInstance(typeof(LinqQuery<>).MakeGenericType(elementType), new object[] { this, expression });
        }

        public TResult Execute<TResult>(Expression expression)
        {
            return (TResult)this.Execute(expression);
        }

        public object Execute(Expression expression)
        {
            throw new NotImplementedException();
        }

        public string GetQueryText(Expression expression)
        {
            throw new NotImplementedException();
        }
    }
}
