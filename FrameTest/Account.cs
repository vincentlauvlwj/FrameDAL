using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Attributes;

namespace FrameTest
{
    [Table("account")]
    public class Account
    {
        [Id(GeneratorType.Sequence, SeqName = "seq_abnormal_class_no")]
        [Column("id")]
        public string Id { get; set; }

        [Column("user_id")]
        public string UserId { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("password")]
        public string Password { get; set; }

        [Column("balance")]
        public int? Balance { get; set; }
    }
}
