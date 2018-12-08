using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ZhiAiWang.BLL;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// SelectPhoneHandler 的摘要说明
    /// </summary>
    public class SelectPhoneHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string phone = context.Request["name"];
            if (UserInfoManager.SelectUserInfoByPhone(phone))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}