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

        public LambdaExpression Extractor { get; private set; }

        public TranslateResult(SqlExpression sqlExpr, Expression projector, LambdaExpression extractor)
        {
            this.SqlExpression = sqlExpr;
            this.Projector = projector;
            this.Extractor = extractor;
        }

        public TranslateResult(SqlExpression sqlExpr, Expression projector) : this(sqlExpr, projector, null) { }

        public TranslateResult(SqlExpression sqlExpr) : this(sqlExpr, null, null) { }
    }

    public class ExpressionTranslator : InjectedExpressionVisitor
    {
        private Configuration config;
        private Dictionary<TranslateResult, GroupByInfo> groupByMap;

        private ExpressionTranslator(Configuration config)
        {
            this.config = config;
            this.groupByMap = new Dictionary<TranslateResult, GroupByInfo>();
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
                System.Diagnostics.Debug.Assert(_flag);
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
                    case "SelectMany":
                        return this.VisitSelectMany(m);
                    case "Distinct":
                        return this.VisitDistinct(m);
                    case "OrderBy":
                    case "OrderByDescending":
                        return this.VisitOrderBy(m);
                    case "ThenBy":
                    case "ThenByDescending":
                        return this.VisitThenBy(m);
                    case "GroupBy":
                        return this.VisitGroupBy(m);
                    case "Single":
                    case "SingleOrDefault":
                    case "First":
                    case "FirstOrDefault":
                        return this.VisitExtractor(m);
                    case "Count":
                    case "Min":
                    case "Max":
                    case "Sum":
                    case "Average":
                        return this.VisitAggregate(m);
                }
            }
            throw new NotSupportedException("不支持的方法：" + m.Method.Name);
        }

        private Expression VisitWhere(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression predicate = (LambdaExpression)StripQuotes(m.Arguments[1]);
            if (predicate.Parameters.Count == 2)
                throw new NotSupportedException("Where方法不支持类型为Expression<Func<TSource, int, bool>>的predicate。");

            TranslateResult src = this.Translate(source);
            Expression where = MemberAccessParser.Parse(predicate, src.Projector);
            TranslateResult translatedWhere = this.Translate(where);
            TableAlias alias = new TableAlias();
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
            if (selector.Parameters.Count == 2)
                throw new NotSupportedException("Select方法不支持类型为Expression<Func<TSource, int, TResult>>的selector。");

            TranslateResult src = this.Translate(source);
            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(
                MemberAccessParser.Parse(selector, src.Projector),
                alias,
                ((AliasedExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null),
                pc.Projector);
            return m;
        }

        private Expression VisitJoin(MethodCallExpression m)
        {
            if (m.Arguments.Count == 6)
                throw new NotSupportedException("Join方法不支持comparer参数。");
            Expression outerSource = m.Arguments[0];
            Expression innerSource = m.Arguments[1];
            if (! typeof(IQueryable).IsAssignableFrom(innerSource.Type))
                throw new NotSupportedException("Join方法不支持的数据源：" + innerSource.Type);
            LambdaExpression outerKey = (LambdaExpression)StripQuotes(m.Arguments[2]);
            LambdaExpression innerKey = (LambdaExpression)StripQuotes(m.Arguments[3]);
            LambdaExpression resultSelector = (LambdaExpression)StripQuotes(m.Arguments[4]);

            TranslateResult outerResult = this.Translate(outerSource);
            TranslateResult innerResult = this.Translate(innerSource);
            Expression outerKeyExpr = MemberAccessParser.Parse(outerKey, outerResult.Projector);
            Expression innerKeyExpr = MemberAccessParser.Parse(innerKey, innerResult.Projector);
            TranslateResult outerKeyResult = this.Translate(outerKeyExpr);
            TranslateResult innerKeyResult = this.Translate(innerKeyExpr);
            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(
                MemberAccessParser.Parse(resultSelector, outerResult.Projector, innerResult.Projector),
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

        private Expression VisitSelectMany(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression collectionSelector = (LambdaExpression)StripQuotes(m.Arguments[1]);
            if (collectionSelector.Parameters.Count == 2)
                throw new NotSupportedException("SelectMany方法不支持类型为Expression<Func<TSource, int, IEnumerable<TResult>>>的collectionSelector。");
            LambdaExpression resultSelector = m.Arguments.Count == 3 ? (LambdaExpression)StripQuotes(m.Arguments[2]) : null;

            TranslateResult left = this.Translate(source);
            Expression rightExpr = MemberAccessParser.Parse(collectionSelector, left.Projector);
            TranslateResult right = this.Translate(rightExpr);
            JoinType joinType = JoinTypeJudger.GetJoinType(collectionSelector);
            JoinExpression join = new JoinExpression(joinType, left.SqlExpression, right.SqlExpression, null);
            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(
                resultSelector == null ? right.Projector : MemberAccessParser.Parse(resultSelector, left.Projector, right.Projector),
                alias,
                ((AliasedExpression)left.SqlExpression).TableAlias,
                ((AliasedExpression)right.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(new SelectExpression(alias, pc.Columns, join, null), pc.Projector);
            return m;
        }

        private Expression VisitDistinct(MethodCallExpression m)
        {
            if (m.Arguments.Count == 2)
                throw new NotSupportedException("Distinct方法不支持comparer参数。");
            Expression source = m.Arguments[0];

            TranslateResult src = this.Translate(source);
            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(src.Projector, alias, ((AliasedExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null, null, null, null, null, true),
                pc.Projector);
            return m;
        }

        private List<MethodCallExpression> thenBys;

        private Expression VisitOrderBy(MethodCallExpression m)
        {
            if (m.Arguments.Count == 3)
                throw new NotSupportedException(m.Method.Name + "方法不支持comparer参数。");
            Expression source = m.Arguments[0];
            LambdaExpression keySelector = (LambdaExpression)StripQuotes(m.Arguments[1]);

            List<MethodCallExpression> myThenBys = this.thenBys;
            this.thenBys = null;
            TranslateResult src = this.Translate(source);
            List<OrderByDeclaration> orderings = new List<OrderByDeclaration>();
            Expression keyExpr = MemberAccessParser.Parse(keySelector, src.Projector);
            orderings.Add(new OrderByDeclaration(GetOrderType(m), this.Translate(keyExpr).SqlExpression));

            if(myThenBys != null)
            {
                for(int i = myThenBys.Count - 1; i >= 0; i--)
                {
                    keySelector = (LambdaExpression)StripQuotes(myThenBys[i].Arguments[1]);
                    keyExpr = MemberAccessParser.Parse(keySelector, src.Projector);
                    orderings.Add(new OrderByDeclaration(GetOrderType(myThenBys[i]), this.Translate(keyExpr).SqlExpression));
                }
            }

            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(src.Projector, alias, ((AliasedExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null, orderings, null),
                pc.Projector);
            return m;
        }

        private Expression VisitThenBy(MethodCallExpression m)
        {
            if (m.Arguments.Count == 3)
                throw new NotSupportedException(m.Method.Name + "方法不支持comparer参数。");
            Expression source = m.Arguments[0];
            
            if (this.thenBys == null)
            {
                this.thenBys = new List<MethodCallExpression>();
            }
            this.thenBys.Add(m);
            this.Visit(source);
            if (this.thenBys != null)
                throw new InvalidOperationException("调用ThenBy方法之前必须调用OrderBy方法。");
            return m;
        }

        private Expression VisitGroupBy(MethodCallExpression m)
        {
            if (HasComparerArgument(m))
                throw new NotSupportedException(m.Method.Name + "方法不支持comparer参数。");
            Expression source = m.Arguments[0];
            LambdaExpression keySelector = (LambdaExpression)StripQuotes(m.Arguments[1]);
            LambdaExpression elementSelector = null, resultSelector = null;
            if (m.Arguments.Count == 4)
            {
                elementSelector = (LambdaExpression)StripQuotes(m.Arguments[2]);
                resultSelector = (LambdaExpression)StripQuotes(m.Arguments[3]);
            }
            else if (m.Arguments.Count == 3)
            {
                LambdaExpression expr = (LambdaExpression)StripQuotes(m.Arguments[2]);
                if (expr.Parameters.Count == 1)
                {
                    elementSelector = expr;
                }
                else
                {
                    resultSelector = expr;
                }
            }

            TranslateResult src = this.Translate(source);
            Expression keyExpr = MemberAccessParser.Parse(keySelector, src.Projector);
            Expression elemExpr = elementSelector == null ? src.Projector : MemberAccessParser.Parse(elementSelector, src.Projector);
            TableAlias existingAlias = ((AliasedExpression)src.SqlExpression).TableAlias;
            ProjectedColumns pcKey = this.ProjectColumns(keyExpr, existingAlias, existingAlias);
            IEnumerable<SqlExpression> groupExprs = pcKey.Columns.Select(c => c.Expression);

            TranslateResult subquerySrc = this.Translate(source);
            Expression subqueryKeyExpr = MemberAccessParser.Parse(keySelector, subquerySrc.Projector);
            Expression subqueryElemExpr = elementSelector == null ? subquerySrc.Projector : MemberAccessParser.Parse(elementSelector, subquerySrc.Projector);
            TableAlias subqueryExistingAlias = ((AliasedExpression)subquerySrc.SqlExpression).TableAlias;
            ProjectedColumns subqueryPcKey = this.ProjectColumns(subqueryKeyExpr, subqueryExistingAlias, subqueryExistingAlias);
            IEnumerable<SqlExpression> subqueryGroupExprs = subqueryPcKey.Columns.Select(c => c.Expression);
            
            SqlExpression subqueryCorrelation = this.BuildPredicateWithNullsEqual(groupExprs, subqueryGroupExprs);

            TableAlias subqueryAlias = new TableAlias();
            ProjectedColumns subqueryPc = this.ProjectColumns(subqueryElemExpr, subqueryAlias, subqueryExistingAlias);
            TranslateResult subquery = new TranslateResult(
                new SelectExpression(subqueryAlias, subqueryPc.Columns, subquerySrc.SqlExpression, subqueryCorrelation),
                subqueryPc.Projector);

            GroupByInfo info = new GroupByInfo() { ElementExpr = elemExpr, Alias = existingAlias };
            this.groupByMap.Add(subquery, info);

            Expression resultExpr;
            if(resultSelector != null)
            {
                resultExpr = AggregateParser.Parse(
                    resultSelector, 
                    pcKey.Projector, 
                    new InjectedExpression(subquery, resultSelector.Parameters[1].Type),
                    this.Translate);
            }
            else
            {
                // TODO
                resultExpr = null;
            }

            TableAlias alias = new TableAlias();
            ProjectedColumns pc = this.ProjectColumns(resultExpr, alias, existingAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null, null, groupExprs),
                pc.Projector);
            return m;
        }

        private Expression VisitAggregate(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression argument = m.Arguments.Count == 2 ? (LambdaExpression)StripQuotes(m.Arguments[1]) : null;

            string aggName = GetAggregateName(m);
            bool hasPredicateArg = this.HasPredicateArg(aggName);
            bool argumentWasPredicate = false;

            if (argument != null && hasPredicateArg)
            {
                source = Expression.Call(typeof(Queryable), "Where", m.Method.GetGenericArguments(), source, argument);
                argument = null;
                argumentWasPredicate = true;
            }

            TranslateResult src = this.Translate(source);
            SqlExpression argExpr = null;
            if(argument != null)
            {
                argExpr = this.Translate(MemberAccessParser.Parse(argument, src.Projector)).SqlExpression;
            }
            else if(!hasPredicateArg)
            {
                argExpr = this.Translate(src.Projector).SqlExpression;
            }

            TableAlias alias = new TableAlias();
            AggregateExpression aggExpr = new AggregateExpression(aggName, argExpr, false);
            SelectExpression select = new SelectExpression(alias, new ColumnDeclaration[] { new ColumnDeclaration("", aggExpr) }, src.SqlExpression, null);

            GroupByInfo info;
            if(!argumentWasPredicate && this.groupByMap.TryGetValue(src, out info))
            {
                if (argument != null)
                {
                    argExpr = this.Translate(MemberAccessParser.Parse(argument, info.ElementExpr)).SqlExpression;
                }
                else if (!hasPredicateArg)
                {
                    argExpr = this.Translate(info.ElementExpr).SqlExpression;
                }
                aggExpr = new AggregateExpression(aggName, argExpr, false);
                CurrentResult = new TranslateResult(aggExpr);
                return m;
            }
            CurrentResult = new TranslateResult(select);
            return m;
        }

        private Expression VisitExtractor(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            if (m.Arguments.Count > 1)
                throw new NotSupportedException("不支持多参数的" + m.Method.Name + "方法");

            TranslateResult src = this.Translate(source);
            Type elementType = TypeUtil.GetElementType(source.Type);
            ParameterExpression param = Expression.Parameter(typeof(IEnumerable<>).MakeGenericType(elementType));
            Expression body = Expression.Call(typeof(Enumerable), m.Method.Name, new Type[] { elementType }, param);
            LambdaExpression extractor = Expression.Lambda(body, param);
            CurrentResult = new TranslateResult(src.SqlExpression, src.Projector, extractor);
            return m;
        }

        protected override Expression VisitInjected(InjectedExpression node)
        {
            CurrentResult = node.TranslateResult;
            return node;
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

        private class GroupByInfo
        {
            public Expression ElementExpr { get; set; }

            public TableAlias Alias { get; set; }
        }

        private bool HasPredicateArg(string aggName)
        {
            return aggName == "COUNT";
        }

        private string GetAggregateName(MethodCallExpression m)
        {
            switch (m.Method.Name)
            {
                case "Count":
                    return "COUNT";
                case "Min":
                    return "MIN";
                case "Max":
                    return "MAX";
                case "Sum":
                    return "SUM";
                case "Average":
                    return "AVG";
                default:
                    throw new NotSupportedException("Unsupported aggregate type: " + m.Method.Name);
            }
        }

        private SqlExpression BuildPredicateWithNullsEqual(IEnumerable<SqlExpression> source1, IEnumerable<SqlExpression> source2)
        {
            IEnumerator<SqlExpression> en1 = source1.GetEnumerator();
            IEnumerator<SqlExpression> en2 = source2.GetEnumerator();
            SqlExpression result = null;
            while (en1.MoveNext() && en2.MoveNext())
            {
                SqlExpression compare = new FrameDAL.SqlExpressions.BinaryExpression(
                    SqlExpressionType.Or,
                    new FrameDAL.SqlExpressions.BinaryExpression(
                        SqlExpressionType.And,
                        new FrameDAL.SqlExpressions.UnaryExpression(SqlExpressionType.IsNull, en1.Current),
                        new FrameDAL.SqlExpressions.UnaryExpression(SqlExpressionType.IsNull, en2.Current)
                        ),
                    new FrameDAL.SqlExpressions.BinaryExpression(
                        SqlExpressionType.Equal,
                        en1.Current,
                        en2.Current
                        )
                    );
                result = (result == null) ? compare : new FrameDAL.SqlExpressions.BinaryExpression(SqlExpressionType.And, result, compare);
            }
            return result;
        }

        private bool HasComparerArgument(MethodCallExpression m)
        {
            return m.Arguments.Any(e => e.Type.GetGenericTypeDefinition() == typeof(IEqualityComparer<>));
        }

        private OrderType GetOrderType(MethodCallExpression m)
        {
            return m.Method.Name.EndsWith("Descending") ? OrderType.Descending : OrderType.Ascending;
        }

        private class JoinTypeJudger : ExpressionVisitor
        {
            private bool isParamReferenced = false;
            private ParameterExpression param;

            public static JoinType GetJoinType(LambdaExpression collectionSelector)
            {
                JoinTypeJudger judger = new JoinTypeJudger();
                judger.param = collectionSelector.Parameters[0];
                judger.Visit(collectionSelector.Body);
                return judger.isParamReferenced ? JoinType.CrossApply : JoinType.CrossJoin;
            }

            protected override Expression VisitParameter(ParameterExpression node)
            {
                if (node == param) isParamReferenced = true;
                return base.VisitParameter(node);
            }
        }

        private static Expression StripQuotes(Expression e)
        {
            while (e.NodeType == ExpressionType.Quote)
            {
                e = ((System.Linq.Expressions.UnaryExpression)e).Operand;
            }
            return e;
        }

        private ProjectedColumns ProjectColumns(Expression expression, TableAlias newAlias, params TableAlias[] existingAliases)
        {
            return ColumnProjector.ProjectColumns(expression, null, newAlias, existingAliases);
        }

        private bool IsTable(object value)
        {
            IQueryable q = value as IQueryable;
            return q != null && q.Expression.NodeType == ExpressionType.Constant;
        }

        private TranslateResult GetDefaultProjection(IQueryable query)
        {
            TableAlias tableAlias = new TableAlias();
            TableAlias selectAlias = new TableAlias();
            List<MemberBinding> bindings = new List<MemberBinding>();
            List<ColumnDeclaration> columns = new List<ColumnDeclaration>();
            foreach(PropertyInfo prop in query.ElementType.GetCachedProperties())
            {
                ColumnAttribute column = prop.GetColumnAttribute();
                if (column == null) continue;
                bindings.Add(Expression.Bind(prop, new InjectedExpression(
                    new TranslateResult(new ColumnExpression(selectAlias, column.Name)), prop.PropertyType)));
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
                string columnName = ((ColumnExpression)((InjectedExpression)assign.Expression).TranslateResult.SqlExpression).ColumnName;
                assign.Member.SetValue(proxy, row[columnName]);
            }
            return (T)proxy;
        }
    }
}
