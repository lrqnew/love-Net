using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.SessionState;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// SetPhoto1 的摘要说明
    /// </summary>
    public class SetPhoto1 : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string uid = context.Session["id"].ToString();
            try
            {
                //context.Response.Write("Hello World");
                string IMG_BASE = context.Request["imgBase"];
                IMG_BASE = IMG_BASE.Substring(IMG_BASE.LastIndexOf("base64,") + 7);
                var IMG_FOMATE = context.Request["imgFormat"];
                int index = Int32.Parse(context.Request["lookIndex"]);
                var bytes = Convert.FromBase64String(IMG_BASE);
                String newFilename = DateTime.Now.ToString("yyyyMMddHHmmss");

                string pic = newFilename +index+ ".jpg"; 

                string sql = string.Format("insert into PictureInfo values({0},'个人','{1}',0)",uid, pic);
                if (SQLHelper.ExecuteSql(sql) > 0)
                {
                    string filePath = @System.Web.HttpContext.Current.Server.MapPath("/images/gerenzhongxin/" + newFilename + index + "." + IMG_FOMATE);
                    File.WriteAllBytes(filePath, Convert.FromBase64String(IMG_BASE));
                    context.Response.Write(index);
                }

               
            }
            catch
            {
                context.Response.Write("no");
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