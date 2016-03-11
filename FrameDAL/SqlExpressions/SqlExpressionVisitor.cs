using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.SqlExpressions
{
    public abstract class SqlExpressionVisitor
    {
        protected SqlExpressionVisitor() { }

        protected virtual SqlExpression Visit(SqlExpression expr)
        {
            if (expr == null) return null;

            switch(expr.NodeType)
            {
                case SqlExpressionType.Exists:
                case SqlExpressionType.IsNull:
                case SqlExpressionType.Negate:
                case SqlExpressionType.Not:
                case SqlExpressionType.UnaryPlus:
                    return this.VisitUnary((UnaryExpression)expr);
                case SqlExpressionType.Add:
                case SqlExpressionType.Subtract:
                case SqlExpressionType.Multiply:
                case SqlExpressionType.Divide:
                case SqlExpressionType.Modulo:
                case SqlExpressionType.And:
                case SqlExpressionType.Or:
                case SqlExpressionType.LessThan:
                case SqlExpressionType.GreaterThan:
                case SqlExpressionType.Equal:
                case SqlExpressionType.NotEqual:
                case SqlExpressionType.RightShift:
                case SqlExpressionType.LeftShift:
                case SqlExpressionType.ExclusiveOr:
                    return this.VisitBinary((BinaryExpression)expr);
                case SqlExpressionType.Table:
                    return this.VisitTable((TableExpression)expr);
                case SqlExpressionType.Column:
                    return this.VisitColumn((ColumnExpression)expr);
                case SqlExpressionType.Select:
                    return this.VisitSelect((SelectExpression)expr);
                case SqlExpressionType.Join:
                    return this.VisitJoin((JoinExpression)expr);

                default:
                    throw new NotSupportedException("不支持的表达式类型：" + nameof(expr.NodeType));
            }
        }

        protected virtual SqlExpression VisitJoin(JoinExpression expr)
        {
            SqlExpression left = this.Visit(expr.Left);
            SqlExpression right = this.Visit(expr.Right);
            SqlExpression condition = this.Visit(expr.Condition);
            if(left != expr.Left || right != expr.Right || condition != expr.Condition)
            {
                return new JoinExpression(expr.JoinType, left, right, condition);
            }
            return expr;
        }

        protected virtual SqlExpression VisitSelect(SelectExpression expr)
        {
            SqlExpression from = this.VisitSource(expr.From);
            SqlExpression where = this.Visit(expr.Where);
            ReadOnlyCollection<OrderByDeclaration> orderBy = this.VisitOrderBy(expr.OrderBy);
            ReadOnlyCollection<SqlExpression> groupBy = this.VisitExpressionList(expr.GroupBy);
            ReadOnlyCollection<ColumnDeclaration> columns = this.VisitColumnDeclarations(expr.Columns);
            if(from != expr.From
                || where != expr.Where
                || orderBy != expr.OrderBy
                || groupBy != expr.GroupBy
                || columns != expr.Columns
                )
            {
                return new SelectExpression(expr.TableAlias, columns, from, where, orderBy, groupBy);
            }
            return expr;
        }

        protected virtual SqlExpression VisitSource(SqlExpression expr)
        {
            return this.Visit(expr);
        }

        protected virtual ReadOnlyCollection<OrderByDeclaration> VisitOrderBy(ReadOnlyCollection<OrderByDeclaration> orders)
        {
            if (orders != null)
            {
                List<OrderByDeclaration> alternate = null;
                for (int i = 0, n = orders.Count; i < n; i++)
                {
                    OrderByDeclaration expr = orders[i];
                    SqlExpression e = this.Visit(expr.Expression);
                    if (alternate == null && e != expr.Expression)
                    {
                        alternate = orders.Take(i).ToList();
                    }
                    if (alternate != null)
                    {
                        alternate.Add(new OrderByDeclaration(expr.OrderType, e));
                    }
                }
                if (alternate != null)
                {
                    return alternate.AsReadOnly();
                }
            }
            return orders;
        }

        protected virtual ReadOnlyCollection<SqlExpression> VisitExpressionList(ReadOnlyCollection<SqlExpression> original)
        {
            if (original != null)
            {
                List<SqlExpression> list = null;
                for (int i = 0, n = original.Count; i < n; i++)
                {
                    SqlExpression p = this.Visit(original[i]);
                    if (list != null)
                    {
                        list.Add(p);
                    }
                    else if (p != original[i])
                    {
                        list = new List<SqlExpression>(n);
                        for (int j = 0; j < i; j++)
                        {
                            list.Add(original[j]);
                        }
                        list.Add(p);
                    }
                }
                if (list != null)
                {
                    return list.AsReadOnly();
                }
            }
            return original;
        }

        protected virtual ReadOnlyCollection<ColumnDeclaration> VisitColumnDeclarations(ReadOnlyCollection<ColumnDeclaration> columns)
        {
            List<ColumnDeclaration> alternate = null;
            for (int i = 0, n = columns.Count; i < n; i++)
            {
                ColumnDeclaration column = columns[i];
                SqlExpression e = this.Visit(column.Expression);
                if (alternate == null && e != column.Expression)
                {
                    alternate = columns.Take(i).ToList();
                }
                if (alternate != null)
                {
                    alternate.Add(new ColumnDeclaration(column.ColumnAlias, e));
                }
            }
            if (alternate != null)
            {
                return alternate.AsReadOnly();
            }
            return columns;
        }

        protected virtual SqlExpression VisitColumn(ColumnExpression expr)
        {
            return expr;
        }

        protected virtual SqlExpression VisitTable(TableExpression expr)
        {
            return expr;
        }

        protected virtual SqlExpression VisitBinary(BinaryExpression expr)
        {
            SqlExpression left = this.Visit(expr.Left);
            SqlExpression right = this.Visit(expr.Right);
            if(expr.Left != left || expr.Right != right)
            {
                return new BinaryExpression(expr.NodeType, left, right);
            }
            return expr;
        }

        protected virtual SqlExpression VisitUnary(UnaryExpression expr)
        {
            SqlExpression operand = this.Visit(expr.Operand);
            if(expr.Operand != operand)
            {
                return new UnaryExpression(expr.NodeType, operand);
            }
            return expr;
        }
    }
}
