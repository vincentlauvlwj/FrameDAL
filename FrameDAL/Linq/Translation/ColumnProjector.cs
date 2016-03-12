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
        public Expression Projector { get; private set; }

        public ReadOnlyCollection<ColumnDeclaration> Columns { get; private set; }

        public ProjectedColumns(Expression projector, IEnumerable<ColumnDeclaration> columns)
        {
            this.Projector = projector;
            this.Columns = columns.ToReadOnly();
        }
    }

    public class ColumnProjector : ExpressionVisitor
    {
        private Dictionary<ColumnExpression, ColumnExpression> map;
        private List<ColumnDeclaration> columns;
        private HashSet<string> columnNames;
        private HashSet<string> existingAliases;
        private string newAlias;
        private int columnCount;

        private ColumnProjector(IEnumerable<ColumnDeclaration> existingColumns, string newAlias, IEnumerable<string> existingAliases)
        {
            this.newAlias = newAlias;
            this.existingAliases = new HashSet<string>(existingAliases);
            this.map = new Dictionary<ColumnExpression, ColumnExpression>();
            if(existingColumns != null)
            {
                this.columns = new List<ColumnDeclaration>(existingColumns);
                this.columnNames = new HashSet<string>(existingColumns.Select(c => c.DeclaredName));
            }
            else
            {
                this.columns = new List<ColumnDeclaration>();
                this.columnNames = new HashSet<string>();
            }
        }

        public static ProjectedColumns ProjectColumns(
            Expression expression, 
            IEnumerable<ColumnDeclaration> existingColumns, 
            string newAlias, 
            IEnumerable<string> existingAliases)
        {
            ColumnProjector projector = new ColumnProjector(existingColumns, newAlias, existingAliases);
            Expression expr = projector.Visit(expression);
            return new ProjectedColumns(expr, projector.columns);
        }

        public static ProjectedColumns ProjectColumns(
            Expression expression,
            IEnumerable<ColumnDeclaration> existingColumns,
            string newAlias,
            params string[] existingAliases)
        {
            return ProjectColumns(expression, existingColumns, newAlias, existingAliases);
        }

        protected override Expression VisitConstant(System.Linq.Expressions.ConstantExpression node)
        {
            SqlExpression expression = node.Value as SqlExpression;
            if(expression != null)
            {
                if(expression.NodeType == SqlExpressionType.Column)
                {
                    ColumnExpression column = (ColumnExpression)expression;
                    ColumnExpression mapped;
                    if(this.map.TryGetValue(column, out mapped))
                    {
                        return Expression.Constant(mapped);
                    }
                    foreach(ColumnDeclaration existingColumn in this.columns)
                    {
                        ColumnExpression c = existingColumn.Expression as ColumnExpression;
                        if(c != null && c.TableAlias == column.TableAlias && c.ColumnName == column.ColumnName)
                        {
                            return Expression.Constant(new ColumnExpression(this.newAlias, existingColumn.DeclaredName));
                        }
                    }
                    if(this.existingAliases.Contains(column.TableAlias))
                    {
                        string declaredName = this.GetUniqueColumnName(column.ColumnName);
                        this.columns.Add(new ColumnDeclaration(declaredName, column));
                        mapped = new ColumnExpression(this.newAlias, declaredName);
                        this.map.Add(column, mapped);
                        this.columnNames.Add(declaredName);
                        return Expression.Constant(mapped);
                    }
                }
                else
                {
                    string declaredName = this.GetNextColumnName();
                    this.columns.Add(new ColumnDeclaration(declaredName, expression));
                    return Expression.Constant(new ColumnExpression(this.newAlias, declaredName));
                }
            }
            return base.VisitConstant(node);
        }

        private bool IsColumnNameInUse(string name)
        {
            return this.columnNames.Contains(name);
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
