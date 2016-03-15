using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;
using System.Data;
using System.Data.Common;
using FrameDAL.Core;
using FrameDAL.Utility;
using FrameDAL.SqlExpressions;
using FrameDAL.Linq.Translation;

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
            TranslateResult translateResult = Translate(expression);
            FormatResult formatResult = SqlFormatter.Format(translateResult.SqlExpression);
            IList list = (IList) Activator.CreateInstance(typeof(List<>).MakeGenericType(TypeUtil.GetElementType(expression.Type)));
            Delegate projector = ProjectorBuilder.Build(translateResult.Projector);
            DataTable dt = session.CreateSqlQuery(formatResult.SqlText, formatResult.Parameters).ExecuteGetDataTable();
            foreach(DataRow row in dt.Rows)
            {
                list.Add(projector.DynamicInvoke(row));
            }
            return list;
        }

        public string GetQueryText(Expression expression)
        {
            return SqlFormatter.Format(Translate(expression).SqlExpression).SqlText;
        }

        public TranslateResult Translate(Expression expression)
        {
            expression = PartialEvaluator.Eval(expression);
            return ExpressionTranslator.Translate(expression, AppContext.Instance.Configuration);
        }

        private class ProjectorBuilder : InjectedExpressionVisitor
        {
            private static MethodInfo convertType
                = typeof(TypeUtil).GetMethod("ConvertType", new Type[2] { typeof(object), typeof(Type) });
            private static PropertyInfo indexer
                = typeof(DataRow).GetProperty("Item", new Type[] { typeof(string) });
            
            private ParameterExpression row = Expression.Parameter(typeof(DataRow), "row");

            public static Delegate Build(Expression expression)
            {
                ProjectorBuilder builder = new ProjectorBuilder();
                expression = builder.Visit(expression);
                return Expression.Lambda(expression, builder.row).Compile();
            }

            protected override Expression VisitInjected(InjectedExpression node)
            {
                ColumnExpression column = node.SqlExpression as ColumnExpression;
                Expression value = Expression.MakeIndex(row, indexer, new Expression[] { Expression.Constant(column.ColumnName) });
                Expression result = Expression.Call(convertType, value, Expression.Constant(node.ColumnType));
                return Expression.Convert(result, node.ColumnType);
            }

            protected override Expression VisitParameter(ParameterExpression node)
            {
                if(node.Type == row.Type && node.Name == row.Name)
                {
                    return row;
                }
                return base.VisitParameter(node);
            }
        }
    }
}
