using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Utility;

namespace FrameDAL.SqlExpressions
{
    public class FormatterResult
    {
        public string SqlText { get; private set; }

        public ReadOnlyCollection<object> Parameters { get; private set; }

        public FormatterResult(string sqlText, IEnumerable<object> parameters)
        {
            this.SqlText = sqlText;
            this.Parameters = parameters.ToReadOnly();
        }
    }

    public class SqlFormatter : SqlExpressionVisitor
    {
        private StringBuilder sb;
        private int indent = 2;
        private int depth;
        private List<object> parameters;

        public static FormatterResult Format(SqlExpression expression)
        {
            SqlFormatter formatter = new SqlFormatter();
            formatter.Visit(expression);
            return new FormatterResult(formatter.sb.ToString(), formatter.parameters);
        }

        protected enum Indentation
        {
            Same,
            Inner,
            Outer
        }

        protected void Write(object value)
        {
            this.sb.Append(value);
        }

        protected virtual void WriteAsAliasName(string aliasName)
        {
            this.Write("AS ");
            this.WriteAliasName(aliasName);
        }

        protected virtual void WriteAliasName(string aliasName)
        {
            this.Write(aliasName);
        }

        protected virtual void WriteAsColumnName(string columnName)
        {
            this.Write("AS ");
            this.WriteColumnName(columnName);
        }

        protected virtual void WriteColumnName(string columnName)
        {
            // string name = (this.Language != null) ? this.Language.Quote(columnName) : columnName;
            this.Write(columnName);
        }

        protected virtual void WriteTableName(string tableName)
        {
            // string name = (this.Language != null) ? this.Language.Quote(tableName) : tableName;
            this.Write(tableName);
        }

        protected void WriteLine(Indentation style)
        {
            sb.AppendLine();
            this.Indent(style);
            for (int i = 0, n = this.depth * this.indent; i < n; i++)
            {
                this.Write(" ");
            }
        }

        protected void Indent(Indentation style)
        {
            if (style == Indentation.Inner)
            {
                this.depth++;
            }
            else if (style == Indentation.Outer)
            {
                this.depth--;
                System.Diagnostics.Debug.Assert(this.depth >= 0);
            }
        }

        protected virtual string GetOperator(UnaryExpression u)
        {
            switch (u.NodeType)
            {
                case SqlExpressionType.Exists:
                    return "EXISTS";
                case SqlExpressionType.IsNull:
                    return "IS NULL";
                case SqlExpressionType.Negate:
                    return "-";
                case SqlExpressionType.Not:
                    return "NOT";
                case SqlExpressionType.UnaryPlus:
                    return "+";
                default:
                    throw new NotSupportedException("不支持的操作符：" + u.NodeType);
            }
        }

        protected virtual string GetOperator(BinaryExpression u)
        {
            switch (u.NodeType)
            {
                case SqlExpressionType.Add:
                    return "+";
                case SqlExpressionType.Subtract:
                    return "-";
                case SqlExpressionType.Multiply:
                    return "*";
                case SqlExpressionType.Divide:
                    return "/";
                case SqlExpressionType.Modulo:
                    return "%";
                case SqlExpressionType.And:
                    return "AND";
                case SqlExpressionType.Or:
                    return "OR";
                case SqlExpressionType.LessThan:
                    return "<";
                case SqlExpressionType.LessThanOrEqual:
                    return "<=";
                case SqlExpressionType.GreaterThan:
                    return ">";
                case SqlExpressionType.GreaterThanOrEqual:
                    return ">=";
                case SqlExpressionType.Equal:
                    return "=";
                case SqlExpressionType.NotEqual:
                    return "<>";
                case SqlExpressionType.RightShift:
                    return ">>";
                case SqlExpressionType.LeftShift:
                    return "<<";
                case SqlExpressionType.ExclusiveOr:
                    return "^";
                default:
                    throw new NotSupportedException("不支持的操作符：" + u.NodeType);
            }
        }

        protected override SqlExpression VisitUnary(UnaryExpression expr)
        {
            this.Write(GetOperator(expr));
            this.Write(" (");
            this.Visit(expr.Operand);
            this.Write(")");
            return expr;
        }

        protected override SqlExpression VisitBinary(BinaryExpression expr)
        {
            this.Write("(");
            this.Visit(expr.Left);
            this.Write(") ");
            this.Write(GetOperator(expr));
            this.Write(" (");
            this.Visit(expr.Right);
            this.Write(")");
            return expr;
        }

