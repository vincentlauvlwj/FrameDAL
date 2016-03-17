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
        private Type type;

        public TranslateResult TranslateResult { get; private set; }

        public override ExpressionType NodeType { get { return (ExpressionType)6666666; } }

        public override Type Type { get { return type; } }

        public InjectedExpression(TranslateResult translateResult, Type type)
        {
            this.TranslateResult = translateResult;
            this.type = type;
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
