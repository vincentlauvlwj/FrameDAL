using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("project_experience")]
    public class ProjectExperience
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("project_exp_name")]
        public string ProjectExpName { get; set; }

        [Column("project_exp_start_date")]
        public DateTime? ProjectExpStartDate { get; set; }

        [Column("project_exp_end_date")]
        public DateTime? ProjectExpEndDate { get; set; }
        public string ProjectDate
        {
            get
            {
                return ProjectExpStartDate.Value.ToString("yyyy年MM月") + "—" + ProjectExpEndDate.Value.ToString("yyyy年MM月");
            }
        }

        [Column("project_name")]
        public string ProjectName { get; set; }

        [Column("project_duty")]
        public string ProjectDuty { get; set; }

        [Column("project_desc")]
        public string ProjectDesc { get; set; }

        [Column("project_is_it")]
        public int ProjectIsIt { get; set; }

        [Column("project_software_env")]
        public string ProjectSoftwareEnv { get; set; }

        [Column("project_hardware_env")]
        public string ProjectHardwareEnv { get; set; }

        [Column("project_develop_env")]
        public string ProjectDevelopEnv { get; set; }

        [Column("project_order")]
        public int ProjectOrder { get; set; }
        
    }
}