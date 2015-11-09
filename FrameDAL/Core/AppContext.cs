using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Config;
using FrameDAL.DbHelper;
using FrameDAL.Attributes;

namespace FrameDAL.Core
{
    public class AppContext
    {
        public static AppContext Instance { get; private set; }

        static AppContext()
        {
            Configuration config = new Configuration();
            config.Load(Environment.CurrentDirectory + @"\FrameDAL.ini");
            Instance = new AppContext(config);
        }

        private IDbHelper db;
        private Configuration config;

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

        private AppContext(Configuration config) 
        {
            this.config = config;
            switch (config.DbType)
            { 
                case Configuration.DatabaseType.MySql:
                    db = new MySqlHelper(config.ConnStr);
                    break;

                default:
                    throw new ApplicationException("暂不支持的数据库类型");
            }
        }

        public ISession OpenSession()
        {
            switch (config.DbType)
            {
                case Configuration.DatabaseType.MySql:
                    return new MySqlSession(db);

                default:
                    throw new ApplicationException("暂不支持的数据库类型");
            }
        }

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
                    constructors.Add(type, cons);
                    return cons;
                }
            }
        }

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
