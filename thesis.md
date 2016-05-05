# 体检系统数据访问层：一个ORM持久化框架的设计与实现

## 摘要

## Abstract

## 引言

软件开发过程中，在程序中对数据库进行访问是十分普遍的行为。一个以数据为中心的软件系统，几乎处处都是数据库访问的代码。这些数据访问代码实现了软件系统的业务逻辑，形成了庞大的代码库，支撑起了信息化时代形形色色的信息系统。下面介绍几种常见的数据库访问方式。

### 传统数据库访问方式及其优劣

传统的数据库访问方式是指不通过中间层，直接对数据库进行操作的方式。Java中的JDBC和C#中的ADO.NET都是这种方式的典型代表。传统的数据库访问方式的典型步骤包括：加载数据库连接驱动，创建连接，创建数据库命令对象并为其赋予参数，执行命令并读取执行结果，关闭连接。下面是C#语言中一段使用传统数据库访问方式从MySQL数据库中获得一个班级中所有学生的名字的示例代码。

````C#
	public List<string> GetNamesByClassName(string className)
    {
        List<string> names = new List<string>();
        string connStr = "server=localhost;database=test;user id=root;password=root";

        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "select name from student where class_name=@className";
        cmd.Parameters.AddWithValue("@className", className);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            names.Add(reader.GetString("name"));
        }

        conn.Close();
        return names;
    }
````

使用这种数据库访问方式的缺点是显而易见的，那就是充斥着大量冗余的模版代码。里面真正与我们的业务相关的只有一两句话，而我们却不得不为此写一大段模版性的代码来处理数据库连接的开启与关闭等操作。

### 使用DbHelper工具类的方式

### 使用ORM框架的意义

## 背景

### 现有的主流ORM框架

### ORM框架应实现的功能

###技术背景及理论依据

## 设计

### 核心API设计

#### 增删改操作

#### SQL查询

#### LINQ查询

### 数据-关系映射方式设计

### 数据库无关性设计

## 实现

### 关联映射的实现

### 懒加载的实现

### 缓存的实现

### 对反射的性能改进

## 成果

### 对编程方式的影响

### 对性能的影响

## 参考文献

## 附录