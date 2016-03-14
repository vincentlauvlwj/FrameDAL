using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FrameDAL.Core;
using FrameDAL.Config;
using FrameDAL.Attributes;

namespace FrameDAL.Tests
{
    [TestClass]
    public class FrameDALTests
    {
        private ISession session;

        [TestInitialize]
        public void Init()
        {
            //Configuration.DefaultPath = @"FrameDAL.ini";
            session = AppContext.Instance.OpenSession();
        }

        [TestCleanup]
        public void Cleanup()
        {
            session.Close();
        }

        [TestMethod]
        public void Select()
        {
            var query = session.GetAll<User>()
                    .Select(u => new { u.UserName, u.UserPwd })
                    .Where(u => u.UserName == "123").ToList()[0];
            Assert.AreEqual(query.UserName, "123");
        }
    }

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

    [Table("resume")]
    public class Resume
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [ManyToOne("user_id")]
        public virtual User User { get; set; }

        [ManyToOne("template_id")]
        public virtual ResumeTemplate ResumeTemplate { get; set; }

        [Column("resume_name")]
        public string ResumeName { get; set; }

        [Column("resume_share")]
        public int ResumeShare { get; set; }

        [Column("resume_create_time")]
        public DateTime? ResumeCreateTime { get; set; }

        [OneToMany("resume_id")]
        public virtual List<PersonInfo> PersonInfo { get; set; }
    }

    [Table("resume_template")]
    public class ResumeTemplate
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public string Id { get; set; }

        [Column("template_name")]
        public string TemplateName { get; set; }

        [Column("template_generator_class")]
        public string TemplateGeneratorClass { get; set; }
    }

    [Table("person_info")]
    public class PersonInfo
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("person_name")]
        public string PersonName { get; set; }

        [Column("person_gender")]
        public int PersonGender { get; set; }

        public bool IsMale
        {
            get
            {
                return PersonGender == 1;
            }
            set
            {
                PersonGender = value ? 1 : 0;
            }
        }

        [Column("person_birthday")]
        public DateTime? PersonBirthday { get; set; }

        [Column("person_workdate")]
        public DateTime? PersonWorkdate { get; set; }

        [Column("person_born_area")]
        public string PersonBornArea { get; set; }

        [Column("person_living_area")]
        public string PersonLivingArea { get; set; }

        [Column("person_tel")]
        public string PersonTel { get; set; }

        [Column("person_email")]
        public string PersonEmail { get; set; }

        [Column("person_qq")]
        public string PersonQq { get; set; }

        [Column("person_marriage")]
        public string PersonMarriage { get; set; }

        [Column("person_identity_type")]
        public string PersonIdentityType { get; set; }

        [Column("person_identity_code")]
        public string PersonIdentityCode { get; set; }

        [Column("person_abroad")]
        public int PersonAbroad { get; set; }

        public bool HasBeenAbroad
        {
            get
            {
                return PersonAbroad == 1;
            }
            set
            {
                PersonAbroad = value ? 1 : 0;
            }
        }

        [Column("person_party")]
        public string PersonParty { get; set; }

        [Column("person_avatar", LazyLoad = true)]
        public virtual byte[] PersonAvatarBytes { get; set; }
    }
}
