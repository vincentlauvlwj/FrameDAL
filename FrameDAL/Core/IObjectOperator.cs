using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Core
{
    public interface IObjectOperator
    {
        /// <summary>
        /// 将实体对象插入数据库，当主键生成器不为Assign时，此方法会根据主键生成器的配置自动为其生成主键
        /// </summary>
        /// <param name="entity">实体对象</param>
        /// <returns>插入成功后，返回主键值</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        object Add(object entity);

        object Add(object entity, bool enableCascade);

        /// <summary>
        /// 更新数据库中的实体
        /// </summary>
        /// <param name="entity">要更新的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Update(object entity);

        void Update(object entity, bool enableCascade);

        void Save(object entity);

        void Save(object entity, bool enableCascade);

        /// <summary>
        /// 在数据库中删除实体
        /// </summary>
        /// <param name="entity">要删除的实体</param>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        void Delete(object entity);

        void Delete(object entity, bool enableCascade);

        /// <summary>
        /// 从数据库中获得实体
        /// </summary>
        /// <typeparam name="T">实体类型</typeparam>
        /// <param name="id">主键值</param>
        /// <returns>返回获得的实体，若没有结果，返回null</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        T Get<T>(object id) where T : class, new();

        T Get<T>(object id, bool enableLazy) where T : class, new();

        IQueryable<T> GetAll<T>();

        /// <summary>
        /// 创建Query对象，不同的数据库使用不同的Query对象
        /// </summary>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateSqlQuery();

        /// <summary>
        /// 创建Query对象，同时使用给定参数对其进行初始化
        /// </summary>
        /// <param name="sqlText">SQL命令</param>
        /// <param name="parameters">SQL命令参数</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateSqlQuery(string sqlText, params object[] parameters);

        /// <summary>
        /// 创建命名Query对象，从配置文件中读取给定名字的SQL对其进行初始化
        /// </summary>
        /// <param name="name">SQL名字</param>
        /// <param name="parameters">SQL参数值</param>
        /// <returns>返回Query对象</returns>
        /// <exception cref="InvalidOperationException">Session已关闭或在其他的线程使用此Session</exception>
        ISqlQuery CreateNamedSqlQuery(string name, params object[] parameters);
    }
}
