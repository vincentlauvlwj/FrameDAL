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
    public abstract class BaseDialect : IDialect
    {
        private Dictionary<Type, string> inserts = new Dictionary<Type, string>();
        private Dictionary<Type, string> deletes = new Dictionary<Type, string>();
        private Dictionary<Type, string> updates = new Dictionary<Type, string>();
        private Dictionary<Type, string> selects = new Dictionary<Type, string>();

        /// <summary>
        /// 从缓存中获得实体类对应的表的insert sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>insert sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="EntityMappingException">该类中没有任何公开属性</exception>
        public string GetInsertSql(Type type)
        {
            lock (inserts)
            {
                if (inserts.ContainsKey(type))
                {
                    return inserts[type];
                }
                else
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("insert into ");
                    sb.Append(AppContext.Instance.GetTable(type).Name);
                    sb.Append(" (");
                    int count = 0;
                    foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
                    {
                        Column col = AppContext.Instance.GetColumn(prop);
                        if (col == null) continue;
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
                    string sql = sb.ToString();
                    inserts.Add(type, sql);
                    return sql;
                }
            }
        }

        /// <summary>
        /// 从缓存中获得实体类对应的delete sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>delete sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        public string GetDeleteSql(Type type)
        {
            lock (deletes)
            {
                if (deletes.ContainsKey(type))
                {
                    return deletes[type];
                }
                else
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("delete from ");
                    sb.Append(AppContext.Instance.GetTable(type).Name);
                    sb.Append(" where ");
                    sb.Append(AppContext.Instance.GetColumn(AppContext.Instance.GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    deletes.Add(type, sql);
                    return sql;
                }
            }
        }

        /// <summary>
        /// 从缓存中获得实体类对应的update sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>update sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        public string GetUpdateSql(Type type)
        {
            lock (updates)
            {
                if (updates.ContainsKey(type))
                {
                    return updates[type];
                }
                else
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("update ");
                    sb.Append(AppContext.Instance.GetTable(type).Name);
                    sb.Append(" set ");
                    int count = 0;
                    foreach (PropertyInfo prop in AppContext.Instance.GetProperties(type))
                    {
                        Column col = AppContext.Instance.GetColumn(prop);
                        if (col == null) continue;
                        sb.Append(col.Name);
                        sb.Append("=?, ");
                        count++;
                    }
                    if (count == 0) throw new EntityMappingException(type.FullName + "类中没有添加了Column特性的字段。");
                    sb.Remove(sb.Length - 2, 2);
                    sb.Append(" where ");
                    sb.Append(AppContext.Instance.GetColumn(AppContext.Instance.GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    updates.Add(type, sql);
                    return sql;
                }
            }
        }

        /// <summary>
        /// 从缓存中获得实体类对应的select sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>select sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        public string GetSelectSql(Type type)
        {
            lock (selects)
            {
                if (selects.ContainsKey(type))
                {
                    return selects[type];
                }
                else
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("select * from ");
                    sb.Append(AppContext.Instance.GetTable(type).Name);
                    sb.Append(" where ");
                    sb.Append(AppContext.Instance.GetColumn(AppContext.Instance.GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    selects.Add(type, sql);
                    return sql;
                }
            }
        }

        /// <summary>
        /// 清除缓存的SQL
        /// </summary>
        public void ClearCache()
        {
            lock (inserts) inserts.Clear();
            lock (deletes) deletes.Clear();
            lock (updates) updates.Clear();
            lock (selects) selects.Clear();
        }

        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理，此方法由子类实现
        /// </summary>
        /// <param name="sqlText">要进行预处理的SQL</param>
        /// <param name="firstResult">要返回的第一条结果的索引，该索引从0开始</param>
        /// <param name="pageSize">返回的结果数量</param>
        /// <returns>返回预处理后的SQL命令</returns>
        public abstract string GetPagingSql(string sqlText, int firstResult, int pageSize);
    }
}
