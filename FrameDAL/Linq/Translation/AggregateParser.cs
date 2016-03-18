using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using FrameDAL.SqlExpressions;

namespace FrameDAL.Linq.Translation
{
    public class AggregateParser : InjectedExpressionVisitor
    {
        private Dictionary<ParameterExpression, Expression> map;
        private Func<Expression, TranslateResult> translator;
        private MemberAccessParser memberParser = new MemberAccessParser();

        public static Expression Parse(LambdaExpression expression, Expression keyExpr, InjectedExpression subquery, Func<Expression, TranslateResult> translator)
        {
            AggregateParser parser = new AggregateParser();
            parser.map = expression.Parameters.Select((param, i) => new { param, i })
                .ToDictionary(x => x.param, x => x.i == 0 ? keyExpr : subquery);
            parser.translator = translator;
            return parser.Visit(expression.Body);
        }

        protected override Expression VisitParameter(ParameterExpression node)
        {
            Expression e;
            if (map.TryGetValue(node, out e))
            {
                return e;
            }
            return node;
        }

        protected override Expression VisitMethodCall(MethodCallExpression m)
        {
            MethodCallExpression call = (MethodCallExpression)base.VisitMethodCall(m);
            if (call.Method.DeclaringType == typeof(Queryable) || call.Method.DeclaringType == typeof(Enumerable))
            {
                switch (call.Method.Name)
                {
                    case "Count":
                    case "Min":
                    case "Max":
                    case "Sum":
                    case "Average":
                        return new InjectedExpression(translator(call), call.Type);
                }
            }
            return call;
        }

        protected override Expression VisitMember(MemberExpression node)
        {
            return memberParser.Visit(base.VisitMember(node));
        }
    }
}
