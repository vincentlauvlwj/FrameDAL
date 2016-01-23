using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Core;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;

namespace FrameDAL.Utility
{
    public static class ReflectionUtil
    {
        /// <summary>
        /// 获取缓存中的Table特性类对象
        /// </summary>
        /// <param name="type">要获取特性的类</param>
        /// <returns>返回Table特性</returns>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="ArgumentNullException">type为null</exception>
        public static TableAttribute GetTableAttribute(this Type type)
        {
            return AppContext.Instance.GetTableAttribute(type);
        }

        /// <summary>
        /// 从缓存中获得类的所有属性
        /// </summary>
        /// <param name="type">要获取属性的类</param>
        /// <returns>属性数组</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类中没有任何公开属性</exception>
        public static PropertyInfo[] GetCachedProperties(this Type type)
        {
            return AppContext.Instance.GetProperties(type);
        }

        /// <summary>
        /// 从缓存中获取类的ID属性，ID属性是指添加了Id特性的属性
        /// </summary>
        /// <param name="type">要获取ID属性的类</param>
        /// <returns>ID属性</returns>
        /// <exception cref="EntityMappingException">该类没有配置ID属性</exception>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类的Id特性没有正确配置</exception>
        public static PropertyInfo GetIdProperty(this Type type)
        {
            return AppContext.Instance.GetIdProperty(type);
        }

        /// <summary>
        /// 从缓存中获取属性的Column特性类对象
        /// </summary>
        /// <param name="prop">要获取特性的属性</param>
        /// <returns>返回Column特性类对象，若该属性没有添加Column特性，返回null</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该属性的Column特性没有正确配置</exception>
        public static ColumnAttribute GetColumnAttribute(this PropertyInfo prop)
        {
            return AppContext.Instance.GetColumnAttribute(prop);
        }

        /// <summary>
        /// 从缓存中获取属性的Id特性类对象
        /// </summary>
        /// <param name="prop">要获取特性的属性</param>
        /// <returns>返回Id特性类对象，若该属性没有添加Id特性，返回null</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该属性的Id特性没有正确配置</exception>
        public static IdAttribute GetIdAttribute(this PropertyInfo prop)
        {
            return AppContext.Instance.GetIdAttribute(prop);
        }

        public static ManyToOneAttribute GetManyToOneAttribute(this PropertyInfo prop)
        {
            return AppContext.Instance.GetManyToOneAttribute(prop);
        }

        public static OneToManyAttribute GetOneToManyAttribute(this PropertyInfo prop)
        {
            return AppContext.Instance.GetOneToManyAttribute(prop);
        }

        public static ManyToManyAttribute GetManyToManyAttribute(this PropertyInfo prop)
        {
            return AppContext.Instance.GetManyToManyAttribute(prop);
        }

        public static PropertyInfo GetManyToOneProperty(this Type type, string foreignKey, string targetTable)
        {
            return AppContext.Instance.GetManyToOneProperty(type, foreignKey, targetTable);
        }

        /// <summary>
        /// 安全设置实体属性的值
        /// </summary>
        /// <param name="entity">要设置属性值的实体</param>
        /// <param name="prop">属性</param>
        /// <param name="value">值</param>
        public static void SetValueSafely(this PropertyInfo prop, object entity, object value)
        {
            try
            {
                Type t = prop.PropertyType;

                if (value is DBNull)
                {
                    value = t.IsValueType ? Activator.CreateInstance(t) : null;
                }
                if (value == null)
                {
                    prop.SetValue(entity, null, null);
                    return;
                }
                if (t.IsGenericType && t.GetGenericTypeDefinition() == typeof(Nullable<>))
                {
                    t = t.GetGenericArguments()[0];
                }

                prop.SetValue(entity, value is IConvertible ? Convert.ChangeType(value, t) : value, null);
            }
            catch (Exception e)
            {
                throw new FrameDALException("将值" + (value == null ? "null" : value.ToString()) + "赋给属性"
                    + prop.DeclaringType.FullName + "." + prop.Name + "时发生异常。错误信息：" + e.Message, e);
            }
        }
    }
}
