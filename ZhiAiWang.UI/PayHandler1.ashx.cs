using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using ZhiAiWang.DAL;
using System.Data;
using System.Data.SqlClient;
using ZhiAiWang.BLL;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// PayHandler1 的摘要说明
    /// </summary>
    public class PayHandler1 : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string id=context.Session["id"].ToString();
            if (UserInfoManager.Updatemember(id))
            {
                context.Response.Write(0);
                context.Session["member"] = "True";
            }
            else
            {
                context.Response.Write(1);
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