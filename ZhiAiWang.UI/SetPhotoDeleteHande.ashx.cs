using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZhiAiWang.UI
{
    /// <summary>
    /// SetPhotoDeleteHande 的摘要说明
    /// </summary>
    public class SetPhotoDeleteHande : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string uid = context.Request["id"];

            string sql = string.Format("delete PictureInfo where pictureID={0}", uid);
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