using System;
using System.Collections.Generic;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("user")]
    public class User
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("user_name")]
        public string UserName { get; set; }

        [Column("user_pwd")]
        public string UserPwd { get; set; }

        [OneToMany("user_id", LazyLoad = true)]
        public virtual List<Resume> Resumes { get; set; }
    }
}