using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;
namespace ResumeFactory.Service.Details
{
    public class CertificateService : BaseService<Certificate>, IFinishStatusAccessable
    {
        private List<Certificate> certificateList;
        private List<CertificateDict> certificateDictList;
        /// <summary>
        /// 获取证书模块完成情况
        /// </summary>
        /// <param name="resume"></param>
        /// <returns>返回0，未添加证书，返回2，至少添加一项</returns>
        public int GetFinishStatus(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from certificate where resume_id =?";
                object result = session.CreateQuery(sql, resume.Id).ExecuteScalar();
                return (result == null) ? 0 : 2;
            }
        }
        /// <summary>
        /// 根据简历ID检索证书列表
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public List<Certificate> GetCertificateListByResume(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from certificate where resume_id=? order by certificate_get_date DESC";
                certificateList = session.CreateQuery(sql,resume.Id).ExecuteGetList<Certificate>();
                if (certificateList == null)
                {
                    certificateList = new List<Certificate>();
                    for (int i = 0; i < certificateList.Count;i++)
                    {
                        certificateList[i].ResumeId = resume.Id;
                    }
                }
                return certificateList;        
            }
        }
        /// <summary>
        /// 获取证书字典表
        /// </summary>
        /// <returns></returns>
        public List<CertificateDict> GetCertificateDict()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from certificate_dict";
                certificateDictList = session.CreateQuery(sql).ExecuteGetList<CertificateDict>();
                return certificateDictList;
            }
        }
    }
}
