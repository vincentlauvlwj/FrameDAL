using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;
using FrameDAL.Utility;

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
            sb.Append(type.GetTableAttribute().Name);
            sb.Append(" (");
            int count = 0;
            foreach (PropertyInfo prop in type.GetCachedProperties())
            {
                IdAttribute id = prop.GetIdAttribute();
                if (id != null && id.GeneratorType == GeneratorType.Identity) continue;
                ColumnAttribute col = prop.GetColumnAttribute();
                if (col != null && !col.ReadOnly)
                {
                    sb.Append(col.Name + ", ");
                    count++;
                }
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                if (manyToOne != null)
                {
                    sb.Append(manyToOne.ForeignKey + ", ");
                    count++;
                }
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column特性的字段。");
            sb.Remove(sb.Length - 2, 2);
            sb.Append(") values (" + "?, ".Repeat(count));
            sb.Remove(sb.Length - 2, 2);
            sb.Append(")");
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
            sb.Append(type.GetTableAttribute().Name);
            sb.Append(" set ");
            int count = 0;
            foreach (PropertyInfo prop in type.GetCachedProperties())
            {
                if (prop.GetIdAttribute() != null) continue;
                ColumnAttribute col = prop.GetColumnAttribute();
                if (col != null && !col.ReadOnly)
                {
                    sb.Append(col.Name + "=?, ");
                    count++;
                }
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                if (manyToOne != null)
                {
                    sb.Append(manyToOne.ForeignKey + "=?, ");
                    count++;
                }
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column特性并且ReadOnly为false的字段。");
            sb.Remove(sb.Length - 2, 2);
            sb.Append(" where ");
            sb.Append(type.GetIdProperty().GetColumnAttribute().Name);
            sb.Append("=?");
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
            sb.Append(type.GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(type.GetIdProperty().GetColumnAttribute().Name);
            sb.Append("=?");
            return sb.ToString();
        }

        protected void AppendSelectedColumns(StringBuilder sb, Type type, bool enableLazy, Dictionary<string, string> resultMap, string prefix)
        {
            string keyPrefix = string.IsNullOrWhiteSpace(prefix) ? "" : prefix + ".";
            string aliasPrefix = string.IsNullOrWhiteSpace(prefix) ? "this_" : prefix + "_";
            int count = 0;
            foreach (PropertyInfo prop in type.GetCachedProperties())
            {
                ColumnAttribute col = prop.GetColumnAttribute();
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();

                if (col != null && (!col.LazyLoad || !enableLazy))
                {
                    sb.Append(string.IsNullOrWhiteSpace(col.SQL) ? col.Name + " as " : "(" + col.SQL + ") as ");
                    sb.Append(resultMap[keyPrefix + prop.Name] = aliasPrefix + prop.Name).Append(", ");
                    count++;
                }
                else if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy))
                {
                    sb.Append(manyToOne.ForeignKey + " as ");
                    sb.Append(resultMap[keyPrefix + prop.Name] = aliasPrefix + prop.Name).Append(", ");
                    count++;
                }
            }
            if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column或ManyToOne特性并且LazyLoad为false的字段。");
            sb.Remove(sb.Length - 2, 2);
        }

        private string GetSelectFromPart(PropertyInfo prop, Dictionary<string,string> resultMap, bool flag)
        {
            StringBuilder tmp = new StringBuilder();
            tmp.Append("select a.*, ");
            AppendSelectedColumns(tmp, flag ? prop.PropertyType : prop.PropertyType.GetGenericArguments()[0], true, resultMap, prop.Name);
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
        public virtual string GetSelectSql(Type type, bool enableLazy, out Dictionary<string, string> resultMap, string where = null)
        {
            if (string.IsNullOrWhiteSpace(where))
            {
                where = type.GetIdProperty().GetColumnAttribute().Name + "=?";
            }
            resultMap = new Dictionary<string, string>();
            StringBuilder resultSql = new StringBuilder();
            resultSql.Append("select ");
            AppendSelectedColumns(resultSql, type, enableLazy, resultMap, null);
            resultSql.Append(" from ");
            resultSql.Append(type.GetTableAttribute().Name);
            resultSql.Append(" where ");
            resultSql.Append(where);

            foreach (PropertyInfo prop in type.GetCachedProperties())
            {
                ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                OneToManyAttribute oneToMany = prop.GetOneToManyAttribute();
                ManyToManyAttribute manyToMany = prop.GetManyToManyAttribute();

                if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap, true)).Append(") a left join ");
                    resultSql.Append(prop.PropertyType.GetTableAttribute().Name);
                    resultSql.Append(" b on a." + resultMap[prop.Name] + "=b.");
                    resultSql.Append(prop.PropertyType.GetIdProperty().GetColumnAttribute().Name);
                }
                else if (oneToMany != null && (!oneToMany.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap, false)).Append(") a left join ");
                    resultSql.Append(prop.PropertyType.GetGenericArguments()[0].GetTableAttribute().Name);
                    resultSql.Append(" b on a." + resultMap[type.GetIdProperty().Name] + "=b." + oneToMany.InverseForeignKey);
                }
                else if (manyToMany != null && (!manyToMany.LazyLoad || !enableLazy))
                {
                    resultSql.Insert(0, GetSelectFromPart(prop, resultMap, false)).Append(") a left join ");
                    resultSql.Append(manyToMany.JoinTable);
                    resultSql.Append(" j on a." + resultMap[type.GetIdProperty().Name]);
                    resultSql.Append("=j." + manyToMany.JoinColumn + " left join ");
                    resultSql.Append(prop.PropertyType.GetGenericArguments()[0].GetTableAttribute().Name);
                    resultSql.Append(" b on j." + manyToMany.InverseJoinColumn + "=b.");
                    resultSql.Append(prop.PropertyType.GetGenericArguments()[0].GetIdProperty().GetColumnAttribute().Name);
                }
            }

            return resultSql.ToString();
        }

        public virtual string GetLoadColumnPropertySql(PropertyInfo prop)
        {
            StringBuilder sb = new StringBuilder();
            ColumnAttribute col = prop.GetColumnAttribute();
            sb.Append("select ");
            if (!string.IsNullOrWhiteSpace(col.SQL))
            {
                sb.Append("(" + col.SQL + ") as ");
            }
            sb.Append(col.Name);
            sb.Append(" from ");
            sb.Append(prop.DeclaringType.GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(prop.DeclaringType.GetIdProperty().GetColumnAttribute().Name);
            sb.Append("=?");
            return sb.ToString();
        }

        public virtual string GetLoadManyToOnePropertySql(PropertyInfo prop, bool enableLazy, out Dictionary<string, string> resultMap)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(prop.PropertyType.GetIdProperty().GetColumnAttribute().Name);
            sb.Append("=(select ");
            sb.Append(prop.GetManyToOneAttribute().ForeignKey);
            sb.Append(" from ");
            sb.Append(prop.DeclaringType.GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(prop.DeclaringType.GetIdProperty().GetColumnAttribute().Name);
            sb.Append("=?)");
            return GetSelectSql(prop.PropertyType, enableLazy, out resultMap, sb.ToString());
        }

        public virtual string GetLoadOneToManyPropertySql(PropertyInfo prop, bool enableLazy, out Dictionary<string, string> resultMap)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(prop.GetOneToManyAttribute().InverseForeignKey);
            sb.Append("=?");
            return GetSelectSql(prop.PropertyType.GetGenericArguments()[0], enableLazy, out resultMap, sb.ToString());
        }

        public virtual string GetLoadManyToManyPropertySql(PropertyInfo prop, bool enableLazy, out Dictionary<string, string> resultMap)
        {
            ManyToManyAttribute manyToMany = prop.GetManyToManyAttribute();
            StringBuilder sb = new StringBuilder();
            sb.Append(prop.PropertyType.GetGenericArguments()[0].GetIdProperty().GetColumnAttribute().Name);
            sb.Append(" in (select ");
            sb.Append(manyToMany.InverseJoinColumn);
            sb.Append(" from ");
            sb.Append(manyToMany.JoinTable);
            sb.Append(" where ");
            sb.Append(manyToMany.JoinColumn);
            sb.Append("=?)");
            return GetSelectSql(prop.PropertyType.GetGenericArguments()[0], enableLazy, out resultMap, sb.ToString());
        }

        public virtual string GetCheckExistSql(Type type)
        {
            PropertyInfo idProp = type.GetIdProperty();
            StringBuilder sb = new StringBuilder();
            sb.Append("select count(");
            sb.Append(idProp.GetColumnAttribute().Name);
            sb.Append(") from ");
            sb.Append(type.GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(idProp.GetColumnAttribute().Name);
            sb.Append("=?");
            return sb.ToString();
        }

        public virtual string GetUpdateForeignKeySql(PropertyInfo oneToManyProp, int countLeft)
        {
            if (countLeft <= 0)
                throw new ArgumentOutOfRangeException("countLeft应大于0。", countLeft, "countLeft");
            StringBuilder sb = new StringBuilder();
            Type elementType = oneToManyProp.PropertyType.GetGenericArguments()[0];
            sb.Append("update ");
            sb.Append(elementType.GetTableAttribute().Name);
            sb.Append(" set ");
            sb.Append(oneToManyProp.GetOneToManyAttribute().InverseForeignKey);
            sb.Append("=? where ");
            sb.Append(elementType.GetIdProperty().GetColumnAttribute().Name);
            sb.Append(" in (" + "?, ".Repeat(countLeft));
            sb.Remove(sb.Length - 2, 2);
            sb.Append(")");
            return sb.ToString();
        }

        public virtual string GetDeleteItemSql(PropertyInfo oneToManyProp, int countLeft)
        {
            StringBuilder sb = new StringBuilder();
            Type elementType = oneToManyProp.PropertyType.GetGenericArguments()[0];
            sb.Append("delete from ");
            sb.Append(elementType.GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(oneToManyProp.GetOneToManyAttribute().InverseForeignKey);
            sb.Append("=?");
            if (countLeft > 0)
            {
                sb.Append(" and ");
                sb.Append(elementType.GetIdProperty().GetColumnAttribute().Name);
                sb.Append(" not in (" + "?, ".Repeat(countLeft));
                sb.Remove(sb.Length - 2, 2);
                sb.Append(")");
            }
            return sb.ToString();
        }

        public virtual string GetDeleteRelationsSql(PropertyInfo manyToManyProp)
        {
            StringBuilder sb = new StringBuilder();
            ManyToManyAttribute manyToMany = manyToManyProp.GetManyToManyAttribute();
            sb.Append("delete from ");
            sb.Append(manyToMany.JoinTable);
            sb.Append(" where ");
            sb.Append(manyToMany.JoinColumn);
            sb.Append("=?");
            return sb.ToString();
        }

        public virtual string GetAddRelationSql(PropertyInfo manyToManyProp)
        {
            StringBuilder sb = new StringBuilder();
            ManyToManyAttribute manyToMany = manyToManyProp.GetManyToManyAttribute();
            sb.Append("insert into ");
            sb.Append(manyToMany.JoinTable);
            sb.Append(" (");
            sb.Append(manyToMany.JoinColumn).Append(", ");
            sb.Append(manyToMany.InverseJoinColumn).Append(")");
            sb.Append(" values (?, ?)");
            return sb.ToString();
        }

        public virtual string GetCascadeDeleteSql(PropertyInfo oneToManyProp)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("delete from ");
            sb.Append(oneToManyProp.PropertyType.GetGenericArguments()[0].GetTableAttribute().Name);
            sb.Append(" where ");
            sb.Append(oneToManyProp.GetOneToManyAttribute().InverseForeignKey);
            sb.Append("=?");
            return sb.ToString();
        }
    }
}
