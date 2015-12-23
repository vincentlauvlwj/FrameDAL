using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;

namespace ResumeFactory.Service.Details
{
    public class SelfEvaluationService : BaseService<SelfEvaluation>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            return 0;
        }
    }
}
