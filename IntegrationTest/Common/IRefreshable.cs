using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ResumeFactory.Common
{
    /// <summary>
    /// Author: Vincent Lau
    /// Date:   2015-11-22
    /// Desc:   打开子窗口时，被打开的子窗口如要接收来自父窗口的参数，可实现此接口
    ///         在某些需要及时刷新页面数据的窗口中，为了避免在其他窗口中修改了数据，再返回此窗口时数据无法更新的情况，也可实现此接口
    /// </summary>
    public interface IRefreshable
    {
        /// <summary>
        /// Author: Vincent Lau
        /// Date:   2015-11-22
        /// Desc:   实现了IRefreshable接口的子窗口，在被打开或者从其他子窗口切换回来的时候，此方法会被调用
        ///         请注意此方法与窗口的Load事件在调用时机上的区别
        ///         第一次进入窗口时，系统先调用Load事件，再调用OnBringToFront方法
        ///         以后每次从其他窗口切换回来的时候，Load事件不再被调用，只有OnBringToFront方法被调用，因此可在此方法内做一些数据刷新的操作
        /// </summary>
        /// <param name="data">从父窗口传来的数据</param>
        void OnBringToFront(object data);
    }
}
