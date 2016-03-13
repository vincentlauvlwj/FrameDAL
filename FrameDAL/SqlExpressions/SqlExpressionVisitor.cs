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

        public virtual SqlExpression Visit(SqlExpression expr)
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
                case SqlExpressionType.LessThanOrEqual:
                case SqlExpressionType.GreaterThan:
                case SqlExpressionType.GreaterThanOrEqual:
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
                case SqlExpressionType.Aggregate:
                    return this.VisitAggregate((AggregateExpression)expr);
                case SqlExpressionType.Function:
                    return this.VisitFunction((FunctionExpression)expr);
                case SqlExpressionType.Constant:
                    return this.VisitConstant((ConstantExpression)expr);
                case SqlExpressionType.In:
                    return this.VisitIn((InExpression)expr);
                case SqlExpressionType.Between:
                    return this.VisitBetween((BetweenExpression)expr);
                case SqlExpressionType.Conditional:
                    return this.VisitConditional((ConditionalExpression)expr);
                case SqlExpressionType.Insert:
                case SqlExpressionType.Update:
                case SqlExpressionType.Delete:
                    return this.VisitCommand((CommandExpression)expr);
                case SqlExpressionType.Literal:
                    return this.VisitLiteral((LiteralExpression)expr);
                default:
                    return this.VisitUnknown(expr);
            }
        }

        protected virtual SqlExpression VisitLiteral(LiteralExpression expr)
        {
            return expr;
        }

        protected virtual SqlExpression VisitCommand(CommandExpression expr)
        {
            switch (expr.NodeType)
            {
                case SqlExpressionType.Insert:
                    return this.VisitInsert((InsertExpression)expr);
                case SqlExpressionType.Update:
                    return this.VisitUpdate((UpdateExpression)expr);
                case SqlExpressionType.Delete:
                    return this.VisitDelete((DeleteExpression)expr);
                default:
                    return this.VisitUnknown(expr);
            }
        }

        protected virtual SqlExpression VisitInsert(InsertExpression expr)
        {
            TableExpression table = (TableExpression)this.Visit(expr.Table);
            ReadOnlyCollection<ColumnAssignment> assignments = this.VisitColumnAssignments(expr.Assignments);
            return UpdateInsert(expr, table, assignments);
        }

        protected InsertExpression UpdateInsert(InsertExpression expr, TableExpression table, IEnumerable<ColumnAssignment> assignments)
        {
            if (table != expr.Table || assignments != expr.Assignments)
            {
                return new InsertExpression(table, assignments);
            }
            return expr;
        }

        protected virtual SqlExpression VisitUpdate(UpdateExpression expr)
        {
            TableExpression table = (TableExpression)this.Visit(expr.Table);
            SqlExpression where = this.Visit(expr.Where);
            ReadOnlyCollection<ColumnAssignment> assignments = this.VisitColumnAssignments(expr.Assignments);
            return UpdateUpdate(expr, table, where, assignments);
        }

        protected UpdateExpression UpdateUpdate(UpdateExpression expr, TableExpression table, SqlExpression where, IEnumerable<ColumnAssignment> assignments)
        {
            if (table != expr.Table || where != expr.Where || assignments != expr.Assignments)
            {
                return new UpdateExpression(table, where, assignments);
            }
            return expr;
        }

        protected virtual SqlExpression VisitDelete(DeleteExpression expr)
        {
            TableExpression table = (TableExpression)this.Visit(expr.Table);
            SqlExpression where = this.Visit(expr.Where);
            return UpdateDelete(expr, table, where);
        }

        protected DeleteExpression UpdateDelete(DeleteExpression expr, TableExpression table, SqlExpression where)
        {
            if (table != expr.Table || where != expr.Where)
            {
                return new DeleteExpression(table, where);
            }
            return expr;
        }

        protected virtual ReadOnlyCollection<ColumnAssignment> VisitColumnAssignments(ReadOnlyCollection<ColumnAssignment> assignments)
        {
            return System.Linq.Expressions.ExpressionVisitor.Visit(assignments, VisitColumnAssignment);
        }

        protected virtual ColumnAssignment VisitColumnAssignment(ColumnAssignment assignment)
        {
            ColumnExpression column = (ColumnExpression)this.Visit(assignment.Column);
            SqlExpression expression = this.Visit(assignment.Expression);
            return UpdateColumnAssignment(assignment, column, expression);
        }

        protected ColumnAssignment UpdateColumnAssignment(ColumnAssignment assignment, ColumnExpression column, SqlExpression expression)
        {
            if (column != assignment.Column || expression != assignment.Expression)
            {
                return new ColumnAssignment(column, expression);
            }
            return assignment;
        }

        protected virtual SqlExpression VisitConditional(ConditionalExpression expr)
        {
            SqlExpression test = this.Visit(expr.Test);
            SqlExpression ifTrue = this.Visit(expr.IfTrue);
            SqlExpression ifFalse = this.Visit(expr.IfFalse);
            return UpdateConditional(expr, test, ifTrue, ifFalse);
        }

        protected ConditionalExpression UpdateConditional(ConditionalExpression expr, SqlExpression test, SqlExpression ifTrue, SqlExpression ifFalse)
        {
            if (test != expr.Test || ifTrue != expr.IfTrue || ifFalse != expr.IfFalse)
            {
                return new ConditionalExpression(test, ifTrue, ifFalse);
            }
            return expr;
        }

        protected virtual SqlExpression VisitBetween(BetweenExpression expr)
        {
            SqlExpression expression = this.Visit(expr.Expression);
            SqlExpression lower = this.Visit(expr.Lower);
            SqlExpression upper = this.Visit(expr.Upper);
            return UpdateBetween(expr, expression, lower, upper);
        }

        protected BetweenExpression UpdateBetween(BetweenExpression expr, SqlExpression expression, SqlExpression lower, SqlExpression upper)
        {
            if (expression != expr.Expression || lower != expr.Lower || upper != expr.Upper)
            {
                return new BetweenExpression(expression, lower, upper);
            }
            return expr;
        }

        protected virtual SqlExpression VisitIn(InExpression expr)
        {
            SqlExpression expression = this.Visit(expr.Expression);
            SelectExpression select = (SelectExpression)this.Visit(expr.Select);
            ReadOnlyCollection<SqlExpression> values = this.VisitExpressionList(expr.Values);
            return UpdateIn(expr, expression, select, values);
        }

        protected InExpression UpdateIn(InExpression expr, SqlExpression expression, SelectExpression select, IEnumerable<SqlExpression> values)
        {
            if (expression != expr.Expression || select != expr.Select || values != expr.Values)
            {
                if (select == null)
                {
                    return new InExpression(expression, values);
                }
                else
                {
                    return new InExpression(expression, select);
                }
            }
            return expr;
        }

        protected virtual SqlExpression VisitConstant(ConstantExpression expr)
        {
            return expr;
        }

        protected virtual SqlExpression VisitFunction(FunctionExpression expr)
        {
            ReadOnlyCollection<SqlExpression> arguments = this.VisitExpressionList(expr.Arguments);
            return UpdateFunction(expr, expr.FuncName, arguments);
        }

        protected FunctionExpression UpdateFunction(FunctionExpression expr, string funcName, IEnumerable<SqlExpression> arguments)
        {
            if (funcName != expr.FuncName || arguments != expr.Arguments)
            {
                return new FunctionExpression(funcName, arguments);
            }
            return expr;
        }

        protected virtual SqlExpression VisitAggregate(AggregateExpression expr)
        {
            SqlExpression argument = this.Visit(expr.Argument);
            return UpdateAggregate(expr, expr.AggregateName, argument, expr.IsDistinct);
        }

        protected AggregateExpression UpdateAggregate(AggregateExpression expr, string aggregateName, SqlExpression argument, bool isDistinct)
        {
            if (aggregateName != expr.AggregateName || argument != expr.Argument || isDistinct != expr.IsDistinct)
            {
                return new AggregateExpression(aggregateName, argument, isDistinct);
            }
            return expr;
        }

        protected virtual SqlExpression VisitJoin(JoinExpression expr)
        {
            SqlExpression left = this.Visit(expr.Left);
            SqlExpression right = this.Visit(expr.Right);
            SqlExpression condition = this.Visit(expr.Condition);
            return UpdateJoin(expr, expr.JoinType, left, right, condition);
        }

        protected JoinExpression UpdateJoin(JoinExpression expr, JoinType joinType, SqlExpression left, SqlExpression right, SqlExpression condition)
        {
            if (joinType != expr.JoinType || left != expr.Left || right != expr.Right || condition != expr.Condition)
            {
                return new JoinExpression(joinType, left, right, condition);
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
            return UpdateSelect(expr, expr.TableAlias, columns, from, where, orderBy, groupBy, expr.Skip, expr.Take, expr.IsDistinct);
        }

        protected SelectExpression UpdateSelect(
            SelectExpression expr,
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
        {
            if(tableAlias != expr.TableAlias
                || columns != expr.Columns
                || from != expr.From
                || where != expr.Where
                || orderBy != expr.OrderBy
                || groupBy != expr.GroupBy
                || skip != expr.Skip
                || take != expr.Take
                || isDistinct != expr.IsDistinct)
            {
                return new SelectExpression(tableAlias, columns, from, where, orderBy, groupBy, skip, take, isDistinct);
            }
            return expr;
        }

        protected virtual SqlExpression VisitSource(SqlExpression expr)
        {
            return this.Visit(expr);
        }

        protected virtual ReadOnlyCollection<OrderByDeclaration> VisitOrderBy(ReadOnlyCollection<OrderByDeclaration> orders)
        {
            return System.Linq.Expressions.ExpressionVisitor.Visit(orders, VisitOrderByDeclaration);
        }

        protected virtual OrderByDeclaration VisitOrderByDeclaration(OrderByDeclaration order)
        {
            SqlExpression expression = this.Visit(order.Expression);
            return UpdateOrderByDeclaration(order, order.OrderType, expression);
        }

        protected OrderByDeclaration UpdateOrderByDeclaration(OrderByDeclaration order, OrderType orderType, SqlExpression expression)
        {
            if(orderType != order.OrderType || expression != order.Expression)
            {
                return new OrderByDeclaration(orderType, expression);
            }
            return order;
        }

        protected virtual ReadOnlyCollection<SqlExpression> VisitExpressionList(ReadOnlyCollection<SqlExpression> original)
        {
            return System.Linq.Expressions.ExpressionVisitor.Visit(original, Visit);
        }

        protected virtual ReadOnlyCollection<ColumnDeclaration> VisitColumnDeclarations(ReadOnlyCollection<ColumnDeclaration> columns)
        {
            return System.Linq.Expressions.ExpressionVisitor.Visit(columns, VisitColumnDeclaration);
        }

        protected virtual ColumnDeclaration VisitColumnDeclaration(ColumnDeclaration column)
        {
            SqlExpression expression = this.Visit(column.Expression);
            return UpdateColumnDeclaration(column, column.DeclaredName, expression);
        }

        protected ColumnDeclaration UpdateColumnDeclaration(ColumnDeclaration column, string columnAlias, SqlExpression expression)
        {
            if(columnAlias != column.DeclaredName || expression != column.Expression)
            {
                return new ColumnDeclaration(columnAlias, expression);
            }
            return column;
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
            return UpdateBinary(expr, expr.NodeType, left, right);
        }

        protected BinaryExpression UpdateBinary(BinaryExpression expr, SqlExpressionType nodeType, SqlExpression left, SqlExpression right)
        {
            if (nodeType != expr.NodeType || left != expr.Left || right != expr.Right)
            {
                return new BinaryExpression(nodeType, left, right);
            }
            return expr;
        }

        protected virtual SqlExpression VisitUnary(UnaryExpression expr)
        {
            SqlExpression operand = this.Visit(expr.Operand);
            return UpdateUnary(expr, expr.NodeType, operand);
        }

        protected UnaryExpression UpdateUnary(UnaryExpression expr, SqlExpressionType nodeType, SqlExpression operand)
        {
            if(nodeType != expr.NodeType || operand != expr.Operand)
            {
                return new UnaryExpression(nodeType, operand);
            }
            return expr;
        }

        protected virtual SqlExpression VisitUnknown(SqlExpression expr)
        {
            throw new NotSupportedException("不支持的表达式类型：" + nameof(expr.NodeType));
        }
    }
}
