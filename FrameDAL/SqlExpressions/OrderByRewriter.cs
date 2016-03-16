using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Utility;

namespace FrameDAL.SqlExpressions
{
    public class OrderByRewriter : SqlExpressionVisitor
    {
        IList<OrderByDeclaration> gatheredOrderings;
        bool isOuterMostSelect = true;

        public static SqlExpression Rewrite(SqlExpression expression)
        {
            return new OrderByRewriter().Visit(expression);
        }

        protected override SqlExpression VisitSelect(SelectExpression select)
        {
            bool saveIsOuterMostSelect = this.isOuterMostSelect;
            try
            {
                this.isOuterMostSelect = false;
                select = (SelectExpression)base.VisitSelect(select);

                bool hasOrderBy = select.OrderBy != null && select.OrderBy.Count > 0;
                bool hasGroupBy = select.GroupBy != null && select.GroupBy.Count > 0;
                bool canHaveOrderBy = saveIsOuterMostSelect || select.Take != null || select.Skip != null;
                bool canReceiveOrderings = canHaveOrderBy && !hasGroupBy && !select.IsDistinct && !AggregateChecker.HasAggregates(select);

                if(hasOrderBy)
                {
                    this.PrependOrderings(select.OrderBy);
                }
                IEnumerable<OrderByDeclaration> orderings = null;
                if(canReceiveOrderings)
                {
                    orderings = this.gatheredOrderings;
                }
                else if(canHaveOrderBy)
                {
                    orderings = select.OrderBy;
                }

                bool canPassOnOrderings = !saveIsOuterMostSelect && !hasGroupBy && !select.IsDistinct;
                ReadOnlyCollection<ColumnDeclaration> columns = select.Columns;
                if (this.gatheredOrderings != null)
                {
                    if (canPassOnOrderings)
                    {
                        HashSet<string> existingAliases = DeclaredAliasGatherer.Gather(select.From);
                        BindResult project = this.RebindOrderings(this.gatheredOrderings, select.TableAlias, existingAliases, select.Columns);
                        this.gatheredOrderings = null;
                        this.PrependOrderings(project.Orderings);
                        columns = project.Columns.ToReadOnly();
                    }
                    else
                    {
                        this.gatheredOrderings = null;
                    }
                }
                return this.UpdateSelect(select, select.TableAlias, columns, select.From, select.Where, orderings, select.GroupBy, select.Skip, select.Take, select.IsDistinct);
            }
            finally
            {
                this.isOuterMostSelect = saveIsOuterMostSelect;
            }
        }

        protected override SqlExpression VisitJoin(JoinExpression expr)
        {
            SqlExpression left = this.VisitSource(expr.Left);
            IList<OrderByDeclaration> leftOrders = this.gatheredOrderings;
            this.gatheredOrderings = null;
            SqlExpression right = this.VisitSource(expr.Right);
            this.PrependOrderings(leftOrders);
            SqlExpression condition = this.Visit(expr.Condition);
            return base.UpdateJoin(expr, expr.JoinType, left, right, condition);
        }

        private class BindResult
        {
            public IList<ColumnDeclaration> Columns { get; set; }

            public IList<OrderByDeclaration> Orderings { get; set; }
        }

