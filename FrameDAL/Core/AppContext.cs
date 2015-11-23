using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Config;
using FrameDAL.DbHelper;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;
using FrameDAL.Dialect;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 应用程序上下文。
    /// AppContext提供了获得Session的方法，保存了框架运行过程中产生的缓存，这些缓存可提高反射效率。
    /// 该类使用单例模式，在程序运行过程中只有一个实例，可通过AppContext.Instance获得该实例。
    /// 框架启动时，从程序启动目录下的FrameDAL.ini文件中读取配置信息产生AppContext的唯一实例。
    /// 配置文件的格式如下
    /// <code>
    /// [Settings]
    /// DbType=MySQL
    /// [ConnStr]
    /// server=localhost
    /// ; ...
    /// ; 其他连接串中需要的配置信息...
    /// ; ...
    /// [NamedSql]
    /// test.query=select * from account where id=?
    /// ; ...
    /// ; 其他命名SQL的名称和值...
    /// ; ...
    /// </code>
    /// 其中DbType目前只支持MySQL, Oracle（注意大小写）
    /// 
    /// GitHub: https://github.com/vincentlauvlwj/FrameDAL
    /// </summary>
    /// <see cref="FrameDAL.Config.Configuration"/>
    public class AppContext
    {
        private static AppContext _Instance;
        private static object o = new object();

        /// <summary>
        /// 获得AppContext的唯一实例
        /// </summary>
        /// <exception cref="FileNotFoundException">配置文件不存在</exception>
        /// <exception cref="ConfigurationException">配置文件中没有配置数据库连接串</exception>
        public static AppContext Instance
        {
            get 
            {
                if (_Instance == null)
                {
                    lock (o)
                    {
                        if (_Instance == null)
                        {
                            Configuration config = new Configuration();
                            config.Load();
                            _Instance = new AppContext(config);
                        }
                    }
                }
                return _Instance;
            } 
        }

        private IDbHelper db;
        private Configuration config;

        // 缓存了各种信息的Dictionary
        private Dictionary<Type, Table> tables = new Dictionary<Type,Table>();
        private Dictionary<Type, PropertyInfo[]> props = new Dictionary<Type,PropertyInfo[]>();
        private Dictionary<Type, PropertyInfo> idProps = new Dictionary<Type,PropertyInfo>();
        private Dictionary<PropertyInfo, Column> columns = new Dictionary<PropertyInfo,Column>();
        private Dictionary<PropertyInfo, Id> ids = new Dictionary<PropertyInfo,Id>();

        /// <summary>
        /// 私有构造方法，通过配置信息获得数据库访问助手，不同的数据库使用不同的访问助手
        /// </summary>
        /// <param name="config">框架配置信息</param>
        /// <exception cref="NotSupportedException">数据库不受支持</exception>
        private AppContext(Configuration config) 
        {
            this.config = config;
            switch (config.DbType)
            { 
                case Configuration.DatabaseType.MySQL:
                    db = new MySqlHelper(config.ConnStr);
                    break;

                case Configuration.DatabaseType.Oracle:
                    db = new OracleHelper(config.ConnStr);
                    break;

                default:
                    throw new NotSupportedException("暂不支持" + config.DbType + "数据库。");
            }
        }

        /// <summary>
        /// 打开Session
        /// </summary>
        /// <returns>返回打开的Session</returns>
        /// <exception cref="NotSupportedException">数据库不受支持</exception>
        public ISession OpenSession()
        {
            return new SessionImpl(db);
        }

        /// <summary>
        /// 获得配置文件中的命名SQL
        /// </summary>
        /// <param name="name">要获得的SQL的名称</param>
        /// <returns>SQL字符串</returns>
        /// <exception cref="ArgumentNullException">name为null</exception>
        /// <exception cref="KeyNotFoundException">不存在该名称的SQL</exception>
        public string GetNamedSql(string name)
        {
            return config.NamedSql[name];
        }

        /// <summary>
        /// 清除框架运行过程中产生的反射信息的缓存，此操作可能会使效率降低
        /// </summary>
        public void ClearCache()
        {
            lock(tables) tables.Clear();
            lock(props) props.Clear();
            lock(idProps) idProps.Clear();
            lock(columns) columns.Clear();
            lock(ids) ids.Clear();
            db.Dialect.ClearCache();
        }

        /// <summary>
        /// 获取缓存中的Table特性类对象
        /// </summary>
        /// <param name="type">要获取特性的类</param>
        /// <returns>返回Table特性</returns>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="ArgumentNullException">type为null</exception>
        public Table GetTable(Type type)
        {
            lock (tables)
            {
                if (tables.ContainsKey(type))
                {
                    return tables[type];
                }
                else
                {
                    Table table = Attribute.GetCustomAttribute(type, typeof(Table)) as Table;
                    if (table == null || string.IsNullOrWhiteSpace(table.Name)) 
                        throw new EntityMappingException(type.FullName + "类没有映射到数据库中的表。");
                    tables.Add(type, table);
                    return table;
                }
            }
        }

        /// <summary>
        /// 从缓存中获得类的所有属性
        /// </summary>
        /// <param name="type">要获取属性的类</param>
        /// <returns>属性数组</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类中没有任何公开属性</exception>
        public PropertyInfo[] GetProperties(Type type)
        {
            lock (props)
            {
                if (props.ContainsKey(type))
                {
                    return props[type];
                }
                else
                {
                    PropertyInfo[] properties = type.GetProperties();
                    if (properties.Length == 0) throw new EntityMappingException(type.FullName + "类中没有任何公开属性");
                    props.Add(type, properties);
                    return properties;
                }
            }
        }

        /// <summary>
        /// 从缓存中获取类的ID属性，ID属性是指添加了Id特性的属性
        /// </summary>
        /// <param name="type">要获取ID属性的类</param>
        /// <returns>ID属性</returns>
        /// <exception cref="EntityMappingException">该类没有配置ID属性</exception>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类的Id特性没有正确配置</exception>
        public PropertyInfo GetIdProperty(Type type)
        {
            lock (idProps)
            {
                if (idProps.ContainsKey(type))
                {
                    return idProps[type];
                }
                else
                {
                    foreach (PropertyInfo prop in GetProperties(type))
                    {
                        Id id = GetId(prop);
                        if (id == null) continue;
                        idProps.Add(type, prop);
                        return prop;
                    }
                    throw new EntityMappingException(type.FullName + "类中没有配置Id属性。");
                }
            }
        }

        /// <summary>
        /// 从缓存中获取属性的Column特性类对象
        /// </summary>
        /// <param name="prop">要获取特性的属性</param>
        /// <returns>返回Column特性类对象，若该属性没有添加Column特性，返回null</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该属性的Column特性没有正确配置</exception>
        public Column GetColumn(PropertyInfo prop)
        {
            lock (columns)
            {
                if (columns.ContainsKey(prop))
                {
                    return columns[prop];
                }
                else
                {
                    Column col = Attribute.GetCustomAttribute(prop, typeof(Column)) as Column;
                    if (col != null && string.IsNullOrWhiteSpace(col.Name))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." + prop.Name + "的Column特性没有正确配置。");
                    columns.Add(prop, col);
                    return col;
                }
            }
        }

        private void CheckId(PropertyInfo prop, Id id)
        {
            if (id != null && (id.GeneratorType == 0 || id.GeneratorType == GeneratorType.Sequence && string.IsNullOrWhiteSpace(id.SeqName)))
                throw new EntityMappingException(prop.DeclaringType.FullName + "." + prop.Name + "的Id特性没有正确配置。");
            if(GetColumn(prop) == null)
                throw new EntityMappingException(prop.DeclaringType.FullName + "." + prop.Name + "缺少Column特性。");
        }

        /// <summary>
        /// 从缓存中获取属性的Id特性类对象
        /// </summary>
        /// <param name="prop">要获取特性的属性</param>
        /// <returns>返回Id特性类对象，若该属性没有添加Id特性，返回null</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该属性的Id特性没有正确配置</exception>
        public Id GetId(PropertyInfo prop)
        {
            lock (ids)
            {
                if (ids.ContainsKey(prop))
                {
                    return ids[prop];
                }
                else
                {
                    Id id = Attribute.GetCustomAttribute(prop, typeof(Id)) as Id;
                    CheckId(prop, id);
                    ids.Add(prop, id);
                    return id;
                }
            }
        }

        /// <summary>
        /// 安全设置实体属性的值
        /// </summary>
        /// <param name="entity">要设置属性值的实体</param>
        /// <param name="prop">属性</param>
        /// <param name="value">值</param>
        public void SetPropertyValue(object entity, PropertyInfo prop, object value)
        {
            if (!(value is DBNull))
            {
                Type t = prop.PropertyType;
                prop.SetValue(
                    entity,
                    Convert.ChangeType(value, t.IsGenericType ? t.GetGenericArguments()[0] : t),
                    null);
            }
        }
    }
}
