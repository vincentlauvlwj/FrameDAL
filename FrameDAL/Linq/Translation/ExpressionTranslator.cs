using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;
using FrameDAL.Core;
using FrameDAL.Config;
using FrameDAL.Utility;
using FrameDAL.Attributes;
using FrameDAL.SqlExpressions;

namespace FrameDAL.Linq.Translation
{
    public sealed class TranslateResult
    {
        public SqlExpression SqlExpression { get; private set; }

        public Expression Projector { get; private set; }

        public LambdaExpression Aggregator { get; private set; }

        public TranslateResult(SqlExpression sqlExpr, Expression projector, LambdaExpression aggregator)
        {
            this.SqlExpression = sqlExpr;
            this.Projector = projector;
            this.Aggregator = aggregator;
        }

        public TranslateResult(SqlExpression sqlExpr, Expression projector) : this(sqlExpr, projector, null) { }

        public TranslateResult(SqlExpression sqlExpr) : this(sqlExpr, null, null) { }
    }

    public class ExpressionTranslator : ExpressionVisitor
    {
        private TranslateResult currentResult;
        private int aliasCount;
        private Configuration config;

        private ExpressionTranslator(Configuration config)
        {
            this.config = config;
        }

        public static TranslateResult Translate(Expression expr, Configuration config)
        {
            return new ExpressionTranslator(config).Translate(expr);
        }

        private TranslateResult Translate(Expression expr)
        {
            TranslateResult saveCurrentResult = this.currentResult;
            this.Visit(expr);
            TranslateResult result = this.currentResult;
            this.currentResult = saveCurrentResult;
            return result;
        }



        protected override Expression VisitConstant(System.Linq.Expressions.ConstantExpression node)
        {
            if(IsTable(node.Value))
            {
                currentResult = GetDefaultProjection((IQueryable) node.Value);
            }
            return node;
        }

        private ProjectedColumns ProjectColumns(Expression expression, string newAlias, params string[] existingAliases)
        {
            return ColumnProjector.ProjectColumns(expression, null, newAlias, existingAliases);
        }

        private bool IsTable(object value)
        {
            IQueryable q = value as IQueryable;
            return q != null && q.Expression.NodeType == ExpressionType.Constant;
        }

        private string GetNextAlias()
        {
            return "t" + aliasCount++;
        }

        private TranslateResult GetDefaultProjection(IQueryable query)
        {
            string tableAlias = this.GetNextAlias();
            string selectAlias = this.GetNextAlias();
            List<MemberBinding> bindings = new List<MemberBinding>();
            List<ColumnDeclaration> columns = new List<ColumnDeclaration>();
            foreach(PropertyInfo prop in query.ElementType.GetCachedProperties())
            {
                ColumnAttribute column = prop.GetColumnAttribute();
                if (column == null) continue;
                bindings.Add(Expression.Bind(prop, Expression.Constant(new ColumnExpression(selectAlias, column.Name))));
                SqlExpression c;
                if(string.IsNullOrWhiteSpace(column.SQL))
                {
                    c = new ColumnExpression(tableAlias, column.Name);
                }
                else
                {
                    c = new LiteralExpression(column.SQL);
                }
                columns.Add(new ColumnDeclaration(column.Name, c));
            }
            Expression projector = Expression.Call(Expression.Constant(this), newDefaultProjectedObject, Expression.Constant(bindings));
            SqlExpression select = new SelectExpression(
                selectAlias,
                columns,
                new TableExpression(tableAlias, query.ElementType.GetTableAttribute().Name),
                null
                );
            return new TranslateResult(select, projector);
        }

        private static MethodInfo newDefaultProjectedObject 
            = typeof(ExpressionTranslator).GetMethod("NewDefaultProjectedObject", new Type[1] { typeof(IEnumerable<MemberBinding>) });

        internal T NewDefaultProjectedObject<T>(IEnumerable<MemberBinding> bindings)
        {
            object proxy = EntityFactory.GetEntity(typeof(T), config.EnableLazy, false);
            foreach(MemberBinding binding in bindings)
            {
                MemberAssignment assign = (MemberAssignment)binding;
                object value = ((System.Linq.Expressions.ConstantExpression)assign.Expression).Value;
                assign.Member.SetValue(proxy, value);
            }
            return (T)proxy;
        }
    }
}
