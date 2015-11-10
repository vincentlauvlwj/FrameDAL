using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Config;
using FrameDAL.DbHelper;
using FrameDAL.Attributes;
using FrameDAL.Exceptions;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau
    /// 应用程序上下文。
    /// 该类保存了框架运行过程中产生的缓存，这些缓存可提高反射的效率，
    /// 提供了获得缓存中的反射信息的方法，还提供了获得Session的方法。
    /// 该类使用单例模式，在程序运行过程中只有一个实例，可通过AppContext.Instance获得该实例
    /// </summary>
    public class AppContext
    {
        /// <summary>
        /// 保存了AppContext的唯一实例
        /// </summary>
        public static AppContext Instance { get; private set; }

        /// <summary>
        /// 静态构造方法，加载框架配置文件，调用私有构造方法产生AppContext实例
        /// 若配置文件有异常，抛出TypeInitializationException
        /// </summary>
        static AppContext()
        {
            Configuration config = new Configuration();
            config.Load(Environment.CurrentDirectory + @"\FrameDAL.ini");
            Instance = new AppContext(config);
        }

        private IDbHelper db;
        private Configuration config;

        // 缓存了各种信息的Dictionary
        private Dictionary<Type, ConstructorInfo> constructors = new Dictionary<Type, ConstructorInfo>();
        private Dictionary<Type, Table> tables = new Dictionary<Type,Table>();
        private Dictionary<Type, PropertyInfo[]> props = new Dictionary<Type,PropertyInfo[]>();
        private Dictionary<Type, PropertyInfo> idProps = new Dictionary<Type,PropertyInfo>();
        private Dictionary<PropertyInfo, Column> columns = new Dictionary<PropertyInfo,Column>();
        private Dictionary<PropertyInfo, Id> ids = new Dictionary<PropertyInfo,Id>();
        private Dictionary<Type, string> inserts = new Dictionary<Type,string>();
        private Dictionary<Type, string> deletes = new Dictionary<Type,string>();
        private Dictionary<Type, string> updates = new Dictionary<Type,string>();
        private Dictionary<Type, string> selects = new Dictionary<Type,string>();

        /// <summary>
        /// 私有构造方法，通过配置信息获得数据库访问助手，不同的数据库使用不同的访问助手
        /// 如果数据库不受支持，抛出NotSupportedException
        /// </summary>
        /// <param name="config">框架配置信息</param>
        private AppContext(Configuration config) 
        {
            this.config = config;
            switch (config.DbType)
            { 
                case Configuration.DatabaseType.MySql:
                    db = new MySqlHelper(config.ConnStr);
                    break;

                default:
                    throw new NotSupportedException("暂不支持" + config.DbType + "数据库。");
            }
        }

        /// <summary>
        /// 打开Session
        /// 如果数据库不受支持，抛出NotSupportedException
        /// </summary>
        /// <returns>返回打开的Session</returns>
        public ISession OpenSession()
        {
            switch (config.DbType)
            {
                case Configuration.DatabaseType.MySql:
                    return new MySqlSession(db);

                default:
                    throw new NotSupportedException("暂不支持" + config.DbType + "数据库。");
            }
        }

        /// <summary>
        /// 获得配置文件中的命名SQL
        /// </summary>
        /// <param name="name">要获得的SQL的名称</param>
        /// <returns>SQL字符串</returns>
        public string GetNamedSql(string name)
        {
            return config.NamedSql[name];
        }

        /// <summary>
        /// 清除框架运行过程中产生的反射信息的缓存，此操作可能会使效率降低
        /// </summary>
        public void ClearCache()
        {
            lock(constructors) constructors.Clear();
            lock(tables) tables.Clear();
            lock(props) props.Clear();
            lock(idProps) idProps.Clear();
            lock(columns) columns.Clear();
            lock(ids) ids.Clear();
            lock(inserts) inserts.Clear();
            lock(deletes) deletes.Clear();
            lock(updates) updates.Clear();
            lock(selects) selects.Clear();
        }

        /// <summary>
        /// 获取缓存中的公共无参构造方法
        /// 如果类中没有公共无参构造方法，抛出EntityMappingException
        /// </summary>
        /// <param name="type">要获取构造方法的类</param>
        /// <returns>返回公共无参构造方法</returns>
        public ConstructorInfo GetConstructor(Type type)
        {
            lock (constructors)
            {
                if (constructors.ContainsKey(type))
                {
                    return constructors[type];
                }
                else
                {
                    ConstructorInfo cons = type.GetConstructor(new Type[0]);
                    if (cons == null) throw new EntityMappingException(type.FullName + "类中没有公共的无参构造方法。");
                    constructors.Add(type, cons);
                    return cons;
                }
            }
        }

        /// <summary>
        /// 获取缓存中的Table特性类对象
        /// 如果该类没有添加Table特性，或者Table.Name属性为空或空白字符串，抛出EntityMappingException
        /// </summary>
        /// <param name="type">要获取特性的类</param>
        /// <returns>返回Table特性</returns>
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
                    props.Add(type, properties);
                    return properties;
                }
            }
        }

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
                        Id id = Attribute.GetCustomAttribute(prop, typeof(Id)) as Id;
                        if (id != null)
                        {
                            idProps.Add(type, prop);
                            lock (ids)
                            {
                                if (!ids.ContainsKey(prop)) ids.Add(prop, id);
                            }
                            return prop;
                        }
                    }
                    return null;
                }
            }
        }

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
                    columns.Add(prop, col);
                    return col;
                }
            }
        }

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
                    ids.Add(prop, id);
                    return id;
                }
            }
        }

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
                    sb.Append(GetTable(type).Name);
                    sb.Append(" (");
                    foreach (PropertyInfo prop in GetProperties(type))
                    {
                        sb.Append(GetColumn(prop).Name + ", ");
                    }
                    sb.Remove(sb.Length - 2, 2);
                    sb.Append(") values (");
                    for (int i = 0; i < GetProperties(type).Length; i++)
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
                    sb.Append(GetTable(type).Name);
                    sb.Append(" where ");
                    sb.Append(GetColumn(GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    deletes.Add(type, sql);
                    return sql;
                }
            }
        }

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
                    sb.Append(GetTable(type).Name);
                    sb.Append(" set ");
                    foreach (PropertyInfo prop in GetProperties(type))
                    {
                        sb.Append(GetColumn(prop).Name);
                        sb.Append("=?, ");
                    }
                    sb.Remove(sb.Length - 2, 2);
                    sb.Append(" where ");
                    sb.Append(GetColumn(GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    updates.Add(type, sql);
                    return sql;
                }
            }
        }

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
                    sb.Append(GetTable(type).Name);
                    sb.Append(" where ");
                    sb.Append(GetColumn(GetIdProperty(type)).Name);
                    sb.Append("=?");
                    string sql = sb.ToString();
                    selects.Add(type, sql);
                    return sql;
                }
            }
        }
    }
}
