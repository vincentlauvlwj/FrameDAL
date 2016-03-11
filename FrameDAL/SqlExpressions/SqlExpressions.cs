using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Utility;

namespace FrameDAL.SqlExpressions
{
    public enum SqlExpressionType
    {
        Table,
        Column,
        Select,
        Join,
        Aggregate,
        Exists,
        In,
        IsNull,
        Between,
        Insert,
        Update,
        Delete,
        Function,
        Constant
    }

    public abstract class SqlExpression
    {
        public SqlExpressionType NodeType { get; private set; }

        protected SqlExpression(SqlExpressionType nodeType)
        {
            this.NodeType = nodeType;
        }
    }

    public class TableExpression : SqlExpression
    {
        public string TableAlias { get; private set; }

        public string TableName { get; private set; }

        public TableExpression(string tableAlias, string tableName) : base(SqlExpressionType.Table)
        {
            this.TableAlias = tableAlias;
            this.TableName = tableName;
        }
    }

    public class ColumnExpression : SqlExpression
    {
        public string TableAlias { get; private set; }

        public string ColumnName { get; private set; }

        public ColumnExpression(string tableAlias, string columnName) : base(SqlExpressionType.Column)
        {
            this.TableAlias = tableAlias;
            this.ColumnName = columnName;
        }
    }

    public class ColumnDeclaration
    {
        public string ColumnAlias { get; private set; }

        public SqlExpression Expression { get; private set; }

        public ColumnDeclaration(string columnAlias, SqlExpression expression)
        {
            this.ColumnAlias = columnAlias;
            this.Expression = expression;
        }
    }

    public enum OrderType
    {
        Ascending,
        Descending
    }

    public class OrderByDeclaration
    {
        public OrderType OrderType { get; private set; }

        public SqlExpression Expression { get; private set; }

        public OrderByDeclaration(OrderType orderType, SqlExpression expression)
        {
            this.OrderType = orderType;
            this.Expression = expression;
        }
    }

    public class SelectExpression : SqlExpression
    {
        public string TableAlias { get; private set; }

        public ReadOnlyCollection<ColumnDeclaration> Columns { get; private set; }

        public SqlExpression From { get; private set; }

        public SqlExpression Where { get; private set; }

        public ReadOnlyCollection<OrderByDeclaration> OrderBy { get; private set; }

        public ReadOnlyCollection<SqlExpression> GroupBy { get; private set; }

        public int? Skip { get; private set; }

        public int? Take { get; private set; }

        public bool IsDistinct { get; private set; }

        public SelectExpression(
            string tableAlias,
            IEnumerable<ColumnDeclaration> columns,
            SqlExpression from,
            SqlExpression where,
            IEnumerable<OrderByDeclaration> orderBy,
            IEnumerable<SqlExpression> groupBy,
            int? skip,
            int? take,
            bool isDistinct 
            )
            : base(SqlExpressionType.Select)
        {
            this.TableAlias = tableAlias;
            this.Columns = columns.ToReadOnly();
            this.From = from;
            this.Where = where;
            this.OrderBy = orderBy.ToReadOnly();
            this.GroupBy = groupBy.ToReadOnly();
            this.Skip = skip;
            this.Take = take;
            this.IsDistinct = isDistinct;
        }

        public SelectExpression(
            string tableAlias,
            IEnumerable<ColumnDeclaration> columns,
            SqlExpression from,
            SqlExpression where,
            IEnumerable<OrderByDeclaration> orderBy,
            IEnumerable<SqlExpression> groupBy
            )
            : this(tableAlias, columns, from, where, orderBy, groupBy, null, null, false)
        {
        }

        public SelectExpression(
            string tableAlias,
            IEnumerable<ColumnDeclaration> columns,
            SqlExpression from,
            SqlExpression where
            )
            : this(tableAlias, columns, from, where, null, null)
        {
        }
    }

    public enum JoinType
    {
        CrossJoin,
        InnerJoin,
        LeftOuterJoin,
        RightOuterJoin,
        CrossApply,
        OuterApply
    }

    public class JoinExpression : SqlExpression
    {
        public JoinType JoinType { get; private set; }

        public SqlExpression Left { get; private set; }

        public SqlExpression Right { get; private set; }

        public SqlExpression Condition { get; private set; }

