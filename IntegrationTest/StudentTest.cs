using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Attributes;
using FrameDAL.Core;

namespace ResumeFactory
{
    [Table("class")]
    public class Class
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public virtual int Id { get; set; }

        [Column("class_name")]
        public virtual string ClassName { get; set; }

        [OneToMany("class_id")]
        public virtual List<Student> Students { get; set; }
    }

    [Table("student")]
    public class Student
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public virtual int Id { get; set; }

        [Column("stu_name")]
        public virtual string StuName { get; set; }

        [Column("stu_age")]
        public virtual int StuAge { get; set; }

        [ManyToOne("class_id", LazyLoad = false)]
        public virtual Class Class { get; set; }

        [ManyToMany(JoinTable = "stu_course", JoinColumn = "stu_id", InverseJoinColumn = "course_id")]
        public virtual List<Course> Courses { get; set; }
    }

    [Table("course")]
    public class Course
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public virtual int Id { get; set; }

        [Column("course_name")]
        public virtual string CourseName { get; set; }

        [ManyToMany(JoinTable = "stu_course", JoinColumn = "course_id", InverseJoinColumn = "stu_id")]
        public virtual List<Student> Students { get; set; }
    }

    public class StudentTest : BaseTest
    {
        public void TestAddStudent()
        {
            AppContext context = AppContext.Instance;
            using (ISession session = context.OpenSession())
            {
                Student student = new Student();
                student.StuName = "Vincent";
                student.StuAge = 20;
                student.Class = new Class { ClassName = "信息工程" };
                student.Courses = new List<Course>();
                student.Courses.Add(new Course() { CourseName = "数据库原理" });

                session.Add(student);
            }
        }

        public void TestGetStudent()
        {
            Student student = session.Get<Student>(23);
            Shell.WriteLine(student.StuName);
            Shell.WriteLine(student.Class.ClassName);
            Shell.WriteLine(student.Courses[0].CourseName);
        }

        public void TestUpdateStudent()
        {
            Student student = session.Get<Student>(23);
            student.StuAge = 21;
            student.Courses.Clear();
            session.Update(student);
        }

        public void TestDeleteStudent()
        {
            Student student = session.Get<Student>(24);
            session.Delete(student);
        }
    }
}
