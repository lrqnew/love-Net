using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZhiAiWang.UI.Z_ai.admin
{
    /// <summary>
    /// ActivitHandler 的摘要说明
    /// </summary>
    public class ActivitHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            int id = Convert.ToInt32(context.Request["id"]);
            string sql = string.Format("delete from Registration where activitiesID={0};delete ActivitiesInfo where activitiesID={1}", id,id);

            if (SQLHelper.ExecuteSql(sql) > 0)
            {
                context.Response.Write(0);
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