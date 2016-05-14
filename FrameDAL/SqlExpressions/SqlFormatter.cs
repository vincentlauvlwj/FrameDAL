using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Utility;

namespace FrameDAL.SqlExpressions
{
    public class FormatResult
    {
        public string SqlText { get; set; }

        public List<object> Parameters { get; set; }
    }

    public class SqlFormatter : SqlExpressionVisitor
    {
        private int depth;
        private StringBuilder sb;
        private List<object> parameters;
        private Dictionary<TableAlias, string> aliases;

        private SqlFormatter()
        {
            sb = new StringBuilder();
            parameters = new List<object>();
            aliases = new Dictionary<TableAlias, string>();
        }

        public static FormatResult Format(SqlExpression expression)
        {
            SqlFormatter formatter = new SqlFormatter();
            formatter.Visit(expression);
            return new FormatResult() { SqlText = formatter.sb.ToString(), Parameters = formatter.parameters };
        }

        protected void Write(object value)
        {
            this.sb.Append(value);
        }

        protected enum Indentation
        {
            Inner,
            Same,
            Outer
        }

        protected void NewLine(Indentation style)
        {
            this.sb.AppendLine();
            this.Indent(style);
            for (int i = 0, n = this.depth * 2; i < n; i++)
            {
                this.Write(" ");
            }
        }

        protected void Indent(Indentation style)
        {
            if (style == Indentation.Inner)
            {
                depth++;
            }
            else if (style == Indentation.Outer)
            {
                this.depth--;
                System.Diagnostics.Debug.Assert(this.depth >= 0);
            }
        }
        
        protected virtual bool RequiresAsteriskWhenNoArgument(string aggName)
        {
            return aggName == "COUNT";
        }

