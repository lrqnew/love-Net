using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// infoHandler 的摘要说明
    /// </summary>
    public class infoHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string huid = context.Request["huid"];
            string huhid = context.Request["huhid"];
            string heid = context.Request["heid"];
            string sql = string.Format("insert into Hello values('{0}','{1}',{2},0)", huid, huhid, heid);
            if (  SQLHelper.ExecuteSql(sql)==1)
            {
                context.Response.Write("1");
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