using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;

namespace ResumeFactory
{
    class TraditionalTest : BaseTest
    {
        public class Class
        {
            public int Id { get; set; }
            
            public string ClassName { get; set; }
        }
        
        public class Student
        {
            public int Id { get; set; }
            
            public string StuName { get; set; }
            
            public int StuAge { get; set; }

            public int ClassId { get; set; }
        }
        
        public class Course
        {
            public int Id { get; set; }
            
            public string CourseName { get; set; }
        }

        public class StuCourse
        {
            public int CourseId { get; set; }

            public int StuId { get; set; }
        }


        public void TestAddStudent()
        {
            // 创建实体对象
            Class clazz = new Class();
            clazz.Id = 1;
            clazz.ClassName = "信息工程";

            Course course = new Course();
            course.Id = 2;
            course.CourseName = "数据库原理";

            Student student = new Student();
            student.Id = 3;
            student.StuName = "Vincent";
            student.StuAge = 20;

            // 手动设置关联关系
            student.ClassId = clazz.Id;
            StuCourse stuCourse = new StuCourse();
            stuCourse.StuId = student.Id;
            stuCourse.CourseId = course.Id;
            
            // 拼接SQL进行操作数据库
            MySqlConnection conn = new MySqlConnection("server=localhost;database=test;user id=root;password=root");
            conn.Open();

            string sql = "insert into class (id, class_name) values (" + clazz.Id + ", '" + clazz.ClassName + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

            sql = "insert into course (id, course_name) values (" + course.Id + ", '" + course.CourseName + "')";
            cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

            sql = "insert into student (id, stu_name, stu_age, class_id) "
                + "values (" + student.Id + ", '" + student.StuName + "', " + student.StuAge + ", " + student.ClassId + ")";
            cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

            sql = "insert into stu_course (stu_id, course_id) values (" + stuCourse.StuId + ", " + stuCourse.CourseId + ")";
            cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
