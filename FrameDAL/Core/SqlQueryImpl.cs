using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using FrameDAL.Core;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;
using FrameDAL.Utility;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// IQuery接口的实现类。
    /// Query代表了一个数据库查询操作（当然也可以是非查询操作），可以用它提供的方法把SQL送到数据库中执行。
    /// Query依赖于特定的Session，当Session关闭时，Query对象也将不能使用。
    /// 当调用ExecuteNonQuery()方法执行非查询操作时，如果没有开启事务，该操作不会立即执行，而是放到Session
    /// 的缓冲区中，当调用ISession.Flush()方法时，才会将缓冲区的操作送到数据库中执行。具体可参考Session的行为。
    /// </summary>
    /// <see cref="FrameDAL.Core.ISession"/>
    public class SqlQueryImpl : ISqlQuery
    {
        /// <summary>
        /// 获得该Query所依赖的Session对象
        /// </summary>
        public ISession Session { get { return session; } }

        private SessionImpl session;

        internal SqlQueryImpl(SessionImpl session)
        {
            this.session = session;
        }

        /// <summary>
        /// 获得或设置该Query的SQL命令
        /// </summary>
        public string SqlText { get; set; }

        /// <summary>
        /// 获得或设置SQL命令的参数
        /// </summary>
        public object[] Parameters { get; set; }

        public Dictionary<string, string> ResultMap { get; set; }

        /// <summary>
        /// 当进行分页查询时，获得或设置返回的第一条结果的索引，该索引从0开始
        /// </summary>
        public int FirstResult { get; set; }

        /// <summary>
        /// 当进行分页查询时，获得或设置返回的结果数量。当设置为0时，返回全部结果，不进行分页。该属性默认为0
        /// </summary>
        public int PageSize { get; set; }

        /// <summary>
        /// 执行非查询操作
        /// </summary>
        /// <returns>当事务已开启，执行操作，返回受影响的行数。当事务未开启，将操作放入缓冲区，返回null</returns>
        public int? ExecuteNonQuery()
        {
            if(session.DbHelper.InTransaction())
            {
                return session.DbHelper.ExecuteNonQuery(SqlText, Parameters);
            }
            else
            {
                session.AddToCache(args => (args[0] as ISqlQuery).ExecuteNonQuery(), new object[] { this });
                return null;
            }
        }

        /// <summary>
        /// 获得一个标量值，即查询结果的第一行第一列的值
        /// </summary>
        /// <returns>返回一个标量，若没有结果，返回null</returns>
        public object ExecuteScalar()
        {
            return session.DbHelper.ExecuteScalar(SqlText, Parameters);
        }

        /// <summary>
        /// 执行查询，返回数据集
        /// </summary>
        /// <returns>返回数据集</returns>
        public DataSet ExecuteGetDataSet()
        {
            string sql = session.DbHelper.Dialect.GetPagingSql(SqlText, FirstResult, PageSize);
            return session.DbHelper.ExecuteGetDataSet(sql, Parameters);
        }

        /// <summary>
        /// 执行查询，返回数据表
        /// </summary>
        /// <returns>返回数据表</returns>
        public DataTable ExecuteGetDataTable()
        {
            string sql = session.DbHelper.Dialect.GetPagingSql(SqlText, FirstResult, PageSize);
            return session.DbHelper.ExecuteGetDataTable(sql, Parameters);
        }

        private void CheckRepeatColumnName(DataTable dt)
        {
            foreach (DataColumn col1 in dt.Columns)
            {
                if (col1.ColumnName.EndsWith("1"))
                {
                    foreach (DataColumn col2 in dt.Columns)
                    {
                        if (col1.ColumnName.ToUpper() == col2.ColumnName.ToUpper() + "1")
                            throw new FrameDALException("查询返回的结果中有重复的列名，请去除SQL中的重复列名或者使用别名避免此异常。");
                    }
                }
            }
        }

        /// <summary>
        /// 执行查询，获得对象列表
        /// </summary>
        /// <typeparam name="T">
        /// 对象的类型，该类型既可以为实体类型，也可以是普通的VO类。当使用普通的VO类时，
        /// 需把Column特性添加到要填充的属性上，将属性与返回的数据列做一个映射
        /// </typeparam>
        /// <returns>返回对象列表，若没有结果，返回长度为0的列表</returns>
        /// <see cref="FrameDAL.Attributes.ColumnAttribute"/>
        public List<T> ExecuteGetList<T>() where T : class, new()
        {
            return ExecuteGetList<T>(AppContext.Instance.Configuration.EnableLazy);
        }

        private object GetColumnValue(DataRow row, PropertyInfo prefixProp, PropertyInfo prop)
        {
            string key = prefixProp == null ? prop.Name : prefixProp.Name + "." + prop.Name;
            string alias = ResultMap != null && ResultMap.ContainsKey(key) ? ResultMap[key] : prop.GetColumnAttribute().Name;
            try
            {
                return row[alias];
            }
            catch (Exception e)
            {
                throw new FrameDALException("获取" + key + "属性的值发生异常，错误信息：" + e.Message, e);
            }
        }

        private object GetElementById(IList list, Type elementType, object id)
        {
            PropertyInfo idProp = elementType.GetIdProperty();
            foreach (object o in list)
            {
                if (idProp.GetValue(o, null).Equals(id))
                    return o;
            }
            return null;
        }

        private void FillEntityWithRow(object entity, DataRow row, Type entityType, PropertyInfo prefixProp, bool enableLazy)
        {
            foreach (PropertyInfo prop in entityType.GetCachedProperties())
            {
                ColumnAttribute col = prop.GetColumnAttribute();
                if (col == null || col.LazyLoad && enableLazy) continue;
                prop.SetValueSafely(entity, GetColumnValue(row, prefixProp, prop));
            }
        }

        public List<T> ExecuteGetList<T>(bool enableLazy) where T : class, new()
        {
            List<T> results = new List<T>();
            DataTable dt = ExecuteGetDataTable();
            CheckRepeatColumnName(dt);
            foreach (DataRow row in dt.Rows)
            {
                T entity = GetElementById(results, typeof(T), GetColumnValue(row, null, typeof(T).GetIdProperty())) as T;
                if (entity == null)
                {
                    entity = EntityFactory.GetEntity(typeof(T), enableLazy, false) as T;
                    FillEntityWithRow(entity, row, typeof(T), null, enableLazy);
                    results.Add(entity);
                }

                foreach (PropertyInfo prop in typeof(T).GetCachedProperties())
                {
                    ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
                    OneToManyAttribute oneToMany = prop.GetOneToManyAttribute();
                    ManyToManyAttribute manyToMany = prop.GetManyToManyAttribute();

                    if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy) && prop.GetValue(entity, null) == null)
                    {
                        object propValue = EntityFactory.GetEntity(prop.PropertyType, enableLazy, true);
                        FillEntityWithRow(propValue, row, prop.PropertyType, prop, true);
                        prop.SetValueSafely(entity, propValue);
                    }
                    else if (oneToMany != null && (!oneToMany.LazyLoad || !enableLazy)
                        || manyToMany != null && (!manyToMany.LazyLoad || !enableLazy))
                    {
                        IList propValue = prop.GetValue(entity, null) as IList;
                        if (propValue == null)
                        {
                            propValue = Activator.CreateInstance(prop.PropertyType) as IList;
                            prop.SetValueSafely(entity, propValue);
                        }
                        Type elementType = prop.PropertyType.GetGenericArguments()[0];
                        object id = GetColumnValue(row, prop, elementType.GetIdProperty());
                        object elem = GetElementById(propValue, elementType, id);
                        if (elem == null)
                        {
                            elem = EntityFactory.GetEntity(elementType, enableLazy, true);
                            FillEntityWithRow(elem, row, elementType, prop, true);
                            propValue.Add(elem);
                        }
                    }
                }
            }
            return results;
        }

        /// <summary>
        /// 执行查询，获得一个对象
        /// </summary>
        /// <typeparam name="T">
        /// 对象的类型，该类型既可以为实体类型，也可以是普通的VO类。当使用普通的VO类时，
        /// 需把Column特性添加到要填充的属性上，将属性与返回的数据列做一个映射
        /// </typeparam>
        /// <returns>返回一个对象，若没有找到，返回null</returns>
        /// <see cref="FrameDAL.Attributes.ColumnAttribute"/>
        public T ExecuteGetEntity<T>() where T : class, new()
        {
            return ExecuteGetEntity<T>(AppContext.Instance.Configuration.EnableLazy);
        }

        public T ExecuteGetEntity<T>(bool enableLazy) where T : class, new()
        {
            List<T> results = ExecuteGetList<T>(enableLazy);
            return results.Count > 0 ? results[0] : null;
        }
    }
}
