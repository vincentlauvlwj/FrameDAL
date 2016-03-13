using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Reflection;
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
            return AppContext.Instance.DbHelper.ExecuteReader(formatResult.SqlText, formatResult.Parameters.ToArray(), reader =>
            {
                while(reader.Read())
                {
                    list.Add(projector.DynamicInvoke(reader));
                }
                return list;
            });
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

        private class ProjectorBuilder : ExpressionVisitor
        {
            private static MethodInfo getValue 
                = typeof(DbDataReader).GetMethod("GetValue", new Type[1] { typeof(int) });
            private static MethodInfo getOrdinal
                = typeof(DbDataReader).GetMethod("GetOrdinal", new Type[1] { typeof(string) });
            private static MethodInfo convertType
                = typeof(TypeUtil).GetMethod("ConvertType", new Type[2] { typeof(object), typeof(Type) });
            
            private ParameterExpression reader = Expression.Parameter(typeof(DbDataReader), "reader");

            public static Delegate Build(Expression expression)
            {
                ProjectorBuilder builder = new ProjectorBuilder();
                expression = builder.Visit(expression);
                return Expression.Lambda(expression, builder.reader).Compile();
            }

            public override Expression Visit(Expression node)
            {
                InjectedExpression injected = node as InjectedExpression;
                if (injected != null)
                {
                    ColumnExpression column = injected.SqlExpression as ColumnExpression;
                    Expression ordinal = Expression.Call(reader, getOrdinal, Expression.Constant(column.ColumnName));
                    Expression value = Expression.Call(reader, getValue, ordinal);
                    Expression result = Expression.Call(convertType, value, Expression.Constant(injected.ColumnType));
                    return Expression.Convert(result, injected.ColumnType);
                }
                return base.Visit(node);
            }

            protected override Expression VisitParameter(ParameterExpression node)
            {
                if(node.Type == reader.Type && node.Name == reader.Name)
                {
                    return reader;
                }
                return base.VisitParameter(node);
            }
        }
    }
}