        private BindResult RebindOrderings(IList<OrderByDeclaration> orderings, string alias, HashSet<string> existingAliases, IList<ColumnDeclaration> existingColumns)
        {
            List<ColumnDeclaration> newColumns = null;
            List<OrderByDeclaration> newOrderings = new List<OrderByDeclaration>();
            foreach(OrderByDeclaration ordering in orderings)
            {
                SqlExpression expr = ordering.Expression;
                ColumnExpression column = expr as ColumnExpression;
                if(column == null || existingAliases != null && existingAliases.Contains(column.TableAlias))
                {
                    int ordinal = 0;
                    foreach(ColumnDeclaration decl in existingColumns)
                    {
                        ColumnExpression declColumn = decl.Expression as ColumnExpression;
                        if(decl.Expression == ordering.Expression || column != null && declColumn != null && column.TableAlias == declColumn.TableAlias && column.ColumnName == declColumn.ColumnName)
                        {
                            expr = new ColumnExpression(alias, decl.DeclaredName);
                            break;
                        }
                        ordinal++;
                    }
                    if(expr == ordering.Expression)
                    {
                        if(newColumns == null)
                        {
                            newColumns = new List<ColumnDeclaration>(existingColumns);
                            existingColumns = newColumns;
                        }
                        string colName = column != null ? column.ColumnName : "c" + ordinal;
                        colName = GetAvailableColumnName(newColumns, colName);
                        newColumns.Add(new ColumnDeclaration(colName, ordering.Expression));
                        expr = new ColumnExpression(alias, colName);
                    }
                    newOrderings.Add(new OrderByDeclaration(ordering.OrderType, expr));
                }
            }
            return new BindResult() { Columns = existingColumns, Orderings = newOrderings };
        }

        private void PrependOrderings(IList<OrderByDeclaration> newOrderings)
        {
            if (newOrderings == null) return;

            if (this.gatheredOrderings == null)
            {
                this.gatheredOrderings = new List<OrderByDeclaration>();
            }
            for (int i = newOrderings.Count - 1; i >= 0; i--)
            {
                this.gatheredOrderings.Insert(0, newOrderings[i]);
            }
            HashSet<string> unique = new HashSet<string>();
            for (int i = 0; i < this.gatheredOrderings.Count;)
            {
                ColumnExpression column = this.gatheredOrderings[i].Expression as ColumnExpression;
                if (column != null)
                {
                    string hash = column.TableAlias + ":" + column.ColumnName;
                    if (unique.Contains(hash))
                    {
                        this.gatheredOrderings.RemoveAt(i);
                        continue;
                    }
                    else
                    {
                        unique.Add(hash);
                    }
                }
                i++;
            }
        }

        private class AggregateChecker : SqlExpressionVisitor
        {
            private bool hasAggregate = false;
            private bool isOuterMostSelect = true;

            public static bool HasAggregates(SelectExpression expression)
            {
                AggregateChecker checker = new AggregateChecker();
                checker.Visit(expression);
                return checker.hasAggregate;
            }

            protected override SqlExpression VisitAggregate(AggregateExpression aggregate)
            {
                this.hasAggregate = true;
                return aggregate;
            }

            protected override SqlExpression VisitSelect(SelectExpression select)
            {
                if (this.isOuterMostSelect)
                {
                    this.isOuterMostSelect = false;
                    this.Visit(select.Where);// ?
                    this.VisitOrderBy(select.OrderBy);
                    this.VisitColumnDeclarations(select.Columns);
                }
                return select;
            }
        }

        private class DeclaredAliasGatherer : SqlExpressionVisitor
        {
            HashSet<string> aliases = new HashSet<string>();

            public static HashSet<string> Gather(SqlExpression source)
            {
                DeclaredAliasGatherer gatherer = new DeclaredAliasGatherer();
                gatherer.Visit(source);
                return gatherer.aliases;
            }

            protected override SqlExpression VisitSelect(SelectExpression select)
            {
                this.aliases.Add(select.TableAlias);
                return select;
            }

            protected override SqlExpression VisitTable(TableExpression table)
            {
                this.aliases.Add(table.TableAlias);
                return table;
            }
        }

        private string GetAvailableColumnName(IList<ColumnDeclaration> columns, string baseName)
        {
            string name = baseName;
            int n = 0;
            while (!IsUniqueName(columns, name))
            {
                name = baseName + n++;
            }
            return name;
        }

        private bool IsUniqueName(IList<ColumnDeclaration> columns, string name)
        {
            foreach (var col in columns)
            {
                if (col.DeclaredName == name)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
