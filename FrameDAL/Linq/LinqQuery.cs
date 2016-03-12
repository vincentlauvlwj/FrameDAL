using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace FrameDAL.Linq
{
    public class LinqQuery<T> : IQueryable<T>, IQueryable, IEnumerable<T>, IEnumerable, IOrderedQueryable<T>, IOrderedQueryable
    {
        public IQueryProvider Provider { get; private set; }

        public Expression Expression { get; private set; }

        public LinqQuery(IQueryProvider provider)
        {
            if (provider == null)
            {
                throw new ArgumentNullException(nameof(provider));
            }
            this.Provider = provider;
            this.Expression = Expression.Constant(this);
        }

        public LinqQuery(IQueryProvider provider, Expression expression)
        {
            if (provider == null)
            {
                throw new ArgumentNullException(nameof(provider));
            }
            if (expression == null)
            {
                throw new ArgumentNullException(nameof(expression));
            }
            if (!typeof(IQueryable<T>).IsAssignableFrom(expression.Type))
            {
                throw new ArgumentOutOfRangeException(nameof(expression));
            }
            this.Provider = provider;
            this.Expression = expression;
        }

        public Type ElementType
        {
            get { return typeof(T); }
        }

        public IEnumerator<T> GetEnumerator()
        {
            return ((IEnumerable<T>)this.Provider.Execute(this.Expression)).GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ((IEnumerable)this.Provider.Execute(this.Expression)).GetEnumerator();
        }

        public override string ToString()
        {
            return this.Expression.ToString();
        }

        public string QueryText
        {
            get
            {
                LinqQueryProvider provider = this.Provider as LinqQueryProvider;
                if (provider != null)
                {
                    return provider.GetQueryText(this.Expression);
                }
                return "";
            }
        }
    }
}
