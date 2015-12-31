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
    public class QueryImpl : IQuery
    {
        /// <summary>
        /// 获得该Query所依赖的Session对象
        /// </summary>
        public ISession Session 
        {
            get
            {
                return session;
            }
        }

        private SessionImpl session;

        internal QueryImpl(SessionImpl session)
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
            if (session.DbHelper.InTransaction())
            {
                return session.DbHelper.ExecuteNonQuery(SqlText, Parameters);
            }
            else
            {
                session.AddToCache(SqlText, Parameters);
                return null;
            }
        }

        /// <summary>
        /// 获得一个标量值，即查询结果的第一行第一列的值
        /// </summary>
        /// <returns>返回一个标量，若没有结果，返回null</returns>
        public object ExecuteScalar()
        {
            try
            {
                session.BeginTransaction();
                object result = session.DbHelper.ExecuteScalar(SqlText, Parameters);
                session.CommitTransaction();
                return result;
            }
            catch
            {
                if(session.InTransaction()) session.RollbackTransaction();
                throw;
            }
        }

        /// <summary>
        /// 执行查询，返回数据集
        /// </summary>
        /// <returns>返回数据集</returns>
        public DataSet ExecuteGetDataSet()
        {
            try
            {
                session.BeginTransaction();
                string sql = session.DbHelper.Dialect.GetPagingSql(SqlText, FirstResult, PageSize);
                DataSet result = session.DbHelper.ExecuteGetDataSet(sql, Parameters);
                session.CommitTransaction();
                return result;
            }
            catch
            {
                if(session.InTransaction()) session.RollbackTransaction();
                throw;
            }
        }

        /// <summary>
        /// 执行查询，返回数据表
        /// </summary>
        /// <returns>返回数据表</returns>
        public DataTable ExecuteGetDataTable()
        {
            try
            {
                session.BeginTransaction();
                string sql = session.DbHelper.Dialect.GetPagingSql(SqlText, FirstResult, PageSize);
                DataTable result = session.DbHelper.ExecuteGetDataTable(sql, Parameters);
                session.CommitTransaction();
                return result;
            }
            catch
            {
                if(session.InTransaction()) session.RollbackTransaction();
                throw;
            }
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

        private string GetAlias(PropertyInfo prefixProp, PropertyInfo prop)
        {
            try
            {
                return ResultMap[prefixProp == null ? prop.Name : prefixProp.Name + "." + prop.Name];
            }
            catch (KeyNotFoundException)
            {
                return AppContext.Instance.GetColumnAttribute(prop).Name;
            }
        }

        private object GetElementById(IList list, Type elementType, object id)
        {
            PropertyInfo idProp = AppContext.Instance.GetIdProperty(elementType);
            foreach (object o in list)
            {
                if (idProp.GetValue(o, null).Equals(id))
                    return o;
            }
            return null;
        }

        private void FillEntityWithRow(object entity, DataRow row, Type entityType, PropertyInfo prefixProp, bool enableLazy)
        {
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(entityType))
            {
                ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
                if (col == null || col.LazyLoad && enableLazy) continue;
                AppContext.Instance.SetPropertyValue(entity, prop, row[GetAlias(prefixProp, prop)]);
            }
        }

        public List<T> ExecuteGetList<T>(bool enableLazy) where T : class, new()
        {
            List<T> results = new List<T>();
            DataTable dt = ExecuteGetDataTable();
            CheckRepeatColumnName(dt);
            foreach (DataRow row in dt.Rows)
            { 
                T entity = GetElementById(results, typeof(T), row[GetAlias(null, AppContext.Instance.GetIdProperty(typeof(T)))]) as T;
                if (entity == null)
                {
                    entity = EntityFactory.GetEntity(typeof(T), enableLazy, false) as T;
                    FillEntityWithRow(entity, row, typeof(T), null, enableLazy);
                    results.Add(entity);
                }

                foreach (PropertyInfo prop in AppContext.Instance.GetProperties(typeof(T)))
                {
                    ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);
                    OneToManyAttribute oneToMany = AppContext.Instance.GetOneToManyAttribute(prop);
                    ManyToManyAttribute manyToMany = AppContext.Instance.GetManyToManyAttribute(prop);

                    if (manyToOne != null && (!manyToOne.LazyLoad || !enableLazy))
                    {
                        if (prop.GetValue(entity, null) == null)
                        {
                            object propValue = EntityFactory.GetEntity(prop.PropertyType, enableLazy, true);
                            FillEntityWithRow(propValue, row, prop.PropertyType, prop, true);
                            AppContext.Instance.SetPropertyValue(entity, prop, propValue);
                        }
                    }
                    else if (oneToMany != null && (!oneToMany.LazyLoad || !enableLazy)
                        || manyToMany != null && (!manyToMany.LazyLoad || !enableLazy))
                    {
                        IList propValue = prop.GetValue(entity, null) as IList;
                        if (propValue == null)
                        {
                            propValue = Activator.CreateInstance(prop.PropertyType) as IList;
                            AppContext.Instance.SetPropertyValue(entity, prop, propValue);
                        }
                        Type elementType = prop.PropertyType.GetGenericArguments()[0];
                        object id = row[GetAlias(prop, AppContext.Instance.GetIdProperty(elementType))];
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
