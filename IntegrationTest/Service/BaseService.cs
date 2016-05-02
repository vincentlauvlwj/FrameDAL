using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Core;
using FrameDAL.Attributes;
using FrameDAL.Utility;

namespace ResumeFactory.Service
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 业务逻辑类的基类，实现了一些基本的业务方法，子类可以重写这些方法以实现自己的特殊需求
    /// </summary>
    /// <typeparam name="T">该业务逻辑类主要操作的实体类型</typeparam>
    public class BaseService<T> where T : class, new()
    {
        protected AppContext context = AppContext.Instance;

        /// <summary>
        /// 添加一条记录
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <returns>由框架自动生成的主键</returns>
        public virtual object Add(T entity)
        {
            using (ISession session = context.OpenSession())
            {
                return session.Add(entity);
            }
        }

        /// <summary>
        /// 更新一条记录
        /// </summary>
        /// <param name="entity">实体对象</param>
        public virtual void Update(T entity)
        {
            using (ISession session = context.OpenSession())
            {
                session.Update(entity);
            }
        }

        /// <summary>
        /// 插入或更新一条记录，若该记录是一条新增的记录（主键==null），则向数据库中插入，否则更新数据库中的记录
        /// </summary>
        /// <param name="entity">实体对象</param>
        public virtual void AddOrUpdate(T entity)
        {
            if (typeof(T).GetIdProperty().GetValue(entity, null) == null)
            {
                Add(entity);
            }
            else
            {
                Update(entity);
            }
        }

        /// <summary>
        /// 删除一条记录
        /// </summary>
        /// <param name="entity">要删除的记录</param>
        public virtual void Delete(T entity)
        {
            using (ISession session = context.OpenSession())
            {
                session.Delete(entity);
            }
        }

        /// <summary>
        /// 获得一条记录
        /// </summary>
        /// <param name="id">要获得的记录的主键</param>
        /// <returns>得到的记录</returns>
        public virtual T Get(object id)
        {
            using (ISession session = context.OpenSession())
            {
                return session.Get<T>(id);
            }
        }

        /// <summary>
        /// 获得所有记录
        /// </summary>
        /// <returns>得到的记录列表</returns>
        public virtual List<T> GetAll()
        {
            using (ISession session = context.OpenSession())
            {
                return session.GetAll<T>().ToList();
            }
        }

        /// <summary>
        /// 获得指定页码的记录
        /// </summary>
        /// <param name="pageNum">页码，页码从1开始</param>
        /// <param name="pageSize">每页的记录数</param>
        /// <returns>指定页的记录列表</returns>
        public virtual List<T> GetByPage(int pageNum, int pageSize)
        {
            int firstResult = (pageNum - 1) * pageSize;
            using (ISession session = context.OpenSession())
            {
                string tableName = typeof(T).GetTableAttribute().Name;
                ISqlQuery query = session.CreateSqlQuery("select * from " + tableName);
                query.FirstResult = firstResult;
                query.PageSize = pageSize;
                return query.ExecuteGetList<T>();
            }
        }

        /// <summary>
        /// 获得总页数
        /// </summary>
        /// <param name="pageSize">每页的记录数</param>
        /// <returns>总页数</returns>
        public virtual int GetTotalPage(int pageSize)
        {
            using (ISession session = context.OpenSession())
            {
                string tableName = typeof(T).GetTableAttribute().Name;
                object totalPage = session.CreateSqlQuery("select count(*) from " + tableName).ExecuteScalar();
                int i = Convert.ToInt32(totalPage);
                return i / pageSize + (i % pageSize == 0 ? 0 : 1);
            }
        }
    }
}
