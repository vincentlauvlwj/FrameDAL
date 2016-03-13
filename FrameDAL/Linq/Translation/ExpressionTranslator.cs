using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
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
        private Dictionary<ParameterExpression, Expression> map;
        private int aliasCount;
        private Configuration config;

        private ExpressionTranslator(Configuration config)
        {
            this.config = config;
            this.map = new Dictionary<ParameterExpression, Expression>();
        }

        public static TranslateResult Translate(Expression expr, Configuration config)
        {
            return new ExpressionTranslator(config).TranslateVisit(expr).TranslateResult;
        }

        private class Bundle
        {
            public Expression Expression { get; private set; }

            public TranslateResult TranslateResult { get; private set; }

            public Bundle(Expression expression, TranslateResult translateResult)
            {
                this.Expression = expression;
                this.TranslateResult = translateResult;
            }

            public SqlExpression SqlExpression
            {
                get { return TranslateResult.SqlExpression; }
            }

            public Expression Projector
            {
                get { return TranslateResult.Projector; }
            }

            public LambdaExpression Aggregator
            {
                get { return TranslateResult.Aggregator; }
            }
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
                //if (!_flag) throw new Exception("Debug Exception!");
            }
        }

        private class Status
        {
            public TranslateResult CurrentResult { get; private set; }

            public bool Flag { get; private set; }

            public Status(TranslateResult curResult, bool flag)
            {
                this.CurrentResult = curResult;
                this.Flag = flag;
            }
        }

        private Status PreTranslate()
        {
            Status status = new Status(_curResult, _flag);
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

        private Bundle TranslateVisit(Expression expr)
        {
            Status status = PreTranslate();
            expr = this.Visit(expr);
            return new Bundle(expr, PostTranslate(status));
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
                }
                throw new NotSupportedException("不支持的方法：" + m.Method.Name);
            }
            return base.VisitMethodCall(m);
        }

        private Expression VisitWhere(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            System.Diagnostics.Debug.WriteLine(source);
            LambdaExpression predicate = (LambdaExpression)StripQuotes(m.Arguments[1]);
            Bundle src = this.TranslateVisit(source);
            this.map[predicate.Parameters[0]] = src.Projector;
            Bundle where = this.TranslateVisit(predicate.Body);
            string alias = this.GetNextAlias();
            ProjectedColumns pc = this.ProjectColumns(
                src.Projector, 
                alias, 
                ((SelectExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, where.SqlExpression),
                pc.Projector);
            return m;
        }

        private Expression VisitSelect(MethodCallExpression m)
        {
            Expression source = m.Arguments[0];
            LambdaExpression selector = (LambdaExpression)StripQuotes(m.Arguments[1]);
            Bundle src = this.TranslateVisit(source);
            this.map[selector.Parameters[0]] = src.Projector;
            Bundle bundle = this.TranslateVisit(selector.Body);
            string alias = this.GetNextAlias();
            ProjectedColumns pc = this.ProjectColumns(
                bundle.Expression,
                alias,
                ((SelectExpression)src.SqlExpression).TableAlias);
            CurrentResult = new TranslateResult(
                new SelectExpression(alias, pc.Columns, src.SqlExpression, null),
                pc.Projector);
            return m;
        }

        public override Expression Visit(Expression node)
        {
            InjectedExpression injected = node as InjectedExpression;
            if(injected != null)
            {
                CurrentResult = new TranslateResult(injected.SqlExpression);
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

        protected override Expression VisitParameter(ParameterExpression node)
        {
            Expression e;
            if (this.map.TryGetValue(node, out e))
            {
                return e;
            }
            return node;
        }

        protected override Expression VisitMember(MemberExpression m)
        {
            Expression source = this.Visit(m.Expression);
            switch(source.NodeType)
            {
                case ExpressionType.Call:
                    MethodCallExpression call = (MethodCallExpression)source;
                    if(call != null && call.Method.Name == "NewDefaultProjectedObject")
                    {
                        var bindings = ((System.Linq.Expressions.ConstantExpression)call.Arguments[0]).Value as List<MemberBinding>;
                        for(int i = 0, n = bindings.Count; i < n; i++)
                        {
                            MemberAssignment assign = bindings[i] as MemberAssignment;
                            if (assign != null && MembersMatch(assign.Member, m.Member))
                            {
                                CurrentResult = new TranslateResult(((InjectedExpression)assign.Expression).SqlExpression);
                                return assign.Expression;
                            }
                        }
                    }
                    break;
                case ExpressionType.MemberInit:
                    MemberInitExpression min = (MemberInitExpression)source;
                    for (int i = 0, n = min.Bindings.Count; i < n; i++)
                    {
                        MemberAssignment assign = min.Bindings[i] as MemberAssignment;
                        if (assign != null && MembersMatch(assign.Member, m.Member))
                        {
                            CurrentResult = new TranslateResult(((InjectedExpression)assign.Expression).SqlExpression);
                            return assign.Expression;
                        }
                    }
                    break;
                case ExpressionType.New:
                    NewExpression nex = (NewExpression)source;
                    if (nex.Members != null)
                    {
                        for (int i = 0, n = nex.Members.Count; i < n; i++)
                        {
                            if (MembersMatch(nex.Members[i], m.Member))
                            {
                                CurrentResult = new TranslateResult(((InjectedExpression)nex.Arguments[i]).SqlExpression);
                                return nex.Arguments[i];
                            }
                        }
                    }
                    break;
            }
            return m.Update(source);
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
                Bundle bundle = this.TranslateVisit(node.Operand);
                this.CurrentResult = new TranslateResult(
                    new FrameDAL.SqlExpressions.UnaryExpression(
                        exprType.Value, bundle.SqlExpression));
                return node.Update(bundle.Expression);
            }
            return base.VisitUnary(node);
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
                Bundle left = this.TranslateVisit(node.Left);
                Bundle right = this.TranslateVisit(node.Right);
                this.CurrentResult = new TranslateResult(
                    new FrameDAL.SqlExpressions.BinaryExpression(
                        exprType.Value, left.SqlExpression, right.SqlExpression));
                return node.Update(left.Expression, node.Conversion, right.Expression);
            }
            return base.VisitBinary(node);
        }

        private bool MembersMatch(MemberInfo a, MemberInfo b)
        {
            if (a == b)
            {
                return true;
            }
            if (a is MethodInfo && b is PropertyInfo)
            {
                return a == ((PropertyInfo)b).GetGetMethod();
            }
            else if (a is PropertyInfo && b is MethodInfo)
            {
                return ((PropertyInfo)a).GetGetMethod() == b;
            }
            return false;
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
                bindings.Add(Expression.Bind(prop, new InjectedExpression(new ColumnExpression(selectAlias, column.Name), prop.PropertyType)));
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
            Expression projector = Expression.Call(
                Expression.Constant(this), 
                newDefaultProjectedObject.MakeGenericMethod(query.ElementType), 
                Expression.Constant(bindings),
                Expression.Parameter(typeof(DbDataReader), "reader"));
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
                new Type[] { typeof(IEnumerable<MemberBinding>), typeof(DbDataReader) });

        public T NewDefaultProjectedObject<T>(IEnumerable<MemberBinding> bindings, DbDataReader reader)
        {
            object proxy = EntityFactory.GetEntity(typeof(T), config.EnableLazy, false);
            foreach(MemberBinding binding in bindings)
            {
                MemberAssignment assign = (MemberAssignment)binding;
                string columnName = ((ColumnExpression)((InjectedExpression)assign.Expression).SqlExpression).ColumnName;
                object value = reader.GetValue(reader.GetOrdinal(columnName));
                assign.Member.SetValue(proxy, value);
            }
            return (T)proxy;
        }
    }
}
