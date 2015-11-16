using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using FrameDAL.Core;
using FrameDAL.Attributes;

namespace FrameDAL.Query
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 各种Query类的基类。实现了Query的一些公共方法，不同的数据库使用不同的Query类。
    /// Query代表了一个数据库查询操作（当然也可以是非查询操作），可以用它提供的方法把SQL送到数据库中执行。
    /// Query依赖于特定的Session，当Session关闭时，Query对象也将不能使用。
    /// 当调用ExecuteNonQuery()方法执行非查询操作时，如果没有开启事务，该操作不会立即执行，而是放到Session
    /// 的缓冲区中，当调用Sess.Flush()方法时，才会将缓冲区的操作送到数据库中执行。具体可参考Session的行为。
    /// </summary>
    /// <see cref="FrameDAL.Core.ISession"/>
    public abstract class BaseQuery : IQuery
    {
        /// <summary>
        /// 获得该Query所依赖的Session对象
        /// </summary>
        public ISession Session 
        {
            get
            {
                return Sess;
            }
            internal set
            {
                Sess = (BaseSession) value;
            }
        }

        protected BaseSession Sess { get; set; }

        /// <summary>
        /// 获得或设置该Query的SQL命令
        /// </summary>
        public string SqlText { get; set; }

        /// <summary>
        /// 获得或设置SQL命令的参数
        /// </summary>
        public object[] Parameters { get; set; }

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
            if (Sess.DbHelper.InTransaction())
            {
                return Sess.DbHelper.ExecuteNonQuery(SqlText, Parameters);
            }
            else
            {
                Sess.AddToCache(SqlText, Parameters);
                return null;
            }
        }

        /// <summary>
        /// 获得一个标量值，即查询结果的第一行第一列的值
        /// </summary>
        /// <returns>返回一个标量</returns>
        public object ExecuteScalar()
        {
            try
            {
                Sess.BeginTransaction();
                object result = Sess.DbHelper.ExecuteScalar(SqlText, Parameters);
                Sess.CommitTransaction();
                return result;
            }
            catch
            {
                if(Sess.InTransaction()) Sess.RollbackTransaction();
                throw;
            }
        }

        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理，此方法由子类实现
        /// </summary>
        /// <returns>返回预处理后的SQL命令</returns>
        protected abstract string BeforeQuery();

        /// <summary>
        /// 执行查询，返回数据集
        /// </summary>
        /// <returns>返回数据集</returns>
        public DataSet ExecuteGetDataSet()
        {
            try
            {
                Sess.BeginTransaction();
                DataSet result = Sess.DbHelper.ExecuteGetDataSet(BeforeQuery(), Parameters);
                Sess.CommitTransaction();
                return result;
            }
            catch
            {
                if(Sess.InTransaction()) Sess.RollbackTransaction();
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
                Sess.BeginTransaction();
                DataTable result = Sess.DbHelper.ExecuteGetDataTable(BeforeQuery(), Parameters);
                Sess.CommitTransaction();
                return result;
            }
            catch
            {
                if(Sess.InTransaction()) Sess.RollbackTransaction();
                throw;
            }
        }

        /// <summary>
        /// 执行查询，获得对象列表
        /// </summary>
        /// <typeparam name="T">
        /// 对象的类型，该类型既可以为实体类型，也可以是普通的VO类。当使用普通的VO类时，
        /// 需把Column特性添加到要填充的属性上，将属性与返回的数据列做一个映射
        /// </typeparam>
        /// <returns>返回对象列表</returns>
        /// <see cref="FrameDAL.Attributes.Column"/>
        public List<T> ExecuteGetList<T>()
        {
            List<T> results = new List<T>();
            DataTable dt = ExecuteGetDataTable();
            foreach (DataRow row in dt.Rows)
            {
                T entity = (T)AppContext.Instance.GetConstructor(typeof(T)).Invoke(null);
                foreach (PropertyInfo prop in AppContext.Instance.GetProperties(typeof(T)))
                {
                    Column col = AppContext.Instance.GetColumn(prop);
                    if(col == null) continue;
                    AppContext.Instance.SetPropertyValue(entity, prop, row[col.Name]);
                }
                results.Add(entity);
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
        /// <returns>返回一个对象</returns>
        /// <see cref="FrameDAL.Attributes.Column"/>
        public T ExecuteGetEntity<T>()
        {
            List<T> results = ExecuteGetList<T>();
            if (results.Count > 0)
                return ExecuteGetList<T>()[0];
            else
                return default(T);
        }
    }
}
