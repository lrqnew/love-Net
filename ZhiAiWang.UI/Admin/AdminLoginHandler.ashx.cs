using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using System.Data;
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// AdminLoginHandler 的摘要说明
    /// </summary>
    public class AdminLoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string uid=context.Request["uid"];
            string pwd=context.Request["pwd"];
            if (AdminManager.AdminLogin(uid, pwd).Rows.Count >= 1)
            {
                context.Application["Sum"] =Convert.ToInt32(context.Application["Sum"]) + 1;
                context.Response.Redirect("index.html");
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