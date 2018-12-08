using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZhiAiWang.UI.admin
{
    /// <summary>
    /// Picturestar 的摘要说明
    /// </summary>
    public class Picturestar : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            int id = Convert.ToInt32(context.Request["id"]);
            string sql = string.Format("update PictureInfo set picstar='1' where pictureID={0}",id);
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