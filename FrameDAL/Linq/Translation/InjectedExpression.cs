using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using FrameDAL.SqlExpressions;

namespace FrameDAL.Linq.Translation
{
    public sealed class InjectedExpression : Expression
    {
        public SqlExpression SqlExpression { get; private set; }

        public Type ColumnType { get; private set; }

        public override ExpressionType NodeType { get { return ExpressionType.Constant; } }

        public override Type Type { get { return ColumnType; } }

        public InjectedExpression(SqlExpression sqlExpr, Type columnType)
        {
            this.SqlExpression = sqlExpr;
            this.ColumnType = columnType;
        }
    }

    public class InjectedExpressionVisitor : ExpressionVisitor
    {
        public override Expression Visit(Expression node)
        {
            InjectedExpression injected = node as InjectedExpression;
            if (injected != null)
            {
                return this.VisitInjected(injected);
            }
            return base.Visit(node);
        }

        protected virtual Expression VisitInjected(InjectedExpression node)
        {
            return node;
        }
    }
}
