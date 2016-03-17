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

        public static Expression Parse(LambdaExpression expression, Expression keyExpr, InjectedExpression subquery)
        {
            AggregateParser parser = new AggregateParser();
            parser.map = expression.Parameters.Select((param, i) => new { param, i })
                .ToDictionary(x => x.param, x => x.i == 0 ? keyExpr : subquery);
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


    }
}
