using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using System.Web.SessionState;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// IndexHandler 的摘要说明
    /// </summary>
    public class IndexHandler : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";


          
            string gender = context.Request["gender"];
            string birthday = context.Request["birthday"];
            string country = context.Request["country"];
            string province = context.Request["province"];
            string city = context.Request["city"];
            string hunyin = context.Request["hun"];

            context.Session["data"] = gender + "|" + birthday + "|" + country + "|" + province + "|" + city + "|" + hunyin;
            context.Response.Redirect("regested.aspx");
            //context.Response.Write(hunyin);


        }
        /// <summary>
        /// 快熟注册
        /// </summary>
        void FastReg( HttpContext context) {
            //string gender = context.Request["gender"];
            //string birthday = context.Request["birthday"];
            //string country = context.Request["country"];
            //string province = context.Request["province"];
            //string city = context.Request["city"];
            //string hunyin = context.Request["hunyin"];

            //context.Response.Write(country + province + city);
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