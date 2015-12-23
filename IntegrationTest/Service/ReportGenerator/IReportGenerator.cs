using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FastReport;

namespace ResumeFactory.Service.ReportGenerator
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 报表生成器接口。
    /// 添加一个简历模版的步骤如下：
    /// 1. 使用FastReport Designer设计报表模版，得到.frx报表文件
    /// 2. 写一个Service类，实现IReportGenerator接口，在PrepareReport方法中进行加载数据源或者其他的操作，返回一个Report对象。
    /// 3. 在resume_template表中增加一条记录，给定该模版的名字和ReportGenerator的命名空间限定类名
    /// 至此，所有步骤完成
    /// </summary>
    public interface IReportGenerator
    {
        /// <summary>
        /// 生成指定简历的FastReport报表对象
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>报表对象</returns>
        Report PrepareReport(Resume resume);
    }
}
