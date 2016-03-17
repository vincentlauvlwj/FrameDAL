using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using FrameDAL.SqlExpressions;
using FrameDAL.Utility;

namespace FrameDAL.Linq.Translation
{
    public sealed class ProjectedColumns
    {
        public Expression Projector { get; set; }

        public List<ColumnDeclaration> Columns { get; set; }
    }

    public class ColumnProjector : InjectedExpressionVisitor
    {
        private Dictionary<ColumnExpression, ColumnExpression> map;
        private List<ColumnDeclaration> columns;
        private HashSet<TableAlias> existingAliases;
        private TableAlias newAlias;
        private int columnCount;

        private ColumnProjector(IEnumerable<ColumnDeclaration> existingColumns, TableAlias newAlias, IEnumerable<TableAlias> existingAliases)
        {
            this.newAlias = newAlias;
            this.existingAliases = new HashSet<TableAlias>(existingAliases);
            this.map = new Dictionary<ColumnExpression, ColumnExpression>();
            if(existingColumns != null)
            {
                this.columns = new List<ColumnDeclaration>(existingColumns);
            }
            else
            {
                this.columns = new List<ColumnDeclaration>();
            }
        }

        public static ProjectedColumns ProjectColumns(
            Expression expression, 
            IEnumerable<ColumnDeclaration> existingColumns, 
            TableAlias newAlias, 
            IEnumerable<TableAlias> existingAliases)
        {
            ColumnProjector projector = new ColumnProjector(existingColumns, newAlias, existingAliases);
            Expression expr = projector.Visit(expression);
            return new ProjectedColumns { Projector = expr, Columns = projector.columns };
        }

        public static ProjectedColumns ProjectColumns(
            Expression expression,
            IEnumerable<ColumnDeclaration> existingColumns,
            TableAlias newAlias,
            params TableAlias[] existingAliases)
        {
            return ProjectColumns(expression, existingColumns, newAlias, (IEnumerable<TableAlias>)existingAliases);
        }

        protected override Expression VisitInjected(InjectedExpression node)
        {
            SqlExpression sqlExpr = node.TranslateResult.SqlExpression;
            if (sqlExpr.NodeType == SqlExpressionType.Column)
            {
                ColumnExpression column = (ColumnExpression)sqlExpr;
                ColumnExpression mapped;
                if (this.map.TryGetValue(column, out mapped))
                {
                    return new InjectedExpression(new TranslateResult(mapped), node.Type);
                }
                foreach (ColumnDeclaration existingColumn in this.columns)
                {
                    ColumnExpression c = existingColumn.Expression as ColumnExpression;
                    if (c != null && c.TableAlias == column.TableAlias && c.ColumnName == column.ColumnName)
                    {
                        return new InjectedExpression(new TranslateResult(new ColumnExpression(this.newAlias, existingColumn.DeclaredName)), node.Type);
                    }
                }
                if (this.existingAliases.Contains(column.TableAlias))
                {
                    string declaredName = this.GetUniqueColumnName(column.ColumnName);
                    this.columns.Add(new ColumnDeclaration(declaredName, column));
                    mapped = new ColumnExpression(this.newAlias, declaredName);
                    this.map.Add(column, mapped);
                    return new InjectedExpression(new TranslateResult(mapped), node.Type);
                }
                return node;
            }
            else
            {
                string declaredName = this.GetNextColumnName();
                this.columns.Add(new ColumnDeclaration(declaredName, sqlExpr));
                return new InjectedExpression(new TranslateResult(new ColumnExpression(this.newAlias, declaredName)), node.Type);
            }
        }

        protected override Expression VisitConstant(System.Linq.Expressions.ConstantExpression node)
        {
            ReadOnlyCollection<MemberBinding> bindings = node.Value as ReadOnlyCollection<MemberBinding>;
            if(bindings != null)
            {
                return Expression.Constant(ExpressionVisitor.Visit(bindings, this.VisitMemberBinding));
            }
            return base.VisitConstant(node);
        }

        private bool IsColumnNameInUse(string name)
        {
            return this.columns.Exists(c => c.DeclaredName == name);
        }

        private string GetUniqueColumnName(string name)
        {
            string baseName = name;
            int suffix = 1;
            while (this.IsColumnNameInUse(name))
            {
                name = baseName + suffix++;
            }
            return name;
        }

        private string GetNextColumnName()
        {
            return this.GetUniqueColumnName("c" + columnCount++);
        }
    }
}