        public JoinExpression(JoinType joinType, SqlExpression left, SqlExpression right, SqlExpression condition)
            : base(SqlExpressionType.Join)
        {
            this.JoinType = joinType;
            this.Left = left;
            this.Right = right;
            this.Condition = condition;
        }
    }

    public class ExistsExpression : SqlExpression
    {
        public SelectExpression Select { get; private set; }

        public ExistsExpression(SelectExpression select) : base(SqlExpressionType.Exists)
        {
            this.Select = select;
        }
    }

    public class InExpression : SqlExpression
    {
        public SqlExpression Expression { get; private set; }

        public SelectExpression Select { get; private set; }

        public ReadOnlyCollection<SqlExpression> Values { get; private set; }

        public InExpression(SqlExpression expression, SelectExpression select) : base(SqlExpressionType.In)
        {
            this.Expression = expression;
            this.Select = select;
        }

        public InExpression(SqlExpression expression, IEnumerable<SqlExpression> values) : base(SqlExpressionType.In)
        {
            this.Expression = expression;
            this.Values = values.ToReadOnly();
        }
    }

    public class AggregateExpression : SqlExpression
    {
        public string AggregateName { get; private set; }

        public SqlExpression Argument { get; private set; }

        public bool IsDistinct { get; private set; }

        public AggregateExpression(string aggregateName, SqlExpression argument, bool isDistinct) : base(SqlExpressionType.Aggregate)
        {
            this.AggregateName = aggregateName;
            this.Argument = argument;
            this.IsDistinct = isDistinct;
        }
    }

    public class IsNullExpression : SqlExpression
    {
        public SqlExpression Expression { get; private set; }

        public IsNullExpression(SqlExpression expression) : base(SqlExpressionType.IsNull)
        {
            this.Expression = expression;
        }
    }

    public class BetweenExpression : SqlExpression
    {
        public SqlExpression Expression { get; private set; }

        public SqlExpression Lower { get; private set; }

        public SqlExpression Upper { get; private set; }

        public BetweenExpression(SqlExpression expression, SqlExpression lower, SqlExpression upper) : base(SqlExpressionType.Between)
        {
            this.Expression = expression;
            this.Lower = lower;
            this.Upper = upper;
        }
    }

    public class ConstantExpression : SqlExpression
    {
        public object Value { get; private set; }

        public ConstantExpression(object value) : base(SqlExpressionType.Constant)
        {
            this.Value = value;
        }
    }

    public class FunctionExpression : SqlExpression
    {
        public string FuncName { get; private set; }

        public ReadOnlyCollection<SqlExpression> Arguments { get; private set; }

        public FunctionExpression(string funcName, IEnumerable<SqlExpression> arguments) : base(SqlExpressionType.Function)
        {
            this.FuncName = funcName;
            this.Arguments = arguments.ToReadOnly();
        }
    }

    public abstract class CommandExpression : SqlExpression
    {
        protected CommandExpression(SqlExpressionType nodeType) : base(nodeType) { }
    }

    public class ColumnAssignment
    {
        public ColumnExpression Column { get; private set; }

        public SqlExpression Expression { get; private set; }

        public ColumnAssignment(ColumnExpression column, SqlExpression expression)
        {
            this.Column = column;
            this.Expression = expression;
        }
    }

    public class InsertExpression : CommandExpression
    {
        public TableExpression Table { get; private set; }

        public ReadOnlyCollection<ColumnAssignment> Assignments { get; private set; }

        public InsertExpression(TableExpression table, IEnumerable<ColumnAssignment> assignments)
            : base(SqlExpressionType.Insert)
        {
            this.Table = table;
            this.Assignments = assignments.ToReadOnly();
        }
    }

    public class UpdateExpression : CommandExpression
    {
        public TableExpression Table { get; private set; }

        public SqlExpression Where { get; private set; }

        public ReadOnlyCollection<ColumnAssignment> Assignments { get; private set; }

        public UpdateExpression(TableExpression table, SqlExpression where, IEnumerable<ColumnAssignment> assignments)
            : base(SqlExpressionType.Update)
        {
            this.Table = table;
            this.Where = where;
            this.Assignments = assignments.ToReadOnly();
        }
    }

    public class DeleteExpression : CommandExpression
    {
        public TableExpression Table { get; private set; }

        public SqlExpression Where { get; private set; }

        public DeleteExpression(TableExpression table, SqlExpression where) : base(SqlExpressionType.Delete)
        {
            this.Table = table;
            this.Where = where;
        }
    }
}
