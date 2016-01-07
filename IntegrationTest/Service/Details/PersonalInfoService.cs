using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 个人信息Service
    /// </summary>
    public class PersonalInfoService : BaseService<PersonInfo>, IFinishStatusAccessable
    {
        /// <summary>
        /// 获得所有证件类型
        /// </summary>
        /// <returns>证件类型列表</returns>
        public List<IdentityTypeDict> GetIdentityTypes()
        {
            return new BaseService<IdentityTypeDict>().GetAll();
        }

        /// <summary>
        /// 获得当前编辑的个人信息
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>个人信息，若该简历还没有个人信息，则返回null</returns>
        public PersonInfo GetPersonInfo(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = @"select id,resume_id,person_name,person_gender,person_birthday,person_workdate,person_born_area,person_living_area,person_tel,person_email,person_qq,person_marriage,person_identity_type,person_identity_code,person_abroad,person_party from person_info where resume_id = ?";
                return session.CreateSqlQuery(sql, resume.Id).ExecuteGetEntity<PersonInfo>();
            }
        }

        /// <summary>
        /// 获得指定简历的个人信息的完成状态
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>完成状态，0未填，1部分已填，2全部已填</returns>
        public int GetFinishStatus(Resume resume)
        {
            PersonInfo info = GetPersonInfo(resume);
            if (info == null) return 0;

            if (
                string.IsNullOrWhiteSpace(info.PersonName)
                || info.PersonBirthday == null
                || info.PersonWorkdate == null
                || string.IsNullOrWhiteSpace(info.PersonBornArea)
                || string.IsNullOrWhiteSpace(info.PersonLivingArea)
                || string.IsNullOrWhiteSpace(info.PersonTel)
                || string.IsNullOrWhiteSpace(info.PersonEmail)
                || string.IsNullOrWhiteSpace(info.PersonQq)
                || string.IsNullOrWhiteSpace(info.PersonMarriage)
                || string.IsNullOrWhiteSpace(info.PersonIdentityType)
                || string.IsNullOrWhiteSpace(info.PersonIdentityCode)
                || string.IsNullOrWhiteSpace(info.PersonParty)
                )
                return 1;

            return 2;
        }
    }
}
