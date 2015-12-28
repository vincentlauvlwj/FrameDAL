using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Core;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;

namespace FrameDAL.Dialect
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 数据库方言类的基类，此类实现了一些通用的方法，通过此类获得的SQL具有跨数据的特性，
    /// 因为无法确定所使用的数据库，所以此类只能生成一些通用的SQL，若想针对不同的数据库进行
    /// 定制与优化，应写一个具体的方言类继承此类或直接实现IDialect接口。
    /// </summary>
    public abstract class BaseDialect : IDialect
    {
        /// <summary>
        /// 获得一条SQL，该SQL从数据库中查询最近一次插入操作生成的主键，此方法由子类实现
        /// </summary>
        /// <param name="seqName">生成主键的序列，如果此方法的实现不需要此参数，可忽略</param>
        /// <returns>SQL</returns>
        public abstract string GetGeneratedKeySql(string seqName);

        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理，此方法由子类实现
        /// </summary>
        /// <param name="sqlText">要进行预处理的SQL</param>
        /// <param name="firstResult">要返回的第一条结果的索引，该索引从0开始</param>
        /// <param name="pageSize">返回的结果数量，若为0，则返回所有结果，不进行分页查询</param>
        /// <returns>返回预处理后的SQL命令</returns>
        public abstract string GetPagingSql(string sqlText, int firstResult, int pageSize);

        /// <summary>
        /// 获得实体类对应的表的insert sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>insert sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="EntityMappingException">该类中没有任何公开属性</exception>
        public virtual string GetInsertSql(Type type)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("insert into ");
            sb.Append(AppContext.Instance.GetTableAttribute(type).Name);
            sb.Append(" (");
            int count = 0;
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
            {
                ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
                if (col == null || col.ReadOnly) continue;
                sb.Append(col.Name + ", ");
                count++;
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column特性的字段。");
            sb.Remove(sb.Length - 2, 2);
            sb.Append(") values (");
            for (int i = 0; i < count; i++)
            {
                sb.Append("?, ");
            }
            sb.Remove(sb.Length - 2, 2);
            sb.Append(")");
            return sb.ToString();
        }

        /// <summary>
        /// 获得实体类对应的delete sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>delete sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        public virtual string GetDeleteSql(Type type)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("delete from ");
            sb.Append(AppContext.Instance.GetTableAttribute(type).Name);
            sb.Append(" where ");
            sb.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(type)).Name);
            sb.Append("=?");
            return sb.ToString();
        }

        /// <summary>
        /// 获得实体类对应的update sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>update sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        public virtual string GetUpdateSql(Type type)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("update ");
            sb.Append(AppContext.Instance.GetTableAttribute(type).Name);
            sb.Append(" set ");
            int count = 0;
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
            {
                ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
                if (col == null || col.ReadOnly) continue;
                sb.Append(col.Name);
                sb.Append("=?, ");
                count++;
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column特性并且ReadOnly为false的字段。");
            sb.Remove(sb.Length - 2, 2);
            sb.Append(" where ");
            sb.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(type)).Name);
            sb.Append("=?");
            return sb.ToString();
        }

        protected void AppendSelectedColumns(StringBuilder sb, Type type, bool enableLazy, Dictionary<string, string> resultMap, string prefix)
        {
            string keyPrefix = string.IsNullOrWhiteSpace(prefix) ? "" : prefix + ".";
            string aliasPrefix = string.IsNullOrWhiteSpace(prefix) ? "this_" : prefix + "_";
            int count = 0;
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
            {
                ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
                ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);

                if (col != null && (!col.LazyLoad || !enableLazy))
                {
                    sb.Append(string.IsNullOrWhiteSpace(col.SQL) ? col.Name + " as " : "(" + col.SQL + ") as ");
                }
                else if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy))
                {
                    sb.Append(manyToOne.ForeignKey + " as ");
                }

                sb.Append(resultMap[keyPrefix + prop.Name] = aliasPrefix + prop.Name).Append(", ");
                count++;
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column或ManyToOne特性并且LazyLoad为false的字段。");
            sb.Remove(sb.Length - 2, 2);
        }

        private string GetSelectFromPart(PropertyInfo prop, Dictionary<string,string> resultMap)
        {
            StringBuilder tmp = new StringBuilder();
            tmp.Append("select a.*, ");
            AppendSelectedColumns(tmp, prop.PropertyType, true, resultMap, prop.Name);
            tmp.Append(" from (");
            return tmp.ToString();
        }

        /// <summary>
        /// 获得实体类对应的select sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>select sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        public virtual string GetSelectSql(Type type, bool enableLazy, out Dictionary<string, string> resultMap)
        {
            resultMap = new Dictionary<string, string>();
            StringBuilder resultSql = new StringBuilder();
            resultSql.Append("select ");
            AppendSelectedColumns(resultSql, type, enableLazy, resultMap, null);
            resultSql.Append(" from ");
            resultSql.Append(AppContext.Instance.GetTableAttribute(type).Name);
            resultSql.Append(" where ");
            resultSql.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(type)).Name);
            resultSql.Append("=?");

            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
            {
                ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);
                OneToManyAttribute oneToMany = AppContext.Instance.GetOneToManyAttribute(prop);
                ManyToManyAttribute manyToMany = AppContext.Instance.GetManyToManyAttribute(prop);

                if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap)).Append(") a left join ");
                    resultSql.Append(AppContext.Instance.GetTableAttribute(prop.PropertyType).Name);
                    resultSql.Append(" b on a." + resultMap[prop.Name] + "=b.");
                    resultSql.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(prop.PropertyType)).Name);
                }
                else if (oneToMany != null && (!oneToMany.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap)).Append(") a left join ");
                    resultSql.Append(AppContext.Instance.GetTableAttribute(prop.PropertyType).Name);
                    resultSql.Append(" b on a." + resultMap[AppContext.Instance.GetIdProperty(type).Name] + "=b." + oneToMany.InverseForeignKey);
                }
                else if (manyToMany != null && (!manyToMany.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap)).Append(") a left join ");
                    resultSql.Append(manyToMany.JoinTable);
                    resultSql.Append(" j on a." + resultMap[AppContext.Instance.GetIdProperty(type).Name]);
                    resultSql.Append("=j." + manyToMany.JoinColumn + " left join ");
                    resultSql.Append(AppContext.Instance.GetTableAttribute(prop.PropertyType).Name);
                    resultSql.Append(" b on j." + manyToMany.InverseJoinColumn + "=b.");
                    resultSql.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(prop.PropertyType)).Name);
                }
            }

            return resultSql.ToString();
        }

        public virtual string GetLoadPropertySql(PropertyInfo prop)
        {
            StringBuilder sb = new StringBuilder();
            ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
            sb.Append("select ");
            if (!string.IsNullOrWhiteSpace(col.SQL))
            {
                sb.Append("(" + col.SQL + ") as ");
            }
            sb.Append(col.Name);
            sb.Append(" from ");
            sb.Append(AppContext.Instance.GetTableAttribute(prop.DeclaringType).Name);
            sb.Append(" where ");
            sb.Append(AppContext.Instance.GetColumnAttribute(AppContext.Instance.GetIdProperty(prop.DeclaringType)).Name);
            sb.Append("=?");
            return sb.ToString();
        }
    }
}