        protected virtual string GetAliasName(TableAlias alias)
        {
            string name;
            if(!this.aliases.TryGetValue(alias, out name))
            {
                name = "t" + this.aliases.Count;
                this.aliases.Add(alias, name);
            }
            return name;
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

        protected override SqlExpression VisitConstant(ConstantExpression expr)
        {
            this.Write("? ");
            parameters.Add(expr.Value);
            return expr;
        }

        protected override SqlExpression VisitLiteral(LiteralExpression expr)
        {
            this.Write(expr.SqlText + " ");
            return expr;
        }

        protected override SqlExpression VisitUnary(UnaryExpression expr)
        {
            if (expr.NodeType == SqlExpressionType.IsNull)
            {
                this.Write("(");
                this.Visit(expr.Operand);
                this.Write(") ");
                this.Write(GetOperator(expr));
            }
            else
            {
                this.Write(GetOperator(expr));
                this.Write(" (");
                this.Visit(expr.Operand);
                this.Write(") ");
            }
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
            this.Write(") ");
            return expr;
        }

        protected override SqlExpression VisitTable(TableExpression expr)
        {
            this.Write(expr.TableName + " " + GetAliasName(expr.TableAlias) + " ");
            return expr;
        }

        protected override SqlExpression VisitAggregate(AggregateExpression expr)
        {
            this.Write(expr.AggregateName + "(");
            this.Write(expr.IsDistinct ? "DISTINCT " : "");
            if (expr.Argument != null)
            {
                this.Visit(expr.Argument);
            }
            else if(RequiresAsteriskWhenNoArgument(expr.AggregateName))
            {
                this.Write("*");
            }
            this.Write(") ");
            return expr;
        }

        protected override SqlExpression VisitColumn(ColumnExpression expr)
        {
            this.Write(GetAliasName(expr.TableAlias) + "." + expr.ColumnName + " ");
            return expr;
        }

        protected override ColumnDeclaration VisitColumnDeclaration(ColumnDeclaration column)
        {
            if(column.Expression.NodeType == SqlExpressionType.Select)
            {
                this.Write("(");
                this.NewLine(Indentation.Inner);
                this.Visit(column.Expression);
                this.NewLine(Indentation.Outer);
                this.Write(") ");
            }
            else
            {
                this.Visit(column.Expression);
            }
            ColumnExpression c = column.Expression as ColumnExpression;
            if ((c != null && c.ColumnName != column.DeclaredName || c == null) && !string.IsNullOrWhiteSpace(column.DeclaredName))
            {
                this.Write("AS " + column.DeclaredName + " ");
            }
            return column;
        }

        protected override ReadOnlyCollection<ColumnDeclaration> VisitColumnDeclarations(ReadOnlyCollection<ColumnDeclaration> columns)
        {
            for(int i = 0, n = columns.Count; i < n;i ++)
            {
                if (i > 0) this.Write(", ");
                this.VisitColumnDeclaration(columns[i]);
            }
            return columns;
        }

        protected override SqlExpression VisitSelect(SelectExpression expr)
        {
            if (expr.Columns == null || expr.Columns.Count == 0 || expr.From == null)
                throw new Exception("invalid sql tree!");
            this.Write("SELECT ");
            if(expr.IsDistinct)
            {
                this.Write("DISTINCT ");
            }
            this.VisitColumnDeclarations(expr.Columns);

            this.NewLine(Indentation.Same);
            this.Write("FROM ");
            this.VisitSource(expr.From);

            if(expr.Where != null)
            {
                this.NewLine(Indentation.Same);
                this.Write("WHERE ");
                this.Visit(expr.Where);
            }
            if(expr.GroupBy != null && expr.GroupBy.Count != 0)
            {
                this.NewLine(Indentation.Same);
                this.Write("GROUP BY ");
                this.VisitExpressionList(expr.GroupBy);
            }
            if(expr.OrderBy != null && expr.OrderBy.Count != 0)
            {
                this.NewLine(Indentation.Same);
                this.Write("ORDER BY ");
                this.VisitOrderBy(expr.OrderBy);
            }
            if(expr.Skip != null || expr.Take != null)
            {
                this.NewLine(Indentation.Same);
                this.Write(string.Format("LIMIT {0}, {1}", expr.Skip == null ? 0 : expr.Skip.Value, expr.Take == null ? int.MaxValue : expr.Take.Value));
            }
            return expr;
        }

        protected override ReadOnlyCollection<OrderByDeclaration> VisitOrderBy(ReadOnlyCollection<OrderByDeclaration> orders)
        {
            for (int i = 0, n = orders.Count; i < n; i++)
            {
                if (i > 0) this.Write(", ");
                this.VisitOrderByDeclaration(orders[i]);
            }
            return orders;
        }

        protected override OrderByDeclaration VisitOrderByDeclaration(OrderByDeclaration order)
        {
            this.Visit(order.Expression);
            if(order.OrderType == OrderType.Descending)
            {
                this.Write("DESC ");
            }
            return order;
        }

        protected override ReadOnlyCollection<SqlExpression> VisitExpressionList(ReadOnlyCollection<SqlExpression> original)
        {
            for (int i = 0, n = original.Count; i < n; i++)
            {
                if (i > 0) this.Write(", ");
                this.Visit(original[i]);
            }
            return original;
        }

        protected override SqlExpression VisitSource(SqlExpression expr)
        {
            switch(expr.NodeType)
            {
                case SqlExpressionType.Table:
                    this.Visit(expr);
                    break;
                case SqlExpressionType.Select:
                    SelectExpression select = (SelectExpression)expr;
                    this.Write("(");
                    this.NewLine(Indentation.Inner);
                    this.Visit(select);
                    this.NewLine(Indentation.Outer);
                    this.Write(") " + GetAliasName(select.TableAlias) + " ");
                    break;
                case SqlExpressionType.Join:
                    this.Visit(expr);
                    break;
                default:
                    throw new ArgumentException("Invalid Source!", nameof(expr));
            }
            return expr;
        }

        protected override SqlExpression VisitJoin(JoinExpression expr)
        {
            this.VisitSource(expr.Left);
            this.NewLine(Indentation.Same);
            switch(expr.JoinType)
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
            this.VisitSource(expr.Right);
            if(expr.Condition != null)
            {
                this.NewLine(Indentation.Same);
                this.Write("ON ");
                this.Visit(expr.Condition);
            }
            return expr;
        }
    }
}
