using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;

namespace ResumeFactory.Service.Details
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 实现此接口的Service须向外提供所在模块的完成状态信息，所有ResumeFactory.Service.Details命名空间下的Service均要实现此接口
    /// </summary>
    public interface IFinishStatusAccessable
    {
        /// <summary>
        /// 获得指定简历在Service所在模块的完成状态
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>完成状态，0未填，1部分已填，2全部已填</returns>
        int GetFinishStatus(Resume resume);
    }
}
