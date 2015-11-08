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
        private Dictionary<Type, Table> tables;
        private Dictionary<Type, PropertyInfo[]> props;
        private Dictionary<Type, PropertyInfo> idProps;
        private Dictionary<PropertyInfo, Column> columns;
        private Dictionary<PropertyInfo, Id> ids;

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
            tables = new Dictionary<Type, Table>();
            props = new Dictionary<Type, PropertyInfo[]>();
            idProps = new Dictionary<Type, PropertyInfo>();
            columns = new Dictionary<PropertyInfo, Column>();
            ids = new Dictionary<PropertyInfo, Id>();
        }

        public void ClearCache()
        {
            tables.Clear();
            props.Clear();
            idProps.Clear();
            columns.Clear();
            ids.Clear();
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
                if (table == null) return null;
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
                if (col == null) return null;
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
                if (id == null) return null;
                ids.Add(prop, id);
                return id;
            }
        }
    }
}
