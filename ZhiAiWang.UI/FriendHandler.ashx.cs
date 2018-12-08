using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
//
using ZhiAiWang.BLL;
using ZhiAiWang.Model;
namespace ZhiAiWang.UI
{
    /// <summary>
    /// FriendHandler 的摘要说明
    /// </summary>
    public class FriendHandler : IHttpHandler,IReadOnlySessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string mesg=  context.Request["mesg"];
            if (context.Session["uid"] == null)
            {
                context.Response.Write(2);
            }
            else
            {
                CircleOfFriends cir = new CircleOfFriends(Convert.ToInt32(context.Session["id"]), mesg);

                if (CircleOfFriendsManager.SendMesg(cir) == 1)
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