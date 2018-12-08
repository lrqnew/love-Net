using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using System.Data;
using ZhiAiWang.BLL;
using ZhiAiWang.Model;
using System.Web.SessionState;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// commentsHandler 的摘要说明
    /// </summary>
    public class commentsHandler : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string mesg = context.Request["mesg"];
            Answer answer = new Answer(Convert.ToInt32(context.Session["cofId"]), mesg, Convert.ToInt32(context.Session["id"]));
            if (context.Session["id"] == null)
            {
                context.Response.Write(2);
            }
            else
            {
                if (CircleOfFriendsManager.Comments(answer) == 1)
                {

                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }
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