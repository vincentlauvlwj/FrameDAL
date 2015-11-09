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
        private Dictionary<Type, ConstructorInfo> constructors;
        private Dictionary<Type, Table> tables;
        private Dictionary<Type, PropertyInfo[]> props;
        private Dictionary<Type, PropertyInfo> idProps;
        private Dictionary<PropertyInfo, Column> columns;
        private Dictionary<PropertyInfo, Id> ids;
        private Dictionary<Type, string> inserts;
        private Dictionary<Type, string> deletes;
        private Dictionary<Type, string> updates;
        private Dictionary<Type, string> selects;

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
            constructors = new Dictionary<Type, ConstructorInfo>();
            tables = new Dictionary<Type, Table>();
            props = new Dictionary<Type, PropertyInfo[]>();
            idProps = new Dictionary<Type, PropertyInfo>();
            columns = new Dictionary<PropertyInfo, Column>();
            ids = new Dictionary<PropertyInfo, Id>();
            inserts = new Dictionary<Type, string>();
            deletes = new Dictionary<Type, string>();
            updates = new Dictionary<Type, string>();
            selects = new Dictionary<Type, string>();
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
            constructors.Clear();
            tables.Clear();
            props.Clear();
            idProps.Clear();
            columns.Clear();
            ids.Clear();
            inserts.Clear();
            deletes.Clear();
            updates.Clear();
            selects.Clear();
        }

        public ConstructorInfo GetConstructor(Type type)
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

        public Table GetTable(Type type)
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

        public PropertyInfo[] GetProperties(Type type)
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

        public PropertyInfo GetIdProperty(Type type)
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
                        ids.Add(prop, id);
                        return prop;
                    }
                }
                return null;
            }
        }

        public Column GetColumn(PropertyInfo prop)
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

        public Id GetId(PropertyInfo prop)
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

        public string GetInsertSql(Type type)
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

        public string GetDeleteSql(Type type)
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

        public string GetUpdateSql(Type type)
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

        public string GetSelectSql(Type type)
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
