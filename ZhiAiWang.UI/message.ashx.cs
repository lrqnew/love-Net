using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Text;
using System.Net;
using System.IO;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// message 的摘要说明
    /// </summary>
    public class message : IHttpHandler
    {
        public static string PostUrl = ConfigurationManager.AppSettings["WebReference.Service.PostUrl"];
        public static Random rad = new Random();
        public static int pass = rad.Next(1000, 10000);
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";



            if (Message.message("17638136170", pass))
            {
                context.Response.Write(0);
            }
            else
            {
                context.Response.Write(1);
            }


            //if (this.textyzm.Text == pass.ToString())
            //{
            //    Response.Write("<script>alert('成功')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('失败')</script>");
            //}
            
        }
        
        //public static bool message(string tel, int pass)
        //{
            
        //}
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}