using System;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
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

        [Column("person_avatar", LazyLoad=true)]
        public virtual byte[] PersonAvatarBytes { get; set; }

        public Image PersonAvatar
        {
            get
            {
                if (PersonAvatarBytes == null) return null;
                using (MemoryStream stream = new MemoryStream(PersonAvatarBytes))
                {
                    return Image.FromStream(stream);
                }
            }
            set
            {
                if (value == null)
                {
                    PersonAvatarBytes = null;
                }
                else
                {
                    using (MemoryStream stream = new MemoryStream())
                    {
                        value.Save(stream, ImageFormat.Jpeg);
                        PersonAvatarBytes = stream.GetBuffer();
                    }
                }
            }
        }
    }
}