        protected override SqlExpression VisitConstant(ConstantExpression expr)
        {
            this.Write("?");
            parameters.Add(expr.Value);
            return expr;
        }

        protected override SqlExpression VisitColumn(ColumnExpression expr)
        {
            this.WriteAliasName(expr.TableAlias);
            this.Write(".");
            this.WriteColumnName(expr.ColumnName);
            return expr;
        }

        protected override SqlExpression VisitSelect(SelectExpression expr)
        {
            this.Write("SELECT ");
            if(expr.IsDistinct)
            {
                this.Write("DISTINCT ");
            }
            this.WriteColumns(expr.Columns);
            if(expr.From != null)
            {
                this.WriteLine(Indentation.Same);
                this.Write("FROM ");
                this.VisitSource(expr.From);
            }
            if (expr.Where != null)
            {
                this.WriteLine(Indentation.Same);
                this.Write("WHERE ");
                this.Visit(expr.Where);
            }
            if (expr.GroupBy != null && expr.GroupBy.Count > 0)
            {
                this.WriteLine(Indentation.Same);
                this.Write("GROUP BY ");
                for (int i = 0, n = expr.GroupBy.Count; i < n; i++)
                {
                    if (i > 0)
                    {
                        this.Write(", ");
                    }
                    this.Visit(expr.GroupBy[i]);
                }
            }
            if (expr.OrderBy != null && expr.OrderBy.Count > 0)
            {
                this.WriteLine(Indentation.Same);
                this.Write("ORDER BY ");
                for (int i = 0, n = expr.OrderBy.Count; i < n; i++)
                {
                    OrderByDeclaration order = expr.OrderBy[i];
                    if (i > 0)
                    {
                        this.Write(", ");
                    }
                    this.Visit(order.Expression);
                    if (order.OrderType != OrderType.Ascending)
                    {
                        this.Write(" DESC");
                    }
                }
            }
            return base.VisitSelect(expr);
        }

        protected virtual void WriteColumns(ReadOnlyCollection<ColumnDeclaration> columns)
        {
            if (columns.Count > 0)
            {
                for (int i = 0, n = columns.Count; i < n; i++)
                {
                    ColumnDeclaration column = columns[i];
                    if (i > 0)
                    {
                        this.Write(", ");
                    }
                    ColumnExpression c = this.Visit(column.Expression) as ColumnExpression;
                    if (!string.IsNullOrEmpty(column.DeclaredName) && (c == null || c.ColumnName != column.DeclaredName))
                    {
                        this.Write(" ");
                        this.WriteAsColumnName(column.DeclaredName);
                    }
                }
            }
            else
            {
                this.Write("NULL ");
                this.WriteAsColumnName("tmp");
                this.Write(" ");
            }
        }

        protected override SqlExpression VisitSource(SqlExpression source)
        {
            switch (source.NodeType)
            {
                case SqlExpressionType.Table:
                    TableExpression table = (TableExpression)source;
                    this.WriteTableName(table.TableName);
                    this.Write(" ");
                    this.WriteAsAliasName(table.TableAlias);
                    break;
                case SqlExpressionType.Select:
                    SelectExpression select = (SelectExpression)source;
                    this.Write("(");
                    this.WriteLine(Indentation.Inner);
                    this.Visit(select);
                    this.WriteLine(Indentation.Same);
                    this.Write(") ");
                    this.WriteAsAliasName(select.TableAlias);
                    this.Indent(Indentation.Outer);
                    break;
                case SqlExpressionType.Join:
                    this.VisitJoin((JoinExpression)source);
                    break;
                default:
                    throw new InvalidOperationException("Select source is not valid type");
            }
            return source;
        }

        protected override SqlExpression VisitJoin(JoinExpression join)
        {
            this.VisitSource(join.Left);
            this.WriteLine(Indentation.Same);
            switch (join.JoinType)
            {
                case JoinType.CrossJoin:
                    this.Write("CROSS JOIN ");
                    break;
                case JoinType.InnerJoin:
                    this.Write("INNER JOIN ");
                    break;
                case JoinType.CrossApply:
                    this.Write("CROSS APPLY ");
                    break;
                case JoinType.OuterApply:
                    this.Write("OUTER APPLY ");
                    break;
                case JoinType.LeftOuterJoin:
                    this.Write("LEFT OUTER JOIN ");
                    break;
            }
            this.VisitSource(join.Right);
            if (join.Condition != null)
            {
                this.WriteLine(Indentation.Inner);
                this.Write("ON ");
                this.Visit(join.Condition);
                this.Indent(Indentation.Outer);
            }
            return join;
        }
    }
}
