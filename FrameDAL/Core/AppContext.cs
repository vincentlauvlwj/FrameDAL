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
using FrameDAL.Utility;

namespace FrameDAL.Core
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 应用程序上下文。
    /// AppContext提供了获得Session的方法，保存了框架运行过程中产生的缓存，这些缓存可提高反射效率。
    /// 该类使用单例模式，在程序运行过程中只有一个实例，可通过AppContext.Instance获得该实例。
    /// 框架启动时，从程序启动目录下的FrameDAL.ini文件中读取配置信息产生AppContext的唯一实例。
    /// 
    /// Note: 配置文件的默认路径也可在获取AppContext之前通过设置Configuration.DefaultPath属性而改变
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
        /// <exception cref="ConfigurationException">配置错误</exception>
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

        /// <summary>
        /// 获取程序使用的DbHelper对象，利用此对象，可以进行本框架暂未支持的一些底层操作。
        /// 推荐使用此属性获得DbHelper而不是自己创建，因为此属性获得的是IDbHelper接口，通过面向接口编程，可避免代码与具体数据库耦合。
        /// </summary>
        public IDbHelper DbHelper { get; private set; }
        public Configuration Configuration { get; private set; }
        public LogUtil LogUtil { get; private set; }

        // 缓存了各种信息的Dictionary
        private Dictionary<Type, TableAttribute> tables = new Dictionary<Type,TableAttribute>();
        private Dictionary<Type, PropertyInfo[]> props = new Dictionary<Type,PropertyInfo[]>();
        private Dictionary<Type, PropertyInfo> idProps = new Dictionary<Type,PropertyInfo>();
        private Dictionary<PropertyInfo, ColumnAttribute> columns = new Dictionary<PropertyInfo,ColumnAttribute>();
        private Dictionary<PropertyInfo, IdAttribute> ids = new Dictionary<PropertyInfo,IdAttribute>();
        private Dictionary<PropertyInfo, ManyToOneAttribute> manyToOnes = new Dictionary<PropertyInfo, ManyToOneAttribute>();
        private Dictionary<PropertyInfo, OneToManyAttribute> oneToManies = new Dictionary<PropertyInfo, OneToManyAttribute>();
        private Dictionary<PropertyInfo, ManyToManyAttribute> manyToManies = new Dictionary<PropertyInfo, ManyToManyAttribute>();

        /// <summary>
        /// 私有构造方法，通过配置信息获得数据库访问助手，不同的数据库使用不同的访问助手
        /// </summary>
        /// <param name="config">框架配置信息</param>
        /// <exception cref="NotSupportedException">数据库不受支持</exception>
        private AppContext(Configuration config)
        {
            this.Configuration = config;
            try
            {
                DbHelper = Assembly.LoadFrom(config.DbHelperAssembly).CreateInstance(config.DbHelperClass) as IDbHelper;
                if (DbHelper == null)
                    throw new TypeLoadException("程序集" + config.DbHelperAssembly + "中未找到" + config.DbHelperClass + "类。");
                DbHelper.ConnectionString = config.ConnStr;
                LogUtil = new LogUtil(config.LogFile, config.LogAppend);
            }
            catch (Exception e)
            {
                throw new ConfigurationException("DbHelper初始化异常，请检查配置文件中是否正确配置DbHelperAssembly和DbHelperClass属性。" + e.Message, e);
            }
        }

        /// <summary>
        /// 打开Session
        /// </summary>
        /// <returns>返回一个打开的Session</returns>
        public ISession OpenSession()
        {
            return new SessionImpl(DbHelper);
        }

        /// <summary>
        /// 清除框架运行过程中产生的反射信息的缓存，此操作可能会使效率降低
        /// </summary>
        public void ClearCache()
        {
            lock (tables) tables.Clear();
            lock (props) props.Clear();
            lock (idProps) idProps.Clear();
            lock (columns) columns.Clear();
            lock (ids) ids.Clear();
            lock (manyToOnes) manyToOnes.Clear();
            lock (oneToManies) oneToManies.Clear();
            lock (manyToManies) manyToManies.Clear();
        }

        /// <summary>
        /// 获取缓存中的Table特性类对象
        /// </summary>
        /// <param name="type">要获取特性的类</param>
        /// <returns>返回Table特性</returns>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="ArgumentNullException">type为null</exception>
        public TableAttribute GetTableAttribute(Type type)
        {
            lock (tables)
            {
                if (tables.ContainsKey(type))
                {
                    return tables[type];
                }
                else
                {
                    TableAttribute table = Attribute.GetCustomAttribute(type, typeof(TableAttribute)) as TableAttribute;
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
                    CheckExclusiveAttributes(properties);
                    props.Add(type, properties);
                    return properties;
                }
            }
        }

        private void CheckExclusiveAttributes(PropertyInfo[] properties)
        {
            foreach (PropertyInfo prop in properties)
            {
                int i = 0;
                if (GetColumnAttribute(prop) != null) i++;
                if (GetManyToOneAttribute(prop) != null) i++;
                if (GetOneToManyAttribute(prop) != null) i++;
                if (GetManyToManyAttribute(prop) != null) i++;
                if (i > 1)
                {
                    throw new EntityMappingException(prop.DeclaringType.FullName + "."
                        + prop.Name + "的Column特性没有正确配置：Column, ManyToOne, OneToMany, ManyToMany四个特性在一个属性上只能有一个。");
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
                    var result = GetProperties(type).Where(p => GetIdAttribute(p) != null).ToArray();
                    if (result.Length == 0)
                    {
                        throw new EntityMappingException(type.FullName + "类中没有配置Id属性。");
                    }
                    else if (result.Length > 1)
                    {
                        throw new EntityMappingException(type.FullName + "类Id特性配置错误：本框架暂不支持类中有一个以上的Id属性，请期待日后扩展。");
                    }
                    else
                    {
                        idProps.Add(type, result[0]);
                        return result[0];
                    }
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
        public ColumnAttribute GetColumnAttribute(PropertyInfo prop)
        {
            lock (columns)
            {
                if (columns.ContainsKey(prop))
                {
                    return columns[prop];
                }
                else
                {
                    ColumnAttribute col = Attribute.GetCustomAttribute(prop, typeof(ColumnAttribute)) as ColumnAttribute;

                    if (col != null && string.IsNullOrWhiteSpace(col.Name))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的Column特性没有正确配置：Name属性不能为空。");

                    if (col != null && col.LazyLoad && (!prop.GetGetMethod().IsVirtual || !prop.GetSetMethod().IsVirtual))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的Column特性没有正确配置：要使用LazyLoad的属性必须具有virtual修饰符。");

                    columns.Add(prop, col);
                    return col;
                }
            }
        }

        /// <summary>
        /// 从缓存中获取属性的Id特性类对象
        /// </summary>
        /// <param name="prop">要获取特性的属性</param>
        /// <returns>返回Id特性类对象，若该属性没有添加Id特性，返回null</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该属性的Id特性没有正确配置</exception>
        public IdAttribute GetIdAttribute(PropertyInfo prop)
        {
            lock (ids)
            {
                if (ids.ContainsKey(prop))
                {
                    return ids[prop];
                }
                else
                {
                    IdAttribute id = Attribute.GetCustomAttribute(prop, typeof(IdAttribute)) as IdAttribute;

                    if (id != null && id.GeneratorType == 0)
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的Id特性没有正确配置：请提供GeneratorType。");

                    if (id != null && id.GeneratorType == GeneratorType.Sequence && string.IsNullOrWhiteSpace(id.SeqName))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的Id特性没有正确配置：当使用GeneratorType.Sequence时，必须提供SeqName。");

                    ColumnAttribute col = GetColumnAttribute(prop);
                    if (id != null && col == null)
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." + prop.Name + "缺少Column特性。");

                    if (id != null && col.ReadOnly)
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的Column特性没有正确配置：Id字段不可为ReadOnly。");

                    if (id != null && col.LazyLoad)
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的Column特性没有正确配置：Id字段不可使用LazyLoad。");

                    if (id != null && ! string.IsNullOrWhiteSpace(col.SQL))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的Column特性没有正确配置：Id字段的Column特性不可使用SQL。");

                    ids.Add(prop, id);
                    return id;
                }
            }
        }

        public ManyToOneAttribute GetManyToOneAttribute(PropertyInfo prop)
        {
            lock (manyToOnes)
            {
                if (manyToOnes.ContainsKey(prop))
                {
                    return manyToOnes[prop];
                }
                else
                {
                    ManyToOneAttribute manyToOne = Attribute.GetCustomAttribute(prop, typeof(ManyToOneAttribute)) as ManyToOneAttribute;
                    
                    if (manyToOne != null && string.IsNullOrWhiteSpace(manyToOne.ForeignKey))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的ManyToOne特性没有正确配置：ForeignKey属性不能为空。");

                    if (manyToOne != null && manyToOne.LazyLoad && (!prop.GetGetMethod().IsVirtual || !prop.GetSetMethod().IsVirtual))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "." 
                            + prop.Name + "的ManyToOne特性没有正确配置：要使用LazyLoad的属性必须具有virtual修饰符。");

                    manyToOnes.Add(prop, manyToOne);
                    return manyToOne;
                }
            }
        }

        public OneToManyAttribute GetOneToManyAttribute(PropertyInfo prop)
        {
            lock (oneToManies)
            {
                if (oneToManies.ContainsKey(prop))
                {
                    return oneToManies[prop];
                }
                else
                {
                    OneToManyAttribute oneToMany = Attribute.GetCustomAttribute(prop, typeof(OneToManyAttribute)) as OneToManyAttribute;

                    if (oneToMany != null && string.IsNullOrWhiteSpace(oneToMany.InverseForeignKey))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的OneToMany特性没有正确配置：InverseForeignKey属性不能为空。");

                    if (oneToMany != null && oneToMany.LazyLoad && (!prop.GetGetMethod().IsVirtual || !prop.GetSetMethod().IsVirtual))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的OneToMany特性没有正确配置：要使用LazyLoad的属性必须具有virtual修饰符。");

                    oneToManies.Add(prop, oneToMany);
                    return oneToMany;
                }
            }
        }

        public ManyToManyAttribute GetManyToManyAttribute(PropertyInfo prop)
        {
            lock (manyToManies)
            {
                if (manyToManies.ContainsKey(prop))
                {
                    return manyToManies[prop];
                }
                else
                {
                    ManyToManyAttribute manyToMany = Attribute.GetCustomAttribute(prop, typeof(ManyToManyAttribute)) as ManyToManyAttribute;

                    if (manyToMany != null && string.IsNullOrWhiteSpace(manyToMany.JoinTable))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的ManyToMany特性没有正确配置：JoinTable属性不能为空。");

                    if (manyToMany != null && string.IsNullOrWhiteSpace(manyToMany.JoinColumn))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的ManyToMany特性没有正确配置：JoinColumn属性不能为空。");

                    if (manyToMany != null && string.IsNullOrWhiteSpace(manyToMany.InverseJoinColumn))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的ManyToMany特性没有正确配置：InverseJoinColumn属性不能为空。");

                    if (manyToMany != null && manyToMany.LazyLoad && (!prop.GetGetMethod().IsVirtual || !prop.GetSetMethod().IsVirtual))
                        throw new EntityMappingException(prop.DeclaringType.FullName + "."
                            + prop.Name + "的ManyToMany特性没有正确配置：要使用LazyLoad的属性必须具有virtual修饰符。");

                    manyToManies.Add(prop, manyToMany);
                    return manyToMany;
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

                prop.SetValue(entity, Convert.ChangeType(value, t), null);
            }
            catch (Exception e)
            {
                throw new FrameDALException("将值" + (value == null ? "null" : value.ToString()) + "赋给属性" 
                    + prop.DeclaringType.FullName + "." + prop.Name + "时发生异常。错误信息：" + e.Message, e);
            }
        }
    }
}
