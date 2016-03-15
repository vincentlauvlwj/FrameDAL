using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Data;
using System.Data.Common;
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

    public class ExpressionTranslator : ExpressionVisitor
    {
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

        private TranslateResult _curResult;
        private bool _flag;

        private TranslateResult CurrentResult
        {
            get { return _curResult; }
            set
            {
                _curResult = value;
                _flag = !_flag;
                if (!_flag) throw new Exception("Debug Exception!");
            }
        }

        private class Status
        {
            public TranslateResult CurrentResult { get; set; }

            public bool Flag { get; set; }
        }

        private Status PreTranslate()
        {
            Status status = new Status { CurrentResult = _curResult, Flag = _flag };
            _curResult = null;
            _flag = false;
            return status;
        }

        private TranslateResult PostTranslate(Status status)
        {
            TranslateResult result = _curResult;
            _curResult = status.CurrentResult;
            _flag = status.Flag;
            return result;
        }

        private TranslateResult Translate(Expression expr)
        {
            Status status = PreTranslate();
            expr = this.Visit(expr);
            return PostTranslate(status);
        }

        protected override Expression VisitMethodCall(MethodCallExpression m)
        {
            if (m.Method.DeclaringType == typeof(Queryable) || m.Method.DeclaringType == typeof(Enumerable))
            {
                switch (m.Method.Name)
                {
                    case "Where":
                        return this.VisitWhere(m);
                    case "Select":
                        return this.VisitSelect(m);
                    case "Join":
                        return this.VisitJoin(m);
                }
            }
            throw new NotSupportedException("不支持的方法：" + m.Method.Name);
        }

        private Expression VisitWhere(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression predicate = (LambdaExpression)StripQuotes(m.Arguments[1]);

            TranslateResult src = this.Translate(source);
            Expression where = MemberAccessReplacer.Replace(predicate.Body, predicate.Parameters[0], src.Projector);
            TranslateResult translatedWhere = this.Translate(where);
            string alias = this.GetNextAlias();
            ProjectedColumns pc = this.ProjectColumns(
                src.Projector, 
                alias, 
                ((AliasedExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, translatedWhere.SqlExpression),
                pc.Projector);
            return m;
        }

        private Expression VisitSelect(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression selector = (LambdaExpression)StripQuotes(m.Arguments[1]);

            TranslateResult src = this.Translate(source);
            string alias = this.GetNextAlias();
            ProjectedColumns pc = this.ProjectColumns(
                MemberAccessReplacer.Replace(selector.Body, selector.Parameters[0], src.Projector),
                alias,
                ((AliasedExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null),
                pc.Projector);
            return m;
        }

        private Expression VisitJoin(MethodCallExpression m)
        {
            Expression outerSource = m.Arguments[0];
            Expression innerSource = m.Arguments[1];
            if (! typeof(IQueryable).IsAssignableFrom(innerSource.Type))
                throw new NotSupportedException("不支持的数据源：" + innerSource.Type);
            LambdaExpression outerKey = (LambdaExpression)StripQuotes(m.Arguments[2]);
            LambdaExpression innerKey = (LambdaExpression)StripQuotes(m.Arguments[3]);
            LambdaExpression resultSelector = (LambdaExpression)StripQuotes(m.Arguments[4]);

            TranslateResult outerResult = this.Translate(outerSource);
            TranslateResult innerResult = this.Translate(innerSource);
            Expression outerKeyExpr = MemberAccessReplacer.Replace(outerKey.Body, outerKey.Parameters[0], outerResult.Projector);
            Expression innerKeyExpr = MemberAccessReplacer.Replace(innerKey.Body, innerKey.Parameters[0], innerResult.Projector);
            TranslateResult outerKeyResult = this.Translate(outerKeyExpr);
            TranslateResult innerKeyResult = this.Translate(innerKeyExpr);
            string alias = this.GetNextAlias();
            ProjectedColumns pc = this.ProjectColumns(
                MemberAccessReplacer.Replace(
                    resultSelector.Body,
                    resultSelector.Parameters[0],
                    outerResult.Projector,
                    resultSelector.Parameters[1],
                    innerResult.Projector),
                alias,
                ((AliasedExpression)outerResult.SqlExpression).TableAlias,
                ((AliasedExpression)innerResult.SqlExpression).TableAlias);
            JoinExpression join = new JoinExpression(
                JoinType.InnerJoin,
                outerResult.SqlExpression,
                innerResult.SqlExpression,
                new FrameDAL.SqlExpressions.BinaryExpression(
                    SqlExpressionType.Equal,
                    outerKeyResult.SqlExpression,
                    innerKeyResult.SqlExpression));
            CurrentResult = new TranslateResult(new SelectExpression(alias, pc.Columns, join, null), pc.Projector);
            return m;
        }

        public override Expression Visit(Expression node)
        {
            InjectedExpression injected = node as InjectedExpression;
            if(injected != null)
            {
                CurrentResult = new TranslateResult(injected.SqlExpression);
                return node;
            }
            return base.Visit(node);
        }

        protected override Expression VisitConstant(System.Linq.Expressions.ConstantExpression node)
        {
            if(IsTable(node.Value))
            {
                CurrentResult = GetDefaultProjection((IQueryable) node.Value);
                return node;
            }
            CurrentResult = new TranslateResult(new FrameDAL.SqlExpressions.ConstantExpression(node.Value));
            return node;
        }

        protected override Expression VisitUnary(System.Linq.Expressions.UnaryExpression node)
        {
            SqlExpressionType? exprType = null;
            switch(node.NodeType)
            {
                case ExpressionType.Negate:
                case ExpressionType.NegateChecked:
                    exprType = SqlExpressionType.Negate;
                    break;
                case ExpressionType.Not:
                    exprType = SqlExpressionType.Not;
                    break;
                case ExpressionType.UnaryPlus:
                    exprType = SqlExpressionType.UnaryPlus;
                    break;
            }
            if(exprType != null)
            {
                TranslateResult result = this.Translate(node.Operand);
                this.CurrentResult = new TranslateResult(
                    new FrameDAL.SqlExpressions.UnaryExpression(
                        exprType.Value, result.SqlExpression));
                return node;
            }
            throw new NotSupportedException("不支持的表达式：" + node.NodeType);
        }

        protected override Expression VisitBinary(System.Linq.Expressions.BinaryExpression node)
        {
            SqlExpressionType? exprType = null;
            switch(node.NodeType)
            {
                case ExpressionType.Add:
                case ExpressionType.AddChecked:
                    exprType = SqlExpressionType.Add;
                    break;
                case ExpressionType.Subtract:
                case ExpressionType.SubtractChecked:
                    exprType = SqlExpressionType.Subtract;
                    break;
                case ExpressionType.Multiply:
                case ExpressionType.MultiplyChecked:
                    exprType = SqlExpressionType.Multiply;
                    break;
                case ExpressionType.Divide:
                    exprType = SqlExpressionType.Divide;
                    break;
                case ExpressionType.Modulo:
                    exprType = SqlExpressionType.Modulo;
                    break;
                case ExpressionType.And:
                case ExpressionType.AndAlso:
                    exprType = SqlExpressionType.And;
                    break;
                case ExpressionType.Or:
                case ExpressionType.OrElse:
                    exprType = SqlExpressionType.Or;
                    break;
                case ExpressionType.LessThan:
                    exprType = SqlExpressionType.LessThan;
                    break;
                case ExpressionType.LessThanOrEqual:
                    exprType = SqlExpressionType.LessThanOrEqual;
                    break;
                case ExpressionType.GreaterThan:
                    exprType = SqlExpressionType.GreaterThan;
                    break;
                case ExpressionType.GreaterThanOrEqual:
                    exprType = SqlExpressionType.GreaterThanOrEqual;
                    break;
                case ExpressionType.Equal:
                    exprType = SqlExpressionType.Equal;
                    break;
                case ExpressionType.NotEqual:
                    exprType = SqlExpressionType.NotEqual;
                    break;
                case ExpressionType.RightShift:
                    exprType = SqlExpressionType.RightShift;
                    break;
                case ExpressionType.LeftShift:
                    exprType = SqlExpressionType.LeftShift;
                    break;
                case ExpressionType.ExclusiveOr:
                    exprType = SqlExpressionType.ExclusiveOr;
                    break;
            }
            if(exprType != null)
            {
                TranslateResult left = this.Translate(node.Left);
                TranslateResult right = this.Translate(node.Right);
                this.CurrentResult = new TranslateResult(
                    new FrameDAL.SqlExpressions.BinaryExpression(
                        exprType.Value, left.SqlExpression, right.SqlExpression));
                return node;
            }
            throw new NotSupportedException("不支持的表达式：" + node.NodeType);
        }

        private static Expression StripQuotes(Expression e)
        {
            while (e.NodeType == ExpressionType.Quote)
            {
                e = ((System.Linq.Expressions.UnaryExpression)e).Operand;
            }
            return e;
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
                bindings.Add(Expression.Bind(prop, new InjectedExpression(
                    new ColumnExpression(selectAlias, column.Name), prop.PropertyType)));
                columns.Add(new ColumnDeclaration(column.Name,
                    string.IsNullOrWhiteSpace(column.SQL) 
                    ? new ColumnExpression(tableAlias, column.Name)
                    : (SqlExpression)new LiteralExpression(column.SQL)));
            }
            Expression projector = Expression.Call(
                Expression.Constant(this), 
                newDefaultProjectedObject.MakeGenericMethod(query.ElementType), 
                Expression.Constant(bindings.AsReadOnly()),
                Expression.Parameter(typeof(DataRow), "row"));
            SqlExpression select = new SelectExpression(
                selectAlias,
                columns,
                new TableExpression(tableAlias, query.ElementType.GetTableAttribute().Name),
                null
                );
            return new TranslateResult(select, projector);
        }

        private static MethodInfo newDefaultProjectedObject 
            = typeof(ExpressionTranslator).GetMethod(
                "NewDefaultProjectedObject", 
                new Type[] { typeof(ReadOnlyCollection<MemberBinding>), typeof(DataRow) });

        public T NewDefaultProjectedObject<T>(ReadOnlyCollection<MemberBinding> bindings, DataRow row)
        {
            object proxy = EntityFactory.GetEntity(typeof(T), config.EnableLazy, false);
            foreach(MemberBinding binding in bindings)
            {
                MemberAssignment assign = (MemberAssignment)binding;
                string columnName = ((ColumnExpression)((InjectedExpression)assign.Expression).SqlExpression).ColumnName;
                assign.Member.SetValue(proxy, row[columnName]);
            }
            return (T)proxy;
        }
    }
}